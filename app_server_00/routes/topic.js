const express=require('express');
const mysql=require("mysql");
//引入连接池
const pool=require('../pool.js');
//创建空路由器
var router=express.Router();
//创建路由

router.get("/",(req,res)=>{
    var list={};
    //背景图片
   pool.query("select bid,img_url from qw_topicbg",(err,result)=>{
       if(err) throw err;
       list.bg_img=result;
      //活动图片
       pool.query("select tid,img_oneUrl,img_twoUrl,img_threeUrl from qw_topic",(err,result)=>{
        if(err) throw err;
        list.topic_img=result;
        res.send({code:1,data:list});
        })
   });
  
})

module.exports=router;
