<%@ Page Language="C#" Inherits="SiteServer.CCSpark.BackgroundPages.Modal.Code" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <title>视频编码</title>
        <script type="text/javascript" language="javascript">
            function copy() {
                var str = document.getElementById("tbContent").value;
                window.clipboardData.clearData();
                window.clipboardData.setData("Text", str);
            }
    </script>
</head>
<body>
    <form id="Form1" runat="server">
    <div class="box">
        <div class="content">
            <asp:TextBox ID="tbContent" runat="server" TextMode="MultiLine" Width="420px" Height="300px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valContent" runat="server" ErrorMessage="*" ControlToValidate="tbContent"></asp:RequiredFieldValidator>
        </div>
        <div class="bottom" style="text-align:center;">
            <input type="button" class="button" value="拷贝" onclick="copy();" />
            <asp:Button class="button" ID="Cancel" Text="关 闭" runat="server" CausesValidation="false" />
        </div>
    </div>
    </form>
</body>
</html>
