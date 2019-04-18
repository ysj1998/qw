const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
router.get("/",(req,res)=>{
    //查询首页轮播图信息
    var output={};
    var progress=0; //sql执行进度
    var sql="SELECT pic FROM qw_index_carousel";
    pool.query(sql,(err,result)=>{
        if(err) console.log(err);
        output.casels=result;
        progress+=1;
        if(progress==4)
            res.send(output);
    });
    //查询1楼信息
    var sql='SELECT title,subTitle,pic,url FROM qw_index_life';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        output.life=result;
        progress+=1;
        if(progress==4)
            res.send(output);
    });
    //查询2楼信息
    var sql='SELECT ltitle,rtitle,lpic,rpic FROM qw_index_design';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        output.design=result;
        progress+=1;
        if(progress==4)
            res.send(output);
    });
    //查询3楼信息
    var sql='SELECT title,subTitle,pic FROM qw_index_activity';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        output.act=result;
        progress+=1;
        if(progress==4)
            res.send(output);
    })
})
module.exports=router;