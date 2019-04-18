//引入模块
const express=require("express");
const session = require("express-session");
const mysql=require('mysql');
const cors=require("cors");
//引入路由器
const header=require('./routes/header.js');
const index=require('./routes/index.js');
const footer=require('./routes/footer.js');
const casedetails=require('./routes/casedetails.js')
const customized=require('./routes/customized.js');
const study = require('./routes/study.js');
const gallary = require('./routes/gallary.js');
const Pro = require('./routes/Pro.js');
const baidu = require('./routes/baidu.js');
const topic=require("./routes/topic.js");
const Renovation=require("./routes/Renovation.js");
const gonglue=require("./routes/gonglue.js");
const search=require("./routes/search.js");
//引入body-parser中间件
const bodyParser=require('body-parser');

//创建服务器
var app=express();
app.all('*', (req, res, next) => {
	  res.header("Access-Control-Allow-Origin", req.headers.origin || '*');
	  res.header("Access-Control-Allow-Headers", "Content-Type, Authorization, X-Requested-With");
	  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
	  res.header("Access-Control-Allow-Credentials", true); // 可以带cookies
	  if(req.method == 'OPTIONS') {
	      res.sendStatus(200);
	  } else {
	      next();
	  }
	});
app.listen(3500);

//托管静态资源
app.use(express.static('public'));

//使用body-parser中间件来将post请求的数据解析为对象
app.use(bodyParser.urlencoded({
	extended:false   //不使用扩展的模块
}));

app.use(session({
	secret:'128随机字符串',
	cookie:{maxAge:60*1000*30},//过期时间ms
	resave:false,
	saveUninitialized:true
  }));//将服务器的session，放在req.session中
  
//路由器挂载

app.use('/header',header);
app.use('/index',index);
app.use('/footer',footer);
app.use('/customized',customized);
app.use('/casedetails',casedetails);
app.use('/study',study);
app.use('/gallary',gallary);
app.use('/Pro/',Pro);
app.use('/baidu',baidu);
app.use("/topic",topic);
app.use("/Renovation",Renovation);
app.use("/gonglue",gonglue);
app.use("/search",search);

