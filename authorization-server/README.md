> 授权码模式

1. 访问：http://localhost:8080/oauth/authorize?client_id=xpp-client&response_type=code&scope=read

   ![image-20210824145754734](https://raw.githubusercontent.com/xpp1109/images/main/uPic/image-20210824145754734.png)

   输入用户名(xpp),密码（xpp），点击sign in按钮：

   ![image-20210824150317154](https://raw.githubusercontent.com/xpp1109/images/main/uPic/image-20210824150317154.png)

   勾选Approve，点击Authorize：

   浏览器会调转，地址栏变为：http://localhost:8081/login?code=NQYkGZ

   接下来通过code获取token，本文使用postman工具：

   ![image-20210824150621958](https://raw.githubusercontent.com/xpp1109/images/main/uPic/image-20210824150621958.png)

   ![image-20210824150816442](https://raw.githubusercontent.com/xpp1109/images/main/uPic/image-20210824150816442.png)

   点击Send按钮，查看返回结果：

   ![image-20210824150843828](https://raw.githubusercontent.com/xpp1109/images/main/uPic/image-20210824150843828.png)

   *刷新Token*


2. 