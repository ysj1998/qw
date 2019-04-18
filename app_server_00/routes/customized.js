const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
router.get("/",(req,res)=>{
    var output={};
    var progress=0; //sql执行进度
    var sql="SELECT tid,title,item FROM qw_lable WHERE title='types'";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        output.types=result;
        progress+=1;
        if(progress==3)
            res.send(output);
    });
    var sql="SELECT tid,title,item FROM qw_lable WHERE title='space'";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        output.space=result;
        progress+=1;
        if(progress==3)
            res.send(output);
    });
    var sql="SELECT tid,title,item FROM qw_lable WHERE title='style'";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        output.style=result;
        progress+=1;
        if(progress==3)
            res.send(output);
    });
})

router.get('/products',(req,res)=>{
    var pno=parseInt(req.query.pno);
    var order=req.query.order;
    var types=req.query.types;
    var space=req.query.space;
    var style=req.query.style;
    var output={};
    if (!pno) pno=0; 
    if(!order) order=0;
    if(!types) types='全部';
    if(!space) space='全部';
    if(!style) style='全部';
    var sql='SELECT p.pid,p.title,p.types,p.space,p.style,c.pic,p.intro FROM  qw_products p,qw_products_pic c WHERE c.productId=p.pid AND c.classify="index_img"';
    if(types!='全部'){
        sql+=` AND p.types="${types}"`;
    }
    if(space!='全部'){
        sql+=` AND p.space="${space}"`;
    }
    if(style!='全部'){
        sql+=` AND p.style="${style}"`;
    }
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
    });
})
module.exports=router;