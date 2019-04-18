const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
router.get("/about",(req,res)=>{
    var gid=req.query.gid;
    var sql="SELECT title,time,about,pic FROM qw_gonglue WHERE gid=?";
    pool.query(sql,[gid],(err,result)=>{
        if(err)throw err;
        res.send({code:1,data:result});
    })
})
module.exports=router;