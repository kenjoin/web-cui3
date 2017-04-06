<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ChooseUsers" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <!--#include file="../inc/html_head.inc"-->
    <user:custom ID="Custom1" type="style" runat="server"></user:custom>
     <title id="TitleUsers" runat="server">选择用户</title>
     <meta http-equiv="content-type" content="text/html;charset=utf-8" />
     <bairong:Code ID="Code1" type="JQuery" runat="server" />


    <script type="text/javascript">
        function fnReturn() {
            $("#userslist").show();
            $("#userschoose").hide();
        }
        function fnTips() {
            $("#userslist").hide();
            $("#userschoose").show();
        }
    </script>
</head>
<body>
    <form id="myForm" runat="server">
    <div class="tips">
     <div style="float:left">请在此选择用户</div>
     <div style="float:right; padding-top:4px;" onClick="fnTips()"><a href="javascript:;">条件筛选</a></div>
     <div style="clear:both"></div>
     </div>
     <div id="userslist">
     <asp:DataList ID="MyDataList" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all" >
   
      <ItemTemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
          <td style="width: 8%;" align="right">
          <asp:Literal ID="ltlRadio" runat="server"></asp:Literal>  
          </td>
          <td  align="left"><asp:Literal ID="ltlUserName" runat="server"></asp:Literal></td>
        </tr>
      </ItemTemplate>
    </asp:DataList>
     <table width="95%" align="center">
    <tr>
      <td align="left"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
        </table></td>
    </tr>
      <tr>
                <td colspan="2" align="center" style="padding-top:20px"><asp:Button class="button" id="Ok" text="确 定"  runat="server" />&nbsp;&nbsp;<asp:Button class="button" id="Cancel" text="关闭"  runat="server" /></td>
            </tr>
  </table>
    </div>
    <div id="userschoose" style="display:none">
     <div class="condition summary-title" style="text-align:left; margin-bottom:5px; padding:8px 8px"><strong>添加筛选条件:</strong>&nbsp;&nbsp;<asp:DropDownList ID="AddCondition" runat="server">
            <asp:ListItem Selected="True">会员等级</asp:ListItem>
            <asp:ListItem >用户名</asp:ListItem>
            <asp:ListItem >姓名</asp:ListItem>
            <asp:ListItem >地区</asp:ListItem>
            <asp:ListItem >手机</asp:ListItem>
            <asp:ListItem >固定电话</asp:ListItem>
            <asp:ListItem >email</asp:ListItem>
            <asp:ListItem >邮编</asp:ListItem>
            <asp:ListItem >地址</asp:ListItem>
            <asp:ListItem >性别</asp:ListItem>
        </asp:DropDownList></div>
        <table width="95%" cellpadding="3">
            <tr>
                <td>会员等级</td>
                <td><asp:DropDownList ID="Compare" runat="server">
                <asp:ListItem>包含</asp:ListItem>
                <asp:ListItem>等于</asp:ListItem>
                <asp:ListItem>开头等于</asp:ListItem>
                <asp:ListItem>结尾等于</asp:ListItem>
                <asp:ListItem>不包含</asp:ListItem>
                </asp:DropDownList></td>            
                <td><asp:TextBox ID="Number" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server"></asp:TextBox></td>
                <td><a href="#" style="color:#1274BA">删除</a></td>
            </tr>
            <tr>
                <td>用户名</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>包含</asp:ListItem>
                <asp:ListItem>等于</asp:ListItem>
                <asp:ListItem>开头等于</asp:ListItem>
                <asp:ListItem>结尾等于</asp:ListItem>
                <asp:ListItem>不包含</asp:ListItem>
                </asp:DropDownList></td>            
                <td><asp:TextBox ID="TextBox1" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server"></asp:TextBox></td>
                <td><a href="#" style="color:#1274BA">删除</a></td>
            </tr>
            <tr>
                <td>姓名</td>
                <td><asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>包含</asp:ListItem>
                <asp:ListItem>等于</asp:ListItem>
                <asp:ListItem>开头等于</asp:ListItem>
                <asp:ListItem>结尾等于</asp:ListItem>
                <asp:ListItem>不包含</asp:ListItem>
                </asp:DropDownList></td>            
                <td><asp:TextBox ID="TextBox2" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server"></asp:TextBox></td>
                <td><a href="#" style="color:#1274BA">删除</a></td>
            </tr>
            <tr>
                <td>地区</td>
                <td><asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>包含</asp:ListItem>
                <asp:ListItem>等于</asp:ListItem>
                <asp:ListItem>开头等于</asp:ListItem>
                <asp:ListItem>结尾等于</asp:ListItem>
                <asp:ListItem>不包含</asp:ListItem>
                </asp:DropDownList></td>            
                <td><asp:TextBox ID="TextBox3" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server"></asp:TextBox></td>
                <td><a href="#" style="color:#1274BA">删除</a></td>
            </tr>
            <tr>
                <td colspan="4" align="center" style="padding-top:20px"><input type="button" ID="Return" runat="server"  value="筛选并返回列表" class="button" onClick="fnReturn()" />&nbsp;&nbsp;<input type="button" value="关 闭" class="button" /></td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
