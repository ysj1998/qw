const express=require('express');
const pool=require('../pool.js');

var router=express.Router();
router.get('/',(req,res)=>{
	var progress=0;
	var output={};
	var sql='SELECT title FROM qw_nav';
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		output.nav=result;
		progress+=1;
		if(progress==2)
			res.send(output);
	});
	var sql='SELECT title,pic FROM qw_nav_design';
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		output.design=result;
		progress+=1;
		if(progress==2)
			res.send(output);
	});
});
module.exports=router;