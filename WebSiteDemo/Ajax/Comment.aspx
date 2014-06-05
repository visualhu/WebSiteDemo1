<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comment.aspx.cs" Inherits="WebSiteDemo.Ajax.Comment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ajax评论</title>
    <script type="text/javascript" src="../Scripts/ajax/jquery-1.4.2-vsdoc.js"> </script>
    <script type="text/javascript" src="../Scripts/ajax/jquery-1.4.2.js"> </script>
    <link type="text/css" href="../Scripts/ajax/css_Ajax.css" rel="Stylesheet" />
    <script type="text/javascript" src="../Scripts/ajax/js_Ajax.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="divFrame">
            <div class="divTitle">
                <span>最新点评</span>
            </div>
            <div class="divContent">
            </div>
            <div class="divSubmit">
                <div class="SubTitle">发表评论<span id="divMsg" class="clsTip">正在发送数据请求…</span></div>

                <div class="SubContent">
                    <textarea id="txtContent" rows="6" class="txt"></textarea>
                    <div class="SubBtn">
                        <span style="float: left">用户名：<input id="txtName" type="text" class="txt" /></span>
                        <span style="float: right">
                            <input id="Button1" type="button" value="发表" class="btn" /></span>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
