# 小趣社
## 目的和意义
&emsp;&emsp;小区管理是现代温馨小区必不可少的一部分，互联网的高速发展，势必将传统的小区管理模式转变为“互联网+”的小区管理模式，人们已经融入到了互联网的时代中。   
&emsp;&emsp;本系统的目的是为了方便管理小区，为了方便居民交流。   
&emsp;&emsp;本系统的意义有，第一，本系统能方便的进行物业管理，从而减轻小区物业管理员的负担；第二，本系统有交流管理模块，能让居民在小区里多些交流，能发布一些有趣的活动通知，提高居民的幸福感。新型小区管理模式的小趣社核心是互联网+小区物业管理+通知交流。

## 项目介绍
&emsp;&emsp;这是一个基于ssm的互联网+小区物业管理+通知交流的项目  
**技术点：**  
&emsp;&emsp;使用Mybatis分页插件PageHelper  
&emsp;&emsp;使用redis做Mybatis的二级缓存  
&emsp;&emsp;使用Spring自带的md5加密工具类  
&emsp;&emsp;使用commons-fileupload文件上传组件上传文件  
&emsp;&emsp;使用Spring的拦截器控制访问  
&emsp;&emsp;使用阿里巴巴的druid连接池  
&emsp;&emsp;maven项目  
&emsp;&emsp;使用ssm框架  
&emsp;&emsp;后台bootstrap前端框架  
&emsp;&emsp;前端轮播图  
&emsp;&emsp;富文本编辑框  

## 功能模块
### 前台功能
![前台功能](https://images.gitee.com/uploads/images/2018/0910/141356_302a36ed_2168022.png "图片2.png")
### 后台功能
![后台功能](https://images.gitee.com/uploads/images/2018/0910/141423_24cf3105_2168022.png "图片1.png")

## 项目截图
### 前台截图
**登录界面** 
![前台登录界面](https://images.gitee.com/uploads/images/2019/0708/101016_97c1b6cf_2168022.png "前台登录界面.png")
**主界面** 
![前台主界面](https://images.gitee.com/uploads/images/2019/0708/100925_d6b57622_2168022.png "前台主界面.png")
**发动态界面** 
![前台发动态界面](https://images.gitee.com/uploads/images/2019/0708/101043_cb1c6755_2168022.png "前台发动态界面.png")

### 后台截图
**主界面** 
![后台主界面](https://images.gitee.com/uploads/images/2019/0708/101151_e84cfb09_2168022.png "后台主界面.png")
**动态详情界面** 
![后台动态详情界面](https://images.gitee.com/uploads/images/2019/0708/101215_44f127a4_2168022.png "后台动态详情界面.png")
**修改信息界面** 
![后台修改界面](https://images.gitee.com/uploads/images/2018/0910/142249_46e3927d_2168022.png "后台修改界面.png")

## 详细部署和使用方法
### 1、码云上该项目分支选择release分支（别选master不是最新代码）  
点击克隆，复制链接，然后在git命令行内输入，`git clone https://xxx/.../xxx.git`  
### 2、用Idea去打开克隆下来的文件夹  
Idea配置自己本地的Maven，或者默认是用自带的Maven，Maven自动导包
### 3、注意有个验证码包ValidateCode.jar要手动添加  
在`CM-SSM/src/main/webapp/WEB_INF/lib/ValidateCode.jar`这，右键这个jar包，选择Add as Library，然后点OK，就添加进项目了，代码不报错了。
### 4、MySQL数据库安装  
现在用了最新版本8.0.21
```mysql
mysql -u root -p            #无密码登录
SET PASSWORD = '123456';    #设置root密码
CREATE USER 'mjh'@'localhost' IDENTIFIED BY 'abcdef'; #创建一个其他用户mjh
GRANT ALL ON *.* TO 'mjh'@'localhost';                #授权
```
db.properties
```properties
jdbc.driver=com.mysql.jdbc.Driver
jdbc.url=jdbc:mysql://localhost:3306/community_manage?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC
# 这里用到了上面创建的其他用户
jdbc.username=mjh 
jdbc.password=abcdef
```
使用新版本的MySQL要加serverTimezone=UTC设置时区，否则报错The server time zone value ‘?й???’ is unrecognized or represents more than one time zone  
另一种解决方案，在mysql中设置时区，默认为SYSTEM   
```mysql
mysql> set global time_zone='+8:00';
Query OK, 0 rows affected (0.01 sec)
```
使用navicat数据库管理工具，登录mjh用户，然后点击新建查询，把项目中sql.txt文本内容复制到查询里，点运行就把表和数据都搞好了。  
要注意：项目的pom.xml中数据库导包，要改为你对应的数据库版本，我现在用的是最新版8.0.21
```xml
<!-- 2.数据库 -->
		<dependency>
			<groupId>mysql</groupId>
			<artifactId>mysql-connector-java</artifactId>
			<version>8.0.21</version>
			<scope>runtime</scope>
		</dependency>
```
### 5、tomcat安装  
参考网上安装配置教程，完成后，在Idea导入，先点edit Configuration，再点+添加tomcat local，之后点Configur选tomcat安装目录，就导入成功了。  
使用热部署 war exploded模式,先点edit Configuration，然后server里最下面，before launch里的+，点击，选build Artifacts，点击后选择CM-SSM:war exploded  
Deployment里如果没有Deploy server，就点旁边的+，选Artifact，然后选里面的CM-SSM:war exploded  
刚开始Server里面的On 'Update' action 选Update resources，下面选项也选这个，完成热部署。  
参考原文出处https://blog.csdn.net/java_lifeng/article/details/90020356  
### 6、Redis安装使用  
参考https://blog.csdn.net/weixin_37264997/article/details/80062765  
### 7、整个启动步骤  
net start mysql启动mysql，启动Redis，然后Idea中点击绿色三角形Shift+F10，运行模式运行项目，之后会跳到浏览器的http://localhost:8080/CM_SSM_war_exploded/  
地址，这本应该是后台桌面，因为没登录不能访问，所以是一个空白页，  
要登录后台就要在地址后加一个login，即http://localhost:8080/CM_SSM_war_exploded/login  
管理员名密码就是数据库表中的初始值，都是admin，进去后管理员头像和名字可以自定义。前端登录可以点右上角的前端登录，就会跳到http://localhost:8080/CM_SSM_war_exploded/applogin  
用户名密码数据库也有初始值，如账号密码为张三，123。也可以自己点右上角的前往注册，注册一个账号登录。  
http://localhost:8080/CM_SSM_war_exploded  
后面加/applogin跳到前端登录  
后面加/appreg跳到前端注册  
后面加/login跳到后端登录  
这三个不需要登录就可以访问，其他的如：/到后端桌面，/app到前端主页，还有一些其他功能的链接，在不登录时都是访问不了的。
## 参与贡献

## 联系作者

1. 有问题，邮箱联系我<meijhm@live.com>
2. 我的博客 [meijhm.github.io](https://meijhm.github.io/)，欢迎来访
3. 也可以来 [github](https://github.com/meijhm) 上 look me