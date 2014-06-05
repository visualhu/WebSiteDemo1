<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadify.aspx.cs" Inherits="WebSiteDemo.Demo.uploadify" %>

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
                'auto': true,
                'multi': true,
                'fileExt': '*.jpg;*.jpeg;*.gif;*.png;*.doc;*.docx;*.xls;*.xlsx;*.pdf;*.txt',
                'onComplete': function (event, queueID, fileObj, response, data) {
                    $('ul').append(SetFileContent(fileObj));
                    SetUploadFile();
                }
            });
        });

        function SetFileContent(objFile) {
            var sLi = "";
            sLi += "<li>";
            sLi += "<img src='" + objFile.filePath + "' width='100' height='100'>";
            sLi += "<input type='hidden' value='" + objFile.filePath + "'>";
            sLi += "<br />";
            sLi += "<a href='javascript:void(0)'>删除</a>";
            sLi += "</li>";
            return sLi;
        }

        function SetUploadFile() {
            $("ul li").each(function(l_i) {
                $(this).attr("id", "li_" + l_i);
            })
            $("ul li a").each(function(a_i) {
                $(this).attr("rel", a_i);
            }).click(function() {
                var li_id = "#li_" + this.rel;
                $(li_id).remove();
            })
        }
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
