SET NAMES UTF8;
DROP DATABASE IF EXISTS qw;
CREATE DATABASE qw CHARSET=UTF8;
USE qw;


#导航栏信息
CREATE TABLE qw_nav(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(8)              #导航栏标题
);
insert into qw_nav values(null,'设计方案');
insert into qw_nav values(null,'品牌实力');
insert into qw_nav values(null,'VR体验');
insert into qw_nav values(null,'专题活动');

#导航栏设计方案信息
CREATE TABLE qw_nav_design(
  did INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(8),             #标题
  pic VARCHAR(256)              #图片路径
);
insert into qw_nav_design values(null,'定制案例','http://127.0.0.1:3500/img/nav/cdc3c55bf3e182856cb3acb35cb40c5e.png');
insert into qw_nav_design values(null,'装修攻略','http://127.0.0.1:3500/img/nav/f1ab7269c89da1996256f49daf62704f.png');
insert into qw_nav_design values(null,'效果图库','http://127.0.0.1:3500/img/nav/c16013d8ce0f5093458a3fd6530d98bb.png');
insert into qw_nav_design values(null,'附近门店','http://127.0.0.1:3500/img/nav/30ef71ba858f0a5aefadfdf8e546cda2.png');

#首页轮播图信息
CREATE TABLE qw_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(256)              #图片路径
);
insert into qw_index_carousel values(null,'http://127.0.0.1:3500/img/rotation/index.crousel-01.png');
insert into qw_index_carousel values(null,'http://127.0.0.1:3500/img/rotation/index.crousel-02.png');
insert into qw_index_carousel values(null,'http://127.0.0.1:3500/img/rotation/index.crousel-03.png');
insert into qw_index_carousel values(null,'http://127.0.0.1:3500/img/rotation/index.crousel-04.png');
insert into qw_index_carousel values(null,'http://127.0.0.1:3500/img/rotation/index.crousel-05.png');
insert into qw_index_carousel values(null,'http://127.0.0.1:3500/img/rotation/index.crousel-06.png');

#首页1楼懂空间会生活
CREATE TABLE qw_index_life(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),            #标题
  subTitle VARCHAR(128),        #副标题
  pic VARCHAR(128),              #图片路径
  url VARCHAR(128) 
);
insert into qw_index_life values(null,'卧室','品味时尚生活美学','http://127.0.0.1:3500/img/textimg/index.1-01.png','Bedroom');
insert into qw_index_life values(null,'书房','高颜值多功能空间','http://127.0.0.1:3500/img/textimg/index.1-02.png','Study');
insert into qw_index_life values(null,'阳台','精彩收纳告别凌乱','http://127.0.0.1:3500/img/textimg/index.1-03.png','Bedroom');
insert into qw_index_life values(null,'客餐厅','凸显极致高雅格调','http://127.0.0.1:3500/img/textimg/index.1-04.png','Study');
insert into qw_index_life values(null,'厨房','幸福尽在一日三餐','http://127.0.0.1:3500/img/textimg/index.1-05.png','Bedroom');
insert into qw_index_life values(null,'青少年房','幸福无关空间大小','http://127.0.0.1:3500/img/textimg/index.1-06.png','Study');


#首页2楼定制家善设计
CREATE TABLE qw_index_design(
  did INT PRIMARY KEY AUTO_INCREMENT,
  ltitle VARCHAR(64),            #标题
  rtitle VARCHAR(64),            #标题
  lpic VARCHAR(128),              #图片路径
  rpic VARCHAR(128)              #图片路径
);
insert into qw_index_design values(null,'10000套家装美图任性看','看攻略·3分钟搞懂装修','http://127.0.0.1:3500/img/textrotation/index.lb-01.png','http://127.0.0.1:3500/img/textrotation/index.lb-02.png');
insert into qw_index_design values(null,'看攻略·3分钟搞懂装修','30万家庭定制方案亮点参考','http://127.0.0.1:3500/img/textrotation/index.lb-02.png','http://127.0.0.1:3500/img/textrotation/index.lb-03.png');
insert into qw_index_design values(null,'30万家庭定制方案亮点参考','10000套家装美图任性看','http://127.0.0.1:3500/img/textrotation/index.lb-03.png','http://127.0.0.1:3500/img/textrotation/index.lb-01.png');

#首页3楼活动专区
CREATE TABLE qw_index_activity(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),            #标题
  subTitle VARCHAR(128),        #副标题
  pic VARCHAR(128)              #图片路径
);
insert into qw_index_activity values(null,'搞定全屋仅需19999元','活动时间：3月10日-4月20日','http://127.0.0.1:3500/img/text3img/index.hd-01.png');
insert into qw_index_activity values(null,'免费获取精准报价','激活空间,不浪费1m²','http://127.0.0.1:3500/img/text3img/index.hd-02.png');
insert into qw_index_activity values(null,'五金配件免费送','科学设计,随心定制','http://127.0.0.1:3500/img/text3img/index.hd-03.png');
insert into qw_index_activity values(null,'3房2厅全屋定制','限区限额,欲报从速','http://127.0.0.1:3500/img/text3img/index.hd-04.png');


#底部信息
CREATE TABLE qw_footer(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  ltitle VARCHAR(40),             #标题
  ctitle VARCHAR(40),             #标题
  rtitle VARCHAR(40)             #标题
);
insert into qw_footer values(null,'线下门店','招商加盟','客服热线：400-880-2280');
insert into qw_footer values(null,'关于我们','专题活动','工作日 8:00-20:00');
insert into qw_footer values(null,'友情连接','投诉建议','节假日 9:00-17:30');


#标签分类表
CREATE TABLE qw_lable(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(16),             #标签标题
  item VARCHAR(8)                #标签项
);
INSERT INTO qw_lable VALUES
  (NULL,'types','全部'),
  (NULL,'types','小户型'),
  (NULL,'types','两房两厅'),
  (NULL,'types','三房两厅'),
  (NULL,'types','四房两厅'),
  (NULL,'space','全部'),
  (NULL,'space','公寓'),
  (NULL,'space','卧室'),
  (NULL,'space','客厅'),
  (NULL,'space','全屋'),
  (NULL,'space','青少年房'),
  (NULL,'space','书房'),
  (NULL,'space','餐厅'),
  (NULL,'space','入户'),
  (NULL,'space','衣帽间'),
  (NULL,'style','全部'),
  (NULL,'style','现代简约'),
  (NULL,'style','自然田园'),
  (NULL,'style','中式风格'),
  (NULL,'style','北欧风格'),
  (NULL,'style','浪漫简欧'),
  (NULL,'style','日式风格'),
  (NULL,'style','古典风格');

  #商品图片表
CREATE TABLE qw_products_pic(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  productId INT,                 #商品ID
  classify VARCHAR(16),          #图片分类
  pic VARCHAR(256)               #图片路径
);
INSERT INTO qw_products_pic VALUES
(NULL,1,'index_img','/img/products/1.jpg'),
(NULL,2,'index_img','/img/products/2.jpg'),
(NULL,3,'index_img','/img/products/3.jpg'),
(NULL,4,'index_img','/img/products/4.jpg'),
(NULL,5,'index_img','/img/products/5.jpg'),
(NULL,6,'index_img','/img/products/6.jpg'),
(NULL,7,'index_img','/img/products/7.jpg'),
(NULL,8,'index_img','/img/products/8.jpg'),
(NULL,9,'index_img','/img/products/9.jpg'),
(NULL,10,'index_img','/img/products/10.jpg'),
(NULL,11,'index_img','/img/products/11.jpg'),
(NULL,12,'index_img','/img/products/12.jpg'),
(NULL,13,'index_img','/img/products/1.jpg'),
(NULL,14,'index_img','/img/products/2.jpg'),
(NULL,15,'index_img','/img/products/3.jpg'),
(NULL,16,'index_img','/img/products/4.jpg'),
(NULL,17,'index_img','/img/products/5.jpg'),
(NULL,18,'index_img','/img/products/6.jpg'),
(NULL,19,'index_img','/img/products/7.jpg'),
(NULL,20,'index_img','/img/products/8.jpg'),
(NULL,21,'index_img','/img/products/9.jpg'),
(NULL,22,'index_img','/img/products/10.jpg'),
(NULL,23,'index_img','/img/products/11.jpg'),
(NULL,24,'index_img','/img/products/12.jpg'),
(NULL,25,'index_img','/img/products/1.jpg'),
(NULL,26,'index_img','/img/products/2.jpg'),
(NULL,27,'index_img','/img/products/3.jpg'),
(NULL,28,'index_img','/img/products/4.jpg'),
(NULL,29,'index_img','/img/products/5.jpg'),
(NULL,30,'index_img','/img/products/6.jpg'),
(NULL,31,'index_img','/img/products/7.jpg'),
(NULL,32,'index_img','/img/products/8.jpg'),
(NULL,33,'index_img','/img/products/9.jpg'),
(NULL,34,'index_img','/img/products/10.jpg'),
(NULL,35,'index_img','/img/products/11.jpg'),
(NULL,36,'index_img','/img/products/12.jpg'),
(NULL,37,'index_img','/img/products/1.jpg'),
(NULL,38,'index_img','/img/products/2.jpg'),
(NULL,39,'index_img','/img/products/3.jpg'),
(NULL,40,'index_img','/img/products/4.jpg'),
(NULL,41,'index_img','/img/products/5.jpg'),
(NULL,42,'index_img','/img/products/6.jpg'),
(NULL,43,'index_img','/img/products/7.jpg'),
(NULL,44,'index_img','/img/products/8.jpg'),
(NULL,45,'index_img','/img/products/9.jpg'),
(NULL,46,'index_img','/img/products/10.jpg'),
(NULL,47,'index_img','/img/products/11.jpg'),
(NULL,48,'index_img','/img/products/12.jpg'),
(NULL,49,'index_img','/img/products/8.jpg'),
(NULL,50,'index_img','/img/products/9.jpg'),
(NULL,51,'index_img','/img/products/10.jpg'),
(NULL,52,'index_img','/img/products/11.jpg'),
(NULL,53,'index_img','/img/products/12.jpg'),
(NULL,54,'index_img','/img/products/1.jpg'),
(NULL,55,'index_img','/img/products/2.jpg'),
(NULL,56,'index_img','/img/products/3.jpg'),
(NULL,57,'index_img','/img/products/4.jpg'),
(NULL,58,'index_img','/img/products/5.jpg'),
(NULL,59,'index_img','/img/products/6.jpg'),
(NULL,60,'index_img','/img/products/7.jpg'),
(NULL,61,'index_img','/img/products/8.jpg'),
(NULL,62,'index_img','/img/products/9.jpg'),
(NULL,63,'index_img','/img/products/10.jpg'),
(NULL,64,'index_img','/img/products/11.jpg'),
(NULL,65,'index_img','/img/products/12.jpg');
INSERT INTO qw_products_pic VALUES
(NULL,1,'about_img','http://127.0.0.1:3500/img/products/case1/a1.jpg'),
(NULL,1,'about_img','http://127.0.0.1:3500/img/products/case1/a2.jpg'),
(NULL,1,'about_img','http://127.0.0.1:3500/img/products/case1/a3.jpg'),
(NULL,1,'banner_img','http://127.0.0.1:3500/img/products/case1/a4.jpg'),
(NULL,1,'banner_img','http://127.0.0.1:3500/img/products/case1/a5.jpg'),
(NULL,1,'banner_img','http://127.0.0.1:3500/img/products/case1/a6.jpg'),
(NULL,2,'about_img','http://127.0.0.1:3500/img/products/case2/a1.jpg'),
(NULL,2,'about_img','http://127.0.0.1:3500/img/products/case2/a2.jpg'),
(NULL,2,'about_img','http://127.0.0.1:3500/img/products/case2/a3.jpg'),
(NULL,2,'banner_img','http://127.0.0.1:3500/img/products/case2/a4.jpg'),
(NULL,2,'banner_img','http://127.0.0.1:3500/img/products/case2/a5.jpg'),
(NULL,2,'banner_img','http://127.0.0.1:3500/img/products/case2/a6.jpg'),
(NULL,3,'about_img','http://127.0.0.1:3500/img/products/case3/a1.jpg'),
(NULL,3,'about_img','http://127.0.0.1:3500/img/products/case3/a2.jpg'),
(NULL,3,'about_img','http://127.0.0.1:3500/img/products/case3/a3.jpg'),
(NULL,3,'banner_img','http://127.0.0.1:3500/img/products/case3/a4.jpg'),
(NULL,3,'banner_img','http://127.0.0.1:3500/img/products/case3/a5.jpg'),
(NULL,3,'banner_img','http://127.0.0.1:3500/img/products/case3/a6.jpg'),
(NULL,4,'about_img','http://127.0.0.1:3500/img/products/case4/a1.jpg'),
(NULL,4,'about_img','http://127.0.0.1:3500/img/products/case4/a2.jpg'),
(NULL,4,'about_img','http://127.0.0.1:3500/img/products/case4/a3.jpg'),
(NULL,4,'banner_img','http://127.0.0.1:3500/img/products/case4/a4.jpg'),
(NULL,4,'banner_img','http://127.0.0.1:3500/img/products/case4/a5.jpg'),
(NULL,4,'banner_img','http://127.0.0.1:3500/img/products/case4/a6.jpg'),
(NULL,5,'about_img','http://127.0.0.1:3500/img/products/case5/a1.jpg'),
(NULL,5,'about_img','http://127.0.0.1:3500/img/products/case5/a2.jpg'),
(NULL,5,'about_img','http://127.0.0.1:3500/img/products/case5/a3.jpg'),
(NULL,5,'banner_img','http://127.0.0.1:3500/img/products/case5/a4.jpg'),
(NULL,5,'banner_img','http://127.0.0.1:3500/img/products/case5/a5.jpg'),
(NULL,5,'banner_img','http://127.0.0.1:3500/img/products/case5/a6.jpg'),
(NULL,6,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,6,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,6,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,6,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,6,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,6,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg');
INSERT INTO qw_products_pic VALUES
(NULL,7,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,7,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,7,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,7,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,7,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,7,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,8,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,8,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,8,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,8,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,8,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,8,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,9,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,9,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,9,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,9,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,9,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,9,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,10,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,10,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,10,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,10,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,10,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,10,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,11,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,11,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,11,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,11,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,11,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,11,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,12,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,12,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,12,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,12,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,12,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,12,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,13,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,13,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,13,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,13,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,13,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,13,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,14,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,14,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,14,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,14,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,14,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,14,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,15,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,15,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,15,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,15,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,15,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,15,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,16,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,16,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,16,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,16,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,16,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,16,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,17,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,17,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,17,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,17,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,17,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,17,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,18,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,18,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,18,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,18,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,18,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,18,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,19,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,19,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,19,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,19,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,19,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,19,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,20,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,20,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,20,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,20,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,20,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,20,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,21,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,21,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,21,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,21,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,21,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,21,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,22,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,22,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,22,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,22,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,22,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,22,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,23,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,23,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,23,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,23,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,23,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,23,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,24,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,24,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,24,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,24,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,24,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,24,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,25,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,25,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,25,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,25,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,25,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,25,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,26,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,26,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,26,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,26,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,26,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,26,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,27,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,27,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,27,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,27,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,27,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,27,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,28,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,28,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,28,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,28,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,28,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,28,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,29,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,29,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,29,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,29,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,29,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,29,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,30,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,30,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,30,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,30,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,30,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,30,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,31,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,31,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,31,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,31,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,31,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,31,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,32,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,32,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,32,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,32,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,32,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,32,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,33,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,33,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,33,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,33,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,33,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,33,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,34,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,34,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,34,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,34,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,34,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,34,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,35,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,35,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,35,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,35,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,35,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,35,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,36,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,36,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,36,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,36,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,36,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,36,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,37,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,37,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,37,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,37,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,37,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,37,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,38,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,38,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,38,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,38,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,38,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,38,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,39,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,39,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,39,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,39,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,39,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,39,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,40,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,40,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,40,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,40,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,40,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,40,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,41,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,41,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,41,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,41,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,41,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,41,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,42,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,42,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,42,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,42,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,42,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,42,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,43,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,43,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,43,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,43,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,43,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,43,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,44,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,44,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,44,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,44,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,44,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,44,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,45,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,45,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,45,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,45,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,45,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,45,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,46,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,46,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,46,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,46,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,46,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,46,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,47,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,47,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,47,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,47,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,47,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,47,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,48,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,48,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,48,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,48,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,48,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,48,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,49,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,49,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,49,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,49,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,49,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,49,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,50,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,50,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,50,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,50,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,50,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,50,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,51,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,51,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,51,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,51,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,51,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,51,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,52,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,52,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,52,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,52,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,52,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,52,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,53,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,53,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,53,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,53,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,53,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,53,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,54,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,54,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,54,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,54,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,54,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,54,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,55,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,55,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,55,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,55,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,55,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,55,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,56,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,56,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,56,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,56,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,56,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,56,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,57,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,57,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,57,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,57,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,57,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,57,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,58,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,58,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,58,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,58,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,58,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,58,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,59,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,59,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,59,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,59,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,59,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,59,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,60,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,60,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,60,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,60,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,60,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,60,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,61,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,61,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,61,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,61,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,61,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,61,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,62,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,62,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,62,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,62,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,62,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,62,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,63,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,63,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,63,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,63,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,63,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,63,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,64,'about_img','http://127.0.0.1:3500/img/products/case6/a1.jpg'),
(NULL,64,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,64,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,64,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,64,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,64,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg'),
(NULL,65,'about_img','http://127.0.0.1:3500/img/products/case6/a2.jpg'),
(NULL,65,'about_img','http://127.0.0.1:3500/img/products/case6/a3.jpg'),
(NULL,65,'banner_img','http://127.0.0.1:3500/img/products/case6/a4.jpg'),
(NULL,65,'banner_img','http://127.0.0.1:3500/img/products/case6/a5.jpg'),
(NULL,65,'banner_img','http://127.0.0.1:3500/img/products/case6/a6.jpg');

#商品信息表
CREATE TABLE qw_products(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),             #标题
  intro VARCHAR(1024),           #介绍
  types VARCHAR(8),              #户型
  space VARCHAR(8),              #空间
  style VARCHAR(8),              #风格
  view INT,                      #观看人数
  owner VARCHAR(16),             #业主
  orDemand VARCHAR(1024),        #业主需求
  idea VARCHAR(1024),            #设计理念
  functions VARCHAR(8),          #功能
  color VARCHAR(8),              #花色
  dTime DATE,                    #设计时间
  collect INT,                   #收藏人数
  love INT,                      #喜爱人数
  comment INT                    #评论人数
);

INSERT INTO qw_products(pid,title,intro,types,space,style,view,owner,orDemand,idea,functions,dTime,love) VALUES
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '三房两厅', '卧室', '现代简约', 1260, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','单身公寓','全屋','现代简约',1250,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',1245,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','小户型','全屋','北欧风格',1243,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','小户型','餐厅','现代简约',1235,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','三房两厅','卧室','中式风格',1220,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '三房两厅', '卧室', '现代简约', 259, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','小户型','餐厅','古典风格',133,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',398,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','单身公寓','餐厅','北欧风格',89,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','单身公寓','餐厅','古典风格',155,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','小户型','卧室','中式风格',999,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '小户型', '卧室', '古典风格', 568, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','单身公寓','全屋','现代简约',386,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',65,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','单身公寓','入户','北欧风格',712,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','单身公寓','入户','现代简约',349,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','三房两厅','卧室','中式风格',125,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '三房两厅', '卧室', '现代简约', 781, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','单身公寓','入户','现代简约',219,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',15,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','单身公寓','入户','北欧风格',694,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','单身公寓','全屋','现代简约',256,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','四房两厅','卧室','中式风格',133,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '四房两厅', '卧室', '现代简约', 431, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','单身公寓','全屋','现代简约',458,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',486,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','四房两厅','全屋','北欧风格',491,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','四房两厅','全屋','现代简约',428,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','两房两厅','卧室','中式风格',512,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '两房两厅', '卧室', '现代简约', 648, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','单身公寓','全屋','现代简约',655,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',627,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','单身公寓','全屋','北欧风格',697,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','单身公寓','全屋','现代简约',674,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','三房两厅','公寓','中式风格',636,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '四房两厅', '公寓', '现代简约', 648, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','单身公寓','书房','现代简约',692,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',158,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','单身公寓','书房','北欧风格',139,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','单身公寓','书房','现代简约',108,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','一房一厅','公寓','中式风格',112,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '两房两厅', '公寓', '现代简约', 96, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','单身公寓','书房','现代简约',59,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',79,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','单身公寓','书房','北欧风格',206,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','四房两厅','书房','现代简约',183,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','四房两厅','公寓','中式风格',162,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','四房两厅','全屋','浪漫简欧',140,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','日式风格',894,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','四房两厅','青少年房','北欧风格',882,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','四房两厅','青少年房','浪漫简欧',738,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','一房一厅','公寓','中式风格',702,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '一房一厅', '衣帽间', '浪漫简欧', 633, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','三房两厅','青少年房','现代简约',904,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','客厅','浪漫简欧',801,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','三房两厅','青少年房','自然田园',825,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','三房两厅','青少年房','自然田园',755,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','一房一厅','衣帽间','中式风格',592,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9),
(null, '三居室10平米客房改造  这样装修3房会变6房哦', '客房通常是一个被忽略的混杂区域，将卧室、书房、储藏室、休闲室等诸多功能集中在一个小空间里。这里也是可能被进一步挖掘的多用空间。环绕墙面的装饰柜、书桌，一体结合的榻榻米衣柜，能够加强收纳、美化空间、增进功能。善于利用房间结构，客房就不会成为家中被忽略的杂物空间。', '一房一厅', '公寓', '自然田园',587, '刘女士', "客房空间基本没有什么用，一年到头基本空着。家里没有书房，书桌摆放在主卧很影响活动及休息。小孩也没有什么活动娱乐的空间。想将‘被遗弃’的空间利用起来，又想空间布局与整体居室相融，突出个性品味，该怎么装修好？@客户家的装修基本以实木为 主，营造出一种自然清新的氛围，为了以其居室相呼应，客房内的全部家具板材选用了胡桃木和白色吸塑门，两者结合给我们呈现出一种温暖，典雅，舒适的氛围，恰如冬日的一抹阳光。功能方面，将书桌设于转角，减少了空间的浪费同时实现了客房的阅读、办公功能，榻榻米设于飘窗与储物柜接连，实现了睡眠、娱乐等多项功能外，还加强了收纳，相当实用。", "装饰柜和书桌环绕墙面，使空间富 有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰品和书籍错落有致同，方便使用。吸塑门和吸塑抽的 凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@装饰柜和书桌环绕墙面，使空间富有层次感和立体感，主人的装饰 品和书籍错落有致同，方便使用。吸塑门和吸塑抽的凹凸感为这个衣柜增添一丝调皮，在储藏的同时也有视觉享受。@三居室10平米客房改造效果图--收纳展示区@在本案例中，装饰柜、书桌、储藏和休闲区紧密相连，不浪费一丝空间，完美地阐述了索菲亚多功能一 体化的定制的概念。原本单一功能的客房，瞬变精致实用的书房、卧室、收纳间及娱乐休闲居室。", '收纳展示区', '2018-02-05', 12),
(null,'一居室14平米单身公寓  震惊！这才叫生活','这套14.5平小户型装修案例是一位轻熟女的单身公寓哦，每一个细微处都布局与设计都相当完美，是一款很精致的单身公寓设计，合理的家具摆设，让业主摆脱了凌乱不堪，获得了井然有序的生活空间。整个居室的设计都给人一种明媚的青春活力感，特别适宜居住的休闲feel。','三房两厅','青少年房','自然田园',614,'刘先生',"房子是90平的，共三个房间，空间不会很大，主卧还带有一个凹角，希望设计师能给出一个比较理想的定制方案，很好地利用空间。目前父母和我们夫妻一起住，长辈的审美不同于年轻人，因此整个家的设计要兼顾到每个人不同的审美兴趣，整体舒适为主。@ 混搭风全屋定制最主要的是能够混而不乱。三居室的使用者处于不同年龄段，布置上要因人而异，主卧、次卧突出素雅、温馨，书房采用榻榻米、书柜、书桌一体设计，以后可轻松切换成青少年房。客厅利用色调上的和谐搭配，糅合了简欧和现代两种风格，意外地又充满时尚感。厨房、卫浴间以业主一家的使用需求为主，家具布置简约又实用。","在门口处放一个简欧鞋柜进行收纳，洁白的质感和掩门设计显得更加整洁优雅。@ 墙上DIY几个收纳架，挂放饰品、钥匙等，富有仪式感和生活气息。@ 以一幅色彩丰富、有艺术意境的水彩画铺满整面墙，整个入户空间瞬间生动丰富起来。@ 90平米三居室混搭风装修案例—入户@ 去掉一些形式感，将更多设计重点放在满足不同年龄段的人的需求上，巧妙将各种风格毫无违和感地糅合成一体，不同空间可以有不一样的体验，一家三代人一起生活，融洽而又幸福。",'休息区域','2018-03-05',15),
(null,'原木简约日式客厅装修  巧用空间演绎极致休闲','简约日式客厅装修在布局上讲究空间的流动与分隔，在单一空间中轻松分隔出几个功能区域，高效利用空间，同时将舒适休闲体验做到极致；家具选材注重自然质感，浅色调搭配简洁优雅，令空间充满闲适自得、自然舒畅的独特魅力。','二房两厅','衣帽间','浪漫简欧',531,'赵小姐',"我现在住的那个公寓面积只有14.5㎡左右，以我这种好买不好丢的性格，半年的时间这儿就给我堆积成山，各种衣服、饰品、工艺品、植被、家庭必需品……都无处可摆，凌乱不堪，身为一名职场女青年，这一面被人看到，我担心我会嫁不出去，因此寻求设计师给我规划一个好方案，让我脱离凌乱。@ 房屋进深较大，设计分区较多，洞口处设计嵌入式衣柜+书柜，储物收纳空间较大，统一掩门设计，干净利落。电脑台下储物柜充分利用死角部分，电脑台边柜加长，也做床头柜之用，床头柜与榻榻米均可大容量收纳物品。休闲榻与床体统一设计，即可收纳休闲，也做梳妆凳之用，多功能的家具可以弥补小空间的局限。","'小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 小空间最适用的床是榻榻米，它可睡、可坐、可休闲、可收纳，一物多用的性质让它成为了小户型空间的必备神器。另外榻榻米的可变性能，根据空间的凹凸而变形，让转角空间丝毫不浪费。榻榻米床头的靠背设计，除储物之外，还能倚靠在上面看看电视、看看书，功能强劲深得业主喜爱。@ 一居室14平米单身公寓效果图——休息区 @ 生活不需要太过于奢侈，简简单单也能享受到如度假般的舒适生活，这套简约的公寓设计，既满足了人的日常需求，也让人体会了一把如同度假般的惬意享受。",'入户空间','2018-04-05',12),
(null,'37平米单间变身多功能套间，北欧风一居室公寓改造太棒了！','一居室户型装修常会有这样的问题：收纳很困难、空间功用太单调，因此要合理布局出每个功能区域，将原本单一的空间划分成多功能套间，达到空间利用和功能满足的最大化。针对一居室公寓改造，本案设计师给出了一套舒适实用的设计方案，充分体现北欧风情的自然与简雅，37平米左右的一居室户型都适用哦！','三房两厅','青少年房','自然田园',493,'钱先生',"我们家的户型仅有16.8平米大，一厨、一卫、一空间一直以来都是这么挤过来的。由于孩子逐渐长大，希望他能独立，想分隔空间，保持私隐，但微户型一直是装修的困扰。大家具占空间，小家具又不知如何选购，因此希望可以咨询设计师做定制规划。@针对屋主需求和空间特点，利用空间的梁和柱，因地制宜，就势分割空间，巧妙将空间分割成入户和卧室空间，卧室区又利用柜体做隔断，分成大人的主卧区和小孩区，整个设计精细巧妙，强大收纳功能非常符合微户型需求。","利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 利用梁和柱在空间的特点，因地制宜，就势分割空间，巧妙分区。入户区有放鞋区、梳妆区、挂衣区、展示区，麻雀随小五官俱全。@ 一居室17平米全屋改造效果图——入户 @ 采用现代简约风格，枫木色与深色布纹的撞色搭配动感时尚，柜体做隔断使空间扩容不少，整个家看着很整洁，也不显得空间很窄小，随处都可以存放各类东西，一家三口的活动互不干扰，其乐融融。",'书房我是空间','2018-05-05',12),
(null,'一居室17平米全屋改造  功能完善三口之家很满足','这是一个针对三口之家设计的微户型案例，空间很小，只有16.8方，相当于一个普通的学生宿舍面积，需要满足一家三口除厨卫生功能外的所有基本功能需求，挑战性比较大。但设计师经过巧妙的一体化设计，将功能放大，使微户型瞬变窝心家，分隔有秩、功能完善，是不容错过小户型设计案例。','三房两厅','青少年房','自然田园',589,'孙小姐',"我家那个书房要做备用卧室的，所以除了要有学习办公的区域，也要有睡眠和收纳衣物的空间。家具布置有条理性，看起来不要太拥挤，可以充分利用空间，同时要注重空间的质感和储物性。@为了增加更多储物空间，并且书房要兼做卧室，除了加入榻榻米，还设计出两个衣柜，贴合户型将所有家具连接起来，充分利用空间，功能设置满足业主的使用需求。在暖白栓木的简洁和高雅中，融入一点阿尔萨斯蓝的沉静与神秘，以家具的撞色配搭，达到空间整体质感和趣味性的提升。","榻榻米、衣柜、书柜、书桌一体式连接+转角设计，布局上非常连贯、流畅，充分利用书房的三面墙体空间，整体性很强，造型时尚简约，符合现代年轻人的追求。@ 靠窗的榻榻米+衣柜组合是书房中较为常见的布局，实现榻榻米更加强大的功能——收纳、睡眠还有休闲。暖白色衣柜采用经典百叶门板，纤细的百叶线条为空间增添了优雅细腻的美感。@书桌嵌入书柜并转角延伸出一个衣柜，凸显雅致美观的同时，也增加了储物空间。开放设计为主的书柜令收纳更加一目了然，并通过不同大小的收纳隔层设计和蓝色柜身的加入，丰富整体的变化感和时尚感。@ 10平米现代简约书房设计效果图 @ 在时尚、清爽、高雅的书房中，透窗而入的阳光仿佛在不经意温柔了起来，每一平米的空间都在视觉和体验上给予人美的享受，令人心情分外愉悦、放松。",'入户空间','2018-06-05',10),
(null,'超强储物1房融合3房功能  这个新中式卧室设计要逆天！','一体布局高效利用空间，这个新中式卧室已不单单只是一个卧室，还将衣帽间、书房功能融入进来，满足睡眠、娱乐、休闲、收纳、储物、办公等需求，特别是收纳储物能力十分强大！按照业主需求，新中式卧室设计不仅突出了简雅的质感，亦充满着沉稳诗意韵味。','四房两厅','公寓','中式风格',426,'李先生'," 三房两厅的户型，包括小孩共3口人。平时我和老公要上班，在家休息的时候希望能轻轻松松的，多陪陪小孩，更多时候是待在客厅。小孩的玩具比较多，我自己也喜欢在网上淘一些实用的生活小物件或者装饰小摆件，因此收纳空间要足，配色不要太多，黑白的感觉挺喜欢的，简单温馨即可。@ 整体在布置家具时注重留出开放收纳、展示的空间，可以摆放陈女士的小物件或者小孩的玩具。特别客厅的装修，活动空间要大一些，小孩的玩具肯定也要有，方便陈女士一家休闲、玩乐。大部分柜体均通过索菲亚深布纹、浅布纹、暖白栓木几种板材花色搭配，打造出经典时尚的北欧格调，主卧则通过胡桃木色营造出更加轻松自然的氛围。 ","平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 平时家里要备一些拖鞋，家人出入门或客人来访也要换穿鞋子，入户花园设计一个L型储物柜来收纳，顿时整洁多了，且柜子空间充足，还能容纳一些不常用的物品。进门处右墙加设一个入户柜，用于放置较为贵重的鞋子、包包、挂放衣帽等，还有换鞋凳功能，大人小孩换鞋都更方便。@ 100平米三居室定制案例实拍图——入户 @ 家装并没有约定俗成的方案，即使户型面积相同，不同人的家也应有不一样的味道。110平米三居室全屋定制，最大亮点在于充分切合业主的爱好与需求，打造出专属业主一家的风格品位。",'入户','2018-07-05',9);
CREATE TABLE qw_study_list(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  lname VARCHAR(32),  #用户名称
  phone VARCHAR(32),   #电话
  demand VARCHAR(8),   #需求
  sppg VARCHAR(12)    #进度
);


INSERT INTO qw_study_list(lid,lname,phone,demand,sppg) VALUES
(NULL,"A先生","123456789","窗帘","完成预约生产安装"),
(NULL,"B女士","123456789","木门","完成预约上门量尺"),
(NULL,"C先生","123456789","木门","完成预约上门量尺"),
(NULL,"D先生","123456789","木门","完成预约上门量尺"),
(NULL,"E女士","123456789","木门","完成预约上门量尺"),
(NULL,"F女士","123456789","窗帘","完成预约上门量尺"),
(NULL,"G先生","123456789","木门","完成预约上门量尺"),
(NULL,"H先生","123456789","木门","完成预约上门量尺"),
(NULL,"I女士","123456789","窗帘","完成预约上门量尺"),
(NULL,"J先生","123456789","木门","完成预约上门量尺"),
(NULL,"K先生","123456789","窗帘","完成预约生产安装"),
(NULL,"L先生","123456789","木门","完成预约上门量尺"),
(NULL,"M先生","123456789","木门","完成预约上门量尺"),
(NULL,"O女士","123456789","窗帘","完成预约上门量尺"),
(NULL,"P先生","123456789","木门","完成预约生产安装"),
(NULL,"Q先生","123456789","窗帘","完成预约上门量尺"),
(NULL,"W女士","123456789","木门","完成预约生产安装"),
(NULL,"E先生","123456789","木门","完成预约上门量尺"),
(NULL,"R先生","123456789","木门","完成预约沟通确图"),
(NULL,"T先生","123456789","木门","完成预约上门量尺"),
(NULL,"Y女士","123456789","木门","完成预约上门量尺"),
(NULL,"S先生","123456789","橱柜","完成预约沟通确图"),
(NULL,"V先生","123456789","木门","完成预约上门量尺"),
(NULL,"N女士","123456789","橱柜","完成预约沟通确图"),
(NULL,"M先生","123456789","木门","完成预约上门量尺"),
(NULL,"Z先生","123456789","木门","完成预约沟通确图"),
(NULL,"X女士","123456789","木门","完成预约上门量尺"),
(NULL,"C先生","123456789","橱柜","完成预约上门量尺"),
(NULL,"D女士","123456789","木门","完成预约上门量尺"),
(NULL,"F先生","123456789","木门","完成预约生产安装"),
(NULL,"G女士","123456789","橱柜","完成预约上门量尺");
;

#效果图库详情
CREATE TABLE qw_product_gallery(
  gid INT PRIMARY KEY AUTO_INCREMENT,
  pid VARCHAR(10),	#商品id
  img_url VARCHAR(100),   #图片路径
  title VARCHAR(50),	#标题	
  galike VARCHAR(100)	#猜你喜欢
);
INSERT INTO qw_product_gallery(gid,pid,img_url,title) VALUES
(null,'1','http://127.0.0.1:3500/img/products/gallary/a1.jpg','别致柔美全屋定制'),
(null,'2','http://127.0.0.1:3500/img/products/gallary/a2.jpg','艺术颜值控主卧'),
(null,'3','http://127.0.0.1:3500/img/products/gallary/a3.jpg','时尚造梦者客餐厅'),
(null,'4','http://127.0.0.1:3500/img/products/gallary/a4.jpg','超摩登简约次卧'),
(null,'5','http://127.0.0.1:3500/img/products/gallary/a5.jpg','轻奢客厅餐厅入户'),
(null,'6','http://127.0.0.1:3500/img/products/gallary/a5.jpg','超摩登时尚主卧'),
(null,'7','http://127.0.0.1:3500/img/products/gallary/a5.jpg','舒雅小格调儿童房'),
(null,'8','http://127.0.0.1:3500/img/products/gallary/a6.jpg','别致柔美全屋定制'),
(null,'9','http://127.0.0.1:3500/img/products/gallary/a7.jpg','艺术颜值控主卧'),
(null,'10','http://127.0.0.1:3500/img/products/gallary/b1.jpg','时尚造梦者客餐厅'),
(null,'11','http://127.0.0.1:3500/img/products/gallary/b2.jpg','超摩登简约次卧'),
(null,'12','http://127.0.0.1:3500/img/products/gallary/b3.jpg','轻奢客厅餐厅入户'),
(null,'13','http://127.0.0.1:3500/img/products/gallary/b4.jpg','超摩登时尚主卧'),
(null,'14','http://127.0.0.1:3500/img/products/gallary/b5.jpg','舒雅小格调儿童房'),
(null,'15','http://127.0.0.1:3500/img/products/gallary/b6.jpg','别致柔美全屋定制'),
(null,'16','http://127.0.0.1:3500/img/products/gallary/a2.jpg','艺术颜值控主卧'),
(null,'17','http://127.0.0.1:3500/img/products/gallary/a3.jpg','时尚造梦者客餐厅'),
(null,'18','http://127.0.0.1:3500/img/products/gallary/a4.jpg','超摩登简约次卧'),
(null,'19','http://127.0.0.1:3500/img/products/gallary/a5.jpg','轻奢客厅餐厅入户'),
(null,'20','http://127.0.0.1:3500/img/products/gallary/a5.jpg','超摩登时尚主卧'),
(null,'21','http://127.0.0.1:3500/img/products/gallary/a5.jpg','舒雅小格调儿童房'),
(null,'22','http://127.0.0.1:3500/img/products/gallary/a1.jpg','别致柔美全屋定制'),
(null,'23','http://127.0.0.1:3500/img/products/gallary/a2.jpg','艺术颜值控主卧'),
(null,'24','http://127.0.0.1:3500/img/products/gallary/a3.jpg','时尚造梦者客餐厅'),
(null,'25','http://127.0.0.1:3500/img/products/gallary/a3.jpg','时尚造梦者客餐厅'),
(null,'26','http://127.0.0.1:3500/img/products/gallary/a3.jpg','时尚造梦者客餐厅'),
(null,'27','http://127.0.0.1:3500/img/products/gallary/a3.jpg','时尚造梦者客餐厅');
INSERT INTO qw_product_gallery(gid,pid,img_url,galike) VALUES
(null,'1','http://127.0.0.1:3500/img/products/gallary/a2.jpg','http://127.0.0.1:3500/img/products/gallary/6a26c17d-bdf5-bd8a-c515-7e62cdd59914.jpg'),
(null,'1','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'2','http://127.0.0.1:3500/img/products/gallary/a2.jpg','http://127.0.0.1:3500/img/products/gallary/6a26c17d-bdf5-bd8a-c515-7e62cdd59914.jpg'),
(null,'2','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'3','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'3','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'4','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'4','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'5','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'5','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'6','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'6','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'7','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'7','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'8','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'8','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'9','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'9','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'10','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'10','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'11','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'11','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'12','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'12','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'13','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'13','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'14','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'14','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'15','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'15','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'16','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'16','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'17','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'17','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'18','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'18','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'19','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'19','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'20','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'20','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'21','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'21','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'22','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'22','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'23','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'23','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'24','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'24','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'25','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'25','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'26','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'26','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'27','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg'),
(null,'27','http://127.0.0.1:3500/img/products/gallary/a3.jpg','http://127.0.0.1:3500/img/products/gallary/26938ae6-0ad8-41ea-ab7c-3809725719e0.jpg');

#空间
CREATE TABLE qw_space(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  spid INT,             #图片id
  stitle VARCHAR(16)  #标题
);
insert into qw_space values
(null,'7','全部'),
(null,'8','a'),
(null,'9','全部'),
(null,'10','全部'),
(null,'11','全部'),
(null,'12','全部'),
(null,'13','a'),
(null,'18','a'),
(null,'17','a'),
(null,'19','a'),
(null,'20','a'),
(null,'21','a');


#功能
CREATE TABLE qw_functions(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fpid INT,         #图片id
  ftitle VARCHAR(16)  #标题
);
insert into qw_functions values
(null,'1','全部'),
(null,'2','b'),
(null,'3','全部'),
(null,'4','全部'),
(null,'11','全部'),
(null,'12','b'),
(null,'13','全部'),
(null,'14','全部'),
(null,'15','全部'),
(null,'16','b'),
(null,'17','全部'),
(null,'18','全部'),
(null,'19','全部'),
(null,'20','b'),
(null,'21','全部'),
(null,'22','全部');

#风格
CREATE TABLE qw_style(
  tid  INT PRIMARY KEY AUTO_INCREMENT,
  tpid INT,             #图片id
  ttitle VARCHAR(16)  #标题
);
insert into qw_style values
(null,'11','全部'),
(null,'12','全部'),
(null,'13','全部'),
(null,'14','全部'),
(null,'22','全部'),
(null,'23','全部'),
(null,'25','全部'),
(null,'26','全部'),
(null,'27','全部'),
(null,'28','全部'),
(null,'29','全部'),
(null,'30','全部');
#花色
CREATE TABLE qw_color(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  cpid INT,         #图片id
  ctitle VARCHAR(16)  #标题
);
insert into qw_color values
(null,'15','全部'),
(null,'16','全部'),
(null,'17','全部'),
(null,'18','全部'),
(null,'19','全部'),
(null,'31','全部'),
(null,'32','全部'),
(null,'33','全部'),
(null,'34','全部'),
(null,'35','全部');

#商品图片表
CREATE TABLE qw_products_picc(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  pid  VARCHAR(256),            #商品图片ID
  pic VARCHAR(256)               #图片路径
);
insert into qw_products_picc values
(null,'1','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_1.jpg'),
(null,'2','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_1.jpg'),
(null,'3','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_2.jpg'),
(null,'4','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_3.jpg'),
(null,'5','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_4.jpg'),
(null,'6','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_1.jpg'),
(null,'7','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_2.jpg'),
(null,'8','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_3.jpg'),
(null,'9','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_4.jpg'),
(null,'10','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_1.jpg'),
(null,'11','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_2.jpg'),
(null,'12','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_3.jpg'),
(null,'13','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_4.jpg'),
(null,'14','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_1.jpg'),
(null,'15','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_2.jpg'),
(null,'16','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_3.jpg'),
(null,'17','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_4.jpg'),
(null,'18','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_1.jpg'),
(null,'19','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_2.jpg'),
(null,'20','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_3.jpg'),
(null,'21','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_4.jpg'),
(null,'22','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_1.jpg'),
(null,'23','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_2.jpg'),
(null,'24','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_3.jpg'),
(null,'25','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_4.jpg'),
(null,'26','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_1.jpg'),
(null,'27','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_2.jpg'),
(null,'28','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_3.jpg'),
(null,'29','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_4.jpg'),
(null,'30','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_1.jpg'),
(null,'31','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_2.jpg'),
(null,'32','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_3.jpg'),
(null,'33','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_4.jpg'),
(null,'34','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_1.jpg'),
(null,'35','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_2.jpg'),
(null,'36','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_3.jpg'),
(null,'37','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_4.jpg'),
(null,'38','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_1.jpg'),
(null,'39','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_2.jpg'),
(null,'40','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_3.jpg'),
(null,'41','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_4.jpg'),
(null,'42','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_1.jpg'),
(null,'43','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_2.jpg'),
(null,'44','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_3.jpg'),
(null,'45','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_4.jpg'),
(null,'46','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_1.jpg'),
(null,'47','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_2.jpg'),
(null,'48','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_3.jpg'),
(null,'49','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_4.jpg'),
(null,'50','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_1.jpg'),
(null,'51','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_2.jpg'),
(null,'52','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_3.jpg'),
(null,'53','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_4.jpg'),
(null,'54','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_1.jpg'),
(null,'55','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_2.jpg'),
(null,'56','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_3.jpg'),
(null,'57','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_4.jpg'),
(null,'58','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_1.jpg'),
(null,'59','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_2.jpg'),
(null,'60','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_3.jpg'),
(null,'61','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_4.jpg'),
(null,'62','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_1.jpg'),
(null,'63','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_2.jpg'),
(null,'64','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_3.jpg'),
(null,'65','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_4.jpg'),
(null,'66','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_1.jpg'),
(null,'67','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_2.jpg'),
(null,'68','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_3.jpg'),
(null,'69','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_4.jpg'),
(null,'70','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_1.jpg'),
(null,'71','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_2.jpg'),
(null,'72','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_3.jpg'),
(null,'73','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_4.jpg'),
(null,'74','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_1.jpg'),
(null,'75','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_2.jpg'),
(null,'76','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_3.jpg'),
(null,'77','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_4.jpg'),
(null,'78','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_1.jpg'),
(null,'79','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_2.jpg'),
(null,'80','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_3.jpg'),
(null,'81','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_4.jpg'),
(null,'82','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_1.jpg'),
(null,'83','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_2.jpg'),
(null,'84','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_3.jpg'),
(null,'85','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_4.jpg'),
(null,'86','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_1.jpg'),
(null,'87','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_2.jpg'),
(null,'88','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_3.jpg'),
(null,'89','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_4.jpg'),
(null,'90','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_1.jpg'),
(null,'91','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_2.jpg'),
(null,'92','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_3.jpg'),
(null,'93','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_4.jpg'),
(null,'94','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_1.jpg'),
(null,'95','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_2.jpg'),
(null,'96','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_3.jpg'),
(null,'97','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_4.jpg'),
(null,'98','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_1.jpg'),
(null,'99','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_2.jpg'),
(null,'100','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_3.jpg'),
(null,'101','http://127.0.0.1:3500/img/hd_bbxg/swiper_1_4.jpg'),
(null,'102','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_1.jpg'),
(null,'103','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_2.jpg'),
(null,'104','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_3.jpg'),
(null,'105','http://127.0.0.1:3500/img/hd_bbxg/swiper_2_4.jpg'),
(null,'106','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_1.jpg'),
(null,'107','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_2.jpg'),
(null,'108','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_3.jpg'),
(null,'109','http://127.0.0.1:3500/img/hd_bbxg/swiper_3_4.jpg'),
(null,'110','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_1.jpg'),
(null,'111','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_2.jpg'),
(null,'112','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_3.jpg'),
(null,'113','http://127.0.0.1:3500/img/hd_bbxg/swiper_4_4.jpg');


CREATE TABLE qw_baidu_ditu(
  mid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(256),
  ltitle VARCHAR(100),
  rtitle VARCHAR(100), 
  lng DECIMAL(14,10),
  lat DECIMAL(14,10)        
);
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州索菲亚古墩店','杭州市古墩路808号新时代广场E座二楼2-3','120.103309','30.320464');
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州索菲亚万达店','杭州市拱墅区祥符街道杭行路666号万达广场三楼3010号','120.125372','30.336838');
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州欧亚达家居店','秋涛北路72号欧亚达家居秋涛店A4-18号','120.208584','30.266209');
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州索菲亚佳好佳131店','秋涛北路118号佳好佳装饰商城D座131号','120.208102','30.271557');
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州月星家居','杭海路555号钱江新城B座240-242号','120.1172','30.322304');
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州索菲亚大都会店','杭州滨江区江南大道1088号第六空间店大都会建材馆二楼C2-21','120.177906','30.235715');
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州恒大国际建材店','德胜东路2888号恒大国际建材家居博览中心C座2楼','120.198197','30.202922');
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州索菲亚世纪龙店','德胜东路2888号恒大国际建材家居博览中心C座2楼','120.276956','30.186819');
insert into qw_baidu_ditu values(null,'http://127.0.0.1:3500/img/baidu.png','杭州索菲亚汇德隆店','金城路1177号银通大厦汇德隆家电广场3楼 ','120.281873','30.186923');


CREATE TABLE qw_gonglue(
  id INT PRIMARY KEY AUTO_INCREMENT,
  gid  VARCHAR(10),            #装修图片ID
  title VARCHAR(20),		#标题
  time DATE,			#发布时间
  about VARCHAR(100),		#介绍
  pic VARCHAR(256)               #图片路径
);
insert into qw_gonglue values
(null,'1','装饰画制作过程，从无到有美呆!','2019-3-29','室内墙壁挂些装饰画，就能够有效改变墙壁空荡荡的状态，让墙壁能变得更加生动且有艺术感。目前有许多人喜欢自己制作装饰画，但却从来没有制作过装饰画，因此并不了解装饰画制作过程，下面为大家介绍它是怎么样制作的。','http://127.0.0.1:3500/img/gonglue/1.jpg'),
(null,'2','上层上品硅藻泥好吗?墙面自洁寿命长','2019-3-29','现在墙面装饰中的材料比过去多了很多，比如硅藻泥成了新颖的墙面材料，在目前有广泛的运用。随着人们用硅藻泥需求增大，也有很多硅藻泥品牌出现，在购买的时候也见到了各个品牌，有些人打算买上层上品硅藻泥。但上层上品硅藻泥好吗?','http://127.0.0.1:3500/img/gonglue/2.jpg'),
(null,'3','该不该装客厅推拉门？如何选择客厅推拉门？','2019-1-2','阳台和客厅相连是常见户型之一，将客厅和阳台打通可以增加客厅面积和采光度，因此，特别是小户型的业主都选择不再在客厅和阳台之间安装推拉门或是隔断。但是，做客厅推拉门还是有一定好处的，如何挑选推拉门比较好呢？','http://127.0.0.1:3500/img/gonglue/3.jpg'),
(null,'4','什么叫集成墙面?新颖墙面装饰材料','2019-2-19','现代装饰中有越来越多新颖的材料出现，让业主眼花缭乱。要是不知道装修材料是什么、有什么用，就盲目选购的话，买回来也不一定适合自己的家里装饰。有些人听到了集成墙面后，对于这种材料有一定的好奇，想要知道什么叫集成墙面?','http://127.0.0.1:3500/img/gonglue/4.jpg'),
(null,'5','楼梯扶手高度在多少合适?太高太低都不好','2019-3-2','别墅或是自建房有多个楼层，此时必须要安装楼梯，楼梯上下如果没有扶手会很不安全，扶手也是楼梯中的重要组成部分。如果扶手太高的话，小孩子会够不上;如果扶手太低的话，扶着时受力不均。那么，楼梯扶手高度在多少合适?','http://127.0.0.1:3500/img/gonglue/5.jpg'),
(null,'6','背景墙设计效果图欣赏 看看别人家里是怎么装饰的','2019-3-6','一般客厅的电视都是背靠墙壁的，其背景墙都是一片白，看起来非常的单调。为了改变这种情况，现代人装饰的时候也会对背景墙着重重视，希望能让背景墙变得更加与众不同。下面来欣赏下别人家的背景墙设计效果图，看看别人的背景墙是如何装饰的。','http://127.0.0.1:3500/img/gonglue/6.jpg'),
(null,'7','天花板材料用什么好？','2019-1-8','过去天花板给我们的印象就是一整片的白色水泥，没有其它的装饰和造型。现在天花板的造型多变同时还可以遮挡装饰的管线、对房间起到隔热隔音的作用。小面小编就为大家介绍一下客厅天花板材料。','http://127.0.0.1:3500/img/gonglue/7.jpg'),
(null,'8','花格电视墙装修效果图 花格背景墙怎么装','2019-1-9','客厅是一个家居的面貌，奠定着家居的整体设计风格。其中，客厅的电视背景墙是重点装修地方，怎么装修电视墙？下面，就为大家展示花格电视墙装修效果图大全。','http://127.0.0.1:3500/img/gonglue/8.jpg');
insert into qw_gonglue values
(null,'9','装饰画制作过程，从无到有美呆!','2019-3-29','室内墙壁挂些装饰画，就能够有效改变墙壁空荡荡的状态，让墙壁能变得更加生动且有艺术感。目前有许多人喜欢自己制作装饰画，但却从来没有制作过装饰画，因此并不了解装饰画制作过程，下面为大家介绍它是怎么样制作的。','http://127.0.0.1:3500/img/gonglue/9.jpg'),
(null,'10','上层上品硅藻泥好吗?墙面自洁寿命长','2019-3-29','现在墙面装饰中的材料比过去多了很多，比如硅藻泥成了新颖的墙面材料，在目前有广泛的运用。随着人们用硅藻泥需求增大，也有很多硅藻泥品牌出现，在购买的时候也见到了各个品牌，有些人打算买上层上品硅藻泥。但上层上品硅藻泥好吗?','http://127.0.0.1:3500/img/gonglue/10.jpg'),
(null,'11','该不该装客厅推拉门？如何选择客厅推拉门？','2019-1-2','阳台和客厅相连是常见户型之一，将客厅和阳台打通可以增加客厅面积和采光度，因此，特别是小户型的业主都选择不再在客厅和阳台之间安装推拉门或是隔断。但是，做客厅推拉门还是有一定好处的，如何挑选推拉门比较好呢？','http://127.0.0.1:3500/img/gonglue/11.jpg'),
(null,'12','什么叫集成墙面?新颖墙面装饰材料','2019-2-19','现代装饰中有越来越多新颖的材料出现，让业主眼花缭乱。要是不知道装修材料是什么、有什么用，就盲目选购的话，买回来也不一定适合自己的家里装饰。有些人听到了集成墙面后，对于这种材料有一定的好奇，想要知道什么叫集成墙面?','http://127.0.0.1:3500/img/gonglue/12.jpg'),
(null,'13','楼梯扶手高度在多少合适?太高太低都不好','2019-3-2','别墅或是自建房有多个楼层，此时必须要安装楼梯，楼梯上下如果没有扶手会很不安全，扶手也是楼梯中的重要组成部分。如果扶手太高的话，小孩子会够不上;如果扶手太低的话，扶着时受力不均。那么，楼梯扶手高度在多少合适?','http://127.0.0.1:3500/img/gonglue/13.jpg'),
(null,'14','背景墙设计效果图欣赏 看看别人家里是怎么装饰的','2019-3-6','一般客厅的电视都是背靠墙壁的，其背景墙都是一片白，看起来非常的单调。为了改变这种情况，现代人装饰的时候也会对背景墙着重重视，希望能让背景墙变得更加与众不同。下面来欣赏下别人家的背景墙设计效果图，看看别人的背景墙是如何装饰的。','http://127.0.0.1:3500/img/gonglue/14.jpg'),
(null,'15','天花板材料用什么好？','2019-1-8','过去天花板给我们的印象就是一整片的白色水泥，没有其它的装饰和造型。现在天花板的造型多变同时还可以遮挡装饰的管线、对房间起到隔热隔音的作用。小面小编就为大家介绍一下客厅天花板材料。','http://127.0.0.1:3500/img/gonglue/15.jpg'),
(null,'16','花格电视墙装修效果图 花格背景墙怎么装','2019-1-9','客厅是一个家居的面貌，奠定着家居的整体设计风格。其中，客厅的电视背景墙是重点装修地方，怎么装修电视墙？下面，就为大家展示花格电视墙装修效果图大全。','http://127.0.0.1:3500/img/gonglue/16.jpg');
insert into qw_gonglue values
(null,'17','装饰画制作过程，从无到有美呆!','2019-3-29','室内墙壁挂些装饰画，就能够有效改变墙壁空荡荡的状态，让墙壁能变得更加生动且有艺术感。目前有许多人喜欢自己制作装饰画，但却从来没有制作过装饰画，因此并不了解装饰画制作过程，下面为大家介绍它是怎么样制作的。','http://127.0.0.1:3500/img/gonglue/17.jpg'),
(null,'18','上层上品硅藻泥好吗?墙面自洁寿命长','2019-3-29','现在墙面装饰中的材料比过去多了很多，比如硅藻泥成了新颖的墙面材料，在目前有广泛的运用。随着人们用硅藻泥需求增大，也有很多硅藻泥品牌出现，在购买的时候也见到了各个品牌，有些人打算买上层上品硅藻泥。但上层上品硅藻泥好吗?','http://127.0.0.1:3500/img/gonglue/18.jpg'),
(null,'19','该不该装客厅推拉门？如何选择客厅推拉门？','2019-1-2','阳台和客厅相连是常见户型之一，将客厅和阳台打通可以增加客厅面积和采光度，因此，特别是小户型的业主都选择不再在客厅和阳台之间安装推拉门或是隔断。但是，做客厅推拉门还是有一定好处的，如何挑选推拉门比较好呢？','http://127.0.0.1:3500/img/gonglue/19.jpg'),
(null,'20','什么叫集成墙面?新颖墙面装饰材料','2019-2-19','现代装饰中有越来越多新颖的材料出现，让业主眼花缭乱。要是不知道装修材料是什么、有什么用，就盲目选购的话，买回来也不一定适合自己的家里装饰。有些人听到了集成墙面后，对于这种材料有一定的好奇，想要知道什么叫集成墙面?','http://127.0.0.1:3500/img/gonglue/20.jpg'),
(null,'21','楼梯扶手高度在多少合适?太高太低都不好','2019-3-2','别墅或是自建房有多个楼层，此时必须要安装楼梯，楼梯上下如果没有扶手会很不安全，扶手也是楼梯中的重要组成部分。如果扶手太高的话，小孩子会够不上;如果扶手太低的话，扶着时受力不均。那么，楼梯扶手高度在多少合适?','http://127.0.0.1:3500/img/gonglue/21.jpg'),
(null,'22','背景墙设计效果图欣赏 看看别人家里是怎么装饰的','2019-3-6','一般客厅的电视都是背靠墙壁的，其背景墙都是一片白，看起来非常的单调。为了改变这种情况，现代人装饰的时候也会对背景墙着重重视，希望能让背景墙变得更加与众不同。下面来欣赏下别人家的背景墙设计效果图，看看别人的背景墙是如何装饰的。','http://127.0.0.1:3500/img/gonglue/22.jpg'),
(null,'23','天花板材料用什么好？','2019-1-8','过去天花板给我们的印象就是一整片的白色水泥，没有其它的装饰和造型。现在天花板的造型多变同时还可以遮挡装饰的管线、对房间起到隔热隔音的作用。小面小编就为大家介绍一下客厅天花板材料。','http://127.0.0.1:3500/img/gonglue/23.jpg'),
(null,'24','花格电视墙装修效果图 花格背景墙怎么装','2019-1-9','客厅是一个家居的面貌，奠定着家居的整体设计风格。其中，客厅的电视背景墙是重点装修地方，怎么装修电视墙？下面，就为大家展示花格电视墙装修效果图大全。','http://127.0.0.1:3500/img/gonglue/24.jpg');



CREATE TABLE qw_topic(
  tid INT PRIMARY KEY AUTO_INCREMENT,
  img_oneUrl VARCHAR(255),
  img_twoUrl VARCHAR(255),
  img_threeUrl VARCHAR(255)
);
INSERT INTO qw_topic VALUES#活动图片组
(NULL,'http://127.0.0.1:3500/img/topic_img/btn_qianggou.png','http://127.0.0.1:3500/img/topic_img/btn-lingqu.png','http://127.0.0.1:3500/img/topic_img/btn-mianfeilingqu.png'),
(NULL,'http://127.0.0.1:3500/img/topic_img/btn-shadow1.png','http://127.0.0.1:3500/img/topic_img/btn-shadow2.png','http://127.0.0.1:3500/img/topic_img/btn-shadow3.png'),
(NULL,'http://127.0.0.1:3500/img/topic_img/carousel1.jpg','http://127.0.0.1:3500/img/topic_img/carousel2.png','http://127.0.0.1:3500/img/topic_img/carousel3.png'),
(NULL,'http://127.0.0.1:3500/img/topic_img/overflow-1.png','http://127.0.0.1:3500/img/topic_img/overflow-2.png','http://127.0.0.1:3500/img/topic_img/overflow-3.png'),
(NULL,'http://127.0.0.1:3500/img/topic_img/pig1.png','http://127.0.0.1:3500/img/topic_img/pig2.png','http://127.0.0.1:3500/img/topic_img/pig3.png'),
(NULL,'http://127.0.0.1:3500/img/topic_img/price-1.png','http://127.0.0.1:3500/img/topic_img/price-2.png','http://127.0.0.1:3500/img/topic_img/price-3.png'),
(NULL,'http://127.0.0.1:3500/img/topic_img/redpack1.png','http://127.0.0.1:3500/img/topic_img/redpack2.png','http://127.0.0.1:3500/img/topic_img/redpack3.png'),
(NULL,'http://127.0.0.1:3500/img/topic_img/s1.png','http://127.0.0.1:3500/img/topic_img/s2.png','http://127.0.0.1:3500/img/topic_img/s3.png'),
(NULL,'http://127.0.0.1:3500/img/topic_img/swiper-1.png','http://127.0.0.1:3500/img/topic_img/swiper-2.png','http://127.0.0.1:3500/img/topic_img/swiper-3.png');


CREATE TABLE qw_topicBg(
  bid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255)
);
INSERT INTO qw_topicBg VALUES
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_01.jpg'),#背景图片
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_02.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_03.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_04.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_05.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_06.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_07.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_08.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_09.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_10.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_11.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_12.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_13.jpg'),
(NULL,'http://127.0.0.1:3500/img/bg_img/bg_14.jpg');
