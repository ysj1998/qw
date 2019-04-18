const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
router.get('/',(req,res)=>{
    var sql='SELECT ltitle,ctitle,rtitle FROM qw_footer';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

module.exports=router;