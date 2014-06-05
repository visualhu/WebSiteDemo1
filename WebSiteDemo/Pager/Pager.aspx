<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pager.aspx.cs" Inherits="WebSiteDemo.Pager.Pager" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>分页</title>
    <style type="text/css">
        DIV.htmlpager {
            MARGIN-TOP: 20px;
            MARGIN-BOTTOM: 10px;
        }

            DIV.htmlpager A {
                BORDER-RIGHT: #8db5d7 1px solid;
                PADDING-RIGHT: 5px;
                BORDER-TOP: #8db5d7 1px solid;
                PADDING-LEFT: 5px;
                PADDING-BOTTOM: 2px;
                BORDER-LEFT: #8db5d7 1px solid;
                COLOR: #000;
                MARGIN-RIGHT: 2px;
                PADDING-TOP: 2px;
                BORDER-BOTTOM: #8db5d7 1px solid;
                TEXT-DECORATION: none;
            }

                DIV.htmlpager A:hover {
                    BORDER-RIGHT: red 1px solid;
                    PADDING-RIGHT: 5px;
                    BORDER-TOP: red 1px solid;
                    PADDING-LEFT: 5px;
                    PADDING-BOTTOM: 2px;
                    BORDER-LEFT: red 1px solid;
                    MARGIN-RIGHT: 2px;
                    PADDING-TOP: 2px;
                    BORDER-BOTTOM: red 1px solid;
                }

                DIV.htmlpager A:active {
                    BORDER-RIGHT: red 1px solid;
                    PADDING-RIGHT: 5px;
                    BORDER-TOP: red 1px solid;
                    PADDING-LEFT: 5px;
                    PADDING-BOTTOM: 2px;
                    BORDER-LEFT: red 1px solid;
                    MARGIN-RIGHT: 2px;
                    PADDING-TOP: 2px;
                    BORDER-BOTTOM: red 1px solid;
                }

            DIV.htmlpager b {
                BORDER-RIGHT: #e89954 1px solid;
                PADDING-RIGHT: 5px;
                BORDER-TOP: #e89954 1px solid;
                PADDING-LEFT: 5px;
                FONT-WEIGHT: bold;
                PADDING-BOTTOM: 2px;
                BORDER-LEFT: #e89954 1px solid;
                COLOR: #000;
                MARGIN-RIGHT: 2px;
                PADDING-TOP: 2px;
                BORDER-BOTTOM: #e89954 1px solid;
                BACKGROUND-COLOR: #ffca7d;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>分页demo1</h2>
            <%=Html(100,0,10) %>
        </div>
        <div>
            <h2>分页demo2</h2>
            <asp:gridview runat="server" ID="gridStudent"></asp:gridview>
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server"
                CustomInfoHTML="共%PageCount%页，当前为第%CurrentPageIndex%页，每页%PageSize%条,共%RecordCount%条"
                FirstPageText="首页" 
                LastPageText="尾页" 
                NextPageText="下一页"
                PageIndexBoxType="TextBox"
                PrevPageText="上一页" 
                ShowCustomInfoSection="Left"
                ShowPageIndex="False" 
                ShowPageIndexBox="Always" 
                SubmitButtonText="Go" 
                SubmitButtonClass="right_d_btn"
                TextAfterPageIndexBox="页" 
                TextBeforePageIndexBox="转到"
                OnPageChanging="AspNetPager1_PageChanging" 
                AlwaysShow="True" 
                PageSize="10" 
                ShowMoreButtons="false" 
                HorizontalAlign="Center">
            </webdiyer:AspNetPager>
        </div>
        <div>
            <h2>分页demo3</h2>
            <asp:gridview runat="server" ID="gridStudent1"></asp:gridview>
            <webdiyer:AspNetPager ID="AspNetPager2" runat="server"                
                OnPageChanging="AspNetPager2_PageChanging" 
                PageSize="10" >
            </webdiyer:AspNetPager>
        </div>
    </form>
</body>
</html>
