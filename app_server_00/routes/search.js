const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
router.get('/products',(req,res)=>{
    var kwords=req.query.kwords;
    var pno=parseInt(req.query.pno);
    var order=req.query.order;
    if (!pno) pno=0; 
    if(!order) order=0;
    var output={};
    var sql='SELECT p.pid,p.title,p.types,p.space,p.style,c.pic,p.intro FROM  qw_products p,qw_products_pic c WHERE c.productId=p.pid AND c.classify="index_img" AND ( ';
    sql+=' p.types LIKE "%'+kwords+'%"  OR ';
    sql+=' p.space LIKE "%'+kwords+'%"  OR ';
    sql+=' p.style LIKE "%'+kwords+'%" )';
    if(order==0){
        sql+=' ORDER BY p.view DESC';
    }else{
        sql+=' ORDER BY p.pid DESC';
    }
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            var count=result.length;
            var pageCount=Math.ceil(count/6);
            var products=result.slice(pno*6,pno*6+6);
            var content={pno,count,pageCount,products};
        }else{
            var pageCount=0;
            var products=[];
            var content={pno,pageCount,products};
        }
        output.content=content;
        res.send(output);
    })
})

router.get('/kwords',(req,res)=>{
    var k=req.query.kwords;
    if(!k){
        res.send({code:-1,msg:'请输入搜索内容'});
        return;
    }
    var sql="SELECT title,item FROM qw_lable WHERE item LIKE '%";
    sql+=k+"%' AND item!='全部'";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

module.exports=router;