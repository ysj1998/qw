const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
router.get("/head",(req,res)=>{
    var productId=req.query.productId;
    var sql="SELECT pic FROM qw_products_pic WHERE productId=? AND classify='about_img'";
    pool.query(sql,[productId],(err,result)=>{
        if(err)throw err;
        res.send({code:1,data:result});
    });
});
router.get("/body",(req,res)=>{
    var productId=req.query.productId;
    var sql="SELECT pic FROM qw_products_pic WHERE productId=? AND classify='banner_img'";
    pool.query(sql,[productId],(err,result)=>{
        if(err)throw err;
        res.send({code:1,data:result});
    });
});
router.get("/foot",(req,res)=>{
    var pid=req.query.pid;
    var sql="SELECT title,intro,owner,orDemand,idea,functions,dTime,love FROM qw_products WHERE pid=?";
    pool.query(sql,[pid],(err,result)=>{
        if(err)throw err;
        res.send({code:1,data:result});
    })
})
module.exports=router;