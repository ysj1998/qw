const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get('/novation',(req,res)=>{
    var pno = req.query.pno;
    var pageSize = req.query.pageSize;
    if(!pno){pno=1};
    if(!pageSize){pageSize=8};
    var offset = (pno-1)*pageSize;
    pageSize = parseInt(pageSize);
    var sql = "SELECT id,gid,title,time,about,pic FROM qw_gonglue LIMIT ?,?";
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if (err) throw err;
        res.send({code:1,data:result});
    });
});


module.exports=router;