const express=require('express');
const pool=require('../pool.js');
const router=express.Router();

router.get("/product",(req,res)=>{
    var pno=req.query.pno;
    var pageSize=req.query.pageSize;
    if(!pno){
      pno=1
    }
    if(!pageSize){pageSize=16}
   
    var sql="SELECT pid,pic from qw_products_picc LIMIT ?,?";
    var offset =(pno-1)*pageSize;
    pageSize=parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
      if(err) throw err;
      res.send({code:1,data:result});
    })
 });

 router.get("/space",(req,res)=>{
   var pno=req.query.pno;
   var pageSize=req.query.pageSize;
   if(!pno){
     pno=1
   }
   if(!pageSize){pageSize=16}
   var sql="SELECT p.pic from qw_space s,qw_products_picc p WHERE s.spid=p.pid group by s.spid LIMIT ?,?";
   var offset =(pno-1)*pageSize;
   pageSize=parseInt(pageSize);
   pool.query(sql,[offset,pageSize],(err,result)=>{
     if(err) throw err;
     res.send({code:1,data:result});
   })
 });
 router.get("/s2",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){
    pno=1
  }
  if(!pageSize){pageSize=16}
  var sql="SELECT p.pic from qw_space s,qw_products_picc p WHERE s.spid=p.pid and stitle='a' group by s.spid LIMIT ?,?";
  var offset =(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
});
router.get("/functions",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){
    pno=1
  }
  if(!pageSize){pageSize=16}
  var sql="SELECT p.pic from qw_functions f,qw_products_picc p WHERE f.fpid=p.pid group by fpid LIMIT ?,?";
  var offset =(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  }
)
});
router.get("/f2",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){
    pno=1
  }
  if(!pageSize){pageSize=16}
  var sql="SELECT p.pic from qw_functions f,qw_products_picc p WHERE f.fpid=p.pid and ftitle='b' group by fpid LIMIT ?,?";
  var offset =(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  })
});
router.get("/style",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){
    pno=1
  }
  if(!pageSize){pageSize=16}
  var sql="SELECT p.pic from qw_style t,qw_products_picc p WHERE t.tpid=p.pid group by tpid LIMIT ?,?";
  var offset =(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  }
)
});
router.get("/color",(req,res)=>{
  var pno=req.query.pno;
  var pageSize=req.query.pageSize;
  if(!pno){
    pno=1
  }
  if(!pageSize){pageSize=16}
  var sql="SELECT p.pic from qw_color c,qw_products_picc p WHERE c.cpid=p.pid group by cpid LIMIT ?,?";
  var offset =(pno-1)*pageSize;
  pageSize=parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err) throw err;
    res.send({code:1,data:result});
  }
)
});
module.exports=router;