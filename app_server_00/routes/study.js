const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get('/list',(req,res)=>{
    var sql = "SELECT lid,lname,phone,demand,sppg FROM qw_study_list";
    pool.query(sql,(err,result)=>{
        if (err) throw err;
        res.send({code:1,data:result});
    });
});





module.exports=router;