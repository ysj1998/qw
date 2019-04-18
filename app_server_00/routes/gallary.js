const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
router.get("/img",(req,res)=>{
    var pid=req.query.pid;
    var sql="SELECT img_url,galike,title FROM qw_product_gallery WHERE pid=?";
    pool.query(sql,[pid],(err,result)=>{
        if(err)throw err;
        res.send({code:1,data:result});
    })
});
module.exports=router;