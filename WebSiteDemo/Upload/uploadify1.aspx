<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadify1.aspx.cs" Inherits="WebSiteDemo.Demo.uploadify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>uploadify文件上传并预览</title>
    <link href="../Scripts/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../Scripts/uploadify/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="../Scripts/uploadify/swfobject.js"></script>
    <script type="text/javascript" src="../Scripts/uploadify/jquery.uploadify.v2.1.4.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#uploadify").uploadify({
                'uploader': '../Scripts/uploadify/uploadify.swf',
                'script': 'UploadHandler.ashx',
                'cancelImg': '../Scripts/uploadify/cancel.png',
                'folder': 'UploadFolder/<% = subpathName %>',
                'queueID': 'fileQueue',
                'auto': false,
                'multi': true
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul></ul>
            <div id="fileQueue" style="clear:both;padding-top:5px "></div>
            <input type="file" name="uploadify" id="uploadify" style="padding-top: 5px" />
            <p>
                <a href="javascript:$('#uploadify').uploadifyUpload()">上传</a>| 
                <a href="javascript:$('#uploadify').uploadifyClearQueue()">取消上传</a>
            </p>
        </div>
    </form>
</body>
</html>
