<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lightbox.aspx.cs" Inherits="WebSiteDemo.Gallery.lightbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>灯箱</title>
    <script type="text/javascript" src="../Scripts/ajax/jquery-1.4.2.js"> </script>
    <link type="text/css" href="../Scripts/lightbox/jquery.notesforlightbox.css" rel="Stylesheet" />
    <script type="text/javascript" src="../Scripts/lightbox/jquery.notesforlightbox.js"></script>
    <style type="text/css">
           body{font-size:13px}
           .divFrame{width:380px;border:solid 1px #666}
           .divFrame .divTitle{padding:5px;background-color:#eee;font-weight:bold}
           .divFrame .divContent{padding:8px;line-height:1.6em}
           .divFrame .divContent .divPics{background-color: #777;padding: 10px;width: 344px}
           .divFrame .divContent .divPics ul{list-style: none;padding:0px;margin:0px}
           .divFrame .divContent .divPics ul li{display: inline;}
           .divFrame .divContent .divPics ul img{border: 5px solid #444;border-width: 5px;width:100px;height:100px}
           .divFrame .divContent .divPics ul a:hover img{border:5px solid #fff;border-width: 5px;color: #fff;}
           .divFrame .divContent .divPics ul a:hover{color: #fff;}
    </style>
     <script type="text/javascript">
         $(function () {
             $('.divPics a').lightBox({
                 overlayBgColor: "#666", //浏览图片时的背景色
                 overlayOpacity: 0.5, //背景色的透明度
                 containerResizeSpeed: 600 //图片切换时的速度;
             })
         })
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="divFrame">
         <div class="divTitle">
              我的相册
         </div>
         <div class="divContent">
              <div class="divPics">
                   <ul>
                      <li><a href="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Chrysanthemum.jpg" title="第1篇风景图片">
                             <img src="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Chrysanthemum.jpg" alt="" />
                      </a></li>
                      <li><a href="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Desert.jpg" title="第2篇风景图片">
                             <img src="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Desert.jpg" alt="" />
                      </a></li>
                      <li><a href="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Hydrangeas.jpg" title="第3篇风景图片">
                             <img src="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Hydrangeas.jpg" alt="" />
                      </a></li>
                      <li><a href="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Jellyfish.jpg" title="第4篇风景图片">
                             <img src="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Jellyfish.jpg" alt="" />
                      </a></li>
                      <li><a href="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Koala.jpg" title="第5篇风景图片">
                             <img src="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Koala.jpg" alt="" />
                      </a></li>
                      <li><a href="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Lighthouse.jpg" title="第6篇风景图片">
                             <img src="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Lighthouse.jpg" alt="" />
                      </a></li>
                       <li><a href="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Penguins.jpg" title="第6篇风景图片">
                             <img src="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Penguins.jpg" alt="" />
                      </a></li>
                       <li><a href="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Tulips.jpg" title="第6篇风景图片">
                             <img src="../Upload/UploadFolder/09cc26bb-f20e-4f95-bb95-7db52733c4e9/Tulips.jpg" alt="" />
                      </a></li>
                   </ul>
              </div>
         </div>
    </div>
    </form>
</body>
</html>
