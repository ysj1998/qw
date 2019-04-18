const express=require('express');
const pool=require('../pool.js');
const router=express.Router();
router.get('/',(req,res)=>{
    var sql='SELECT mid,pic,ltitle,rtitle,lng,lat FROM qw_baidu_ditu';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
module.exports=router;