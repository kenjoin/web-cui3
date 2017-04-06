<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundQuestion" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <script language="JavaScript" type="text/JavaScript">
       function checkstate(frm,state){
          frm=eval(frm);
          var a = 0;
          var messon="确定要"+state+"所选中的问题吗？";
          var messoff="您还没有选择操作的对象！";
          for(var i=0;i<frm.length;i++){
            var cb=frm.elements[i];
            if(cb.value == "on"){if(cb.checked){ a = a + 1;}
            }
          }
          if(a == 0){alert(messoff);return false;}
          else{
            if(confirm(messon))
            { return true;}
            else{return false;}	  
          }
          return true;
        }
        
      function showQuestionBox(id){
	  if(document.getElementById(id).style.display == "none"){
		document.getElementById(id).style.display = "";
	   }else{
		document.getElementById(id).style.display = "none";}
       }
    </script>
</head>
<body>
    <form id="myform" runat="server">
    <bairong:Message runat="server">
    </bairong:Message>
    <div class="column">
        <div class="columntitle">
            问题管理</div>
        <table width="100%" border="0" align="center" cellpadding="2" cellspacing="2">
            <tbody>
                <tr class="summary-title" align="left">
                    <td align="left" style="padding-left: 10px; line-height: 26px;">
                        关键字：
                        <asp:TextBox ID="txtKeyWord" class="colorblur" onfocus="this.className='colorfocus';"
                            onblur="this.className='colorblur';" MaxLength="500" Size="35" runat="server"></asp:TextBox>
                        问题状态：
                        <asp:DropDownList ID="ddlState" runat="server">
                        </asp:DropDownList>
                        &nbsp;问题分类：
                        <asp:DropDownList ID="ddlCatalog" runat="server">
                        </asp:DropDownList>
                        &nbsp;审核状态：
                        <asp:DropDownList ID="ddlCheck" runat="server">
                            <asp:ListItem Value="">全部</asp:ListItem>
                            <asp:ListItem Value="True">已审核</asp:ListItem>
                            <asp:ListItem Value="False">未审核</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;推荐状态：
                        <asp:DropDownList ID="ddlHot" runat="server">
                            <asp:ListItem Value="">全部</asp:ListItem>
                            <asp:ListItem Value="True">推荐</asp:ListItem>
                            <asp:ListItem Value="False">未推荐</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        提问者：
                        <asp:TextBox ID="txtUserName" class="colorblur" onfocus="this.className='colorfocus';"
                            onblur="this.className='colorblur';" runat="server"></asp:TextBox>
                        &nbsp;提问时间：&nbsp;从&nbsp;
                        <bairong:DateTimeTextBox class="colorblur" ID="DateFrom" Size="30" runat="server" />
                        &nbsp;--至--
                        <bairong:DateTimeTextBox class="colorblur" ID="DateTo" Size="30" runat="server" />
                        &nbsp;
                        <asp:Button ID="btnSearch" CssClass="button" runat="server" Style="margin-bottom: 0px"
                            Text="搜 索" OnClick="btnSearch_Click" />
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="column">
        <div class="columntitle">
            问题列表（共<asp:Literal ID="ltlCounts" runat="server"></asp:Literal>项）</div>
        <asp:DataList ID="questionData" ShowHeader="true" CellSpacing="1" CellPadding="1"
            Width="100%" Align="center" border="0" runat="server">
            <HeaderTemplate>
                <tr style="height: 25px;" class="summary-title">
                    <td align="center">序号</td>
                    <td>&nbsp;&nbsp;标题&nbsp;&nbsp;(*问题未审核时可点击相应标题查看详细内容)</td>
                    <td align="center">状态</td>
                    <td align="center">类别</td>
                    <td align="center">推荐</td>
                    <td align="center">提问者</td>
                    <td align="center">回答次数</td>
                    <td align="center">提问日期</td>
                    <td align="center">审核</td>
                    <td align="center">
                     <%-- <input id="chkAll" onclick="javascript:SelectAllCheckboxes(this);" runat="server" type="checkbox" />--%>
                    </td>
                </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbg-dark';" style="height: 25px" onmouseout="this.className='tdbg';">
                    <td align="center" style="width: 30px;">
                        <asp:Literal ID="ltlNum" runat="server"></asp:Literal>
                        <asp:Literal ID="ltlID" runat="server" Visible="false"></asp:Literal>
                    </td>
                    <td align="left">
                        &nbsp;
                        <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 50px;">
                        <asp:Literal ID="ltlState" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 120px;">
                        <asp:Literal ID="ltlCatalog" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 50px;">
                        <asp:Label ID="lblHot" runat="server"></asp:Label>
                    </td>
                    <td align="center" style="width: 100px;">
                        <asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 60px;">
                        <asp:Literal ID="ltlCounts" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 130px;">
                        <asp:Literal ID="ltlTime" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width: 50px;">
                        <asp:Label ID="lblCommit" runat="server"></asp:Label>
                    </td>
                    <td align="center" style="width: 20px;">
                        <asp:CheckBox ID="chk_ID" runat="server" />
                    </td>
                </tr>
                  <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
            </ItemTemplate>
        </asp:DataList>
        <bairong:SqlPager ID="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server"
            Width="100%" CellSpacing="0" border="0" class="summary-title">
        </bairong:SqlPager>
    </div>
    <div style="text-align:left; padding-left:27px;">
        <asp:Button ID="btnCheck" CssClass="button" runat="server" Text="审 核" OnClick="btnCheck_Click" />
         &nbsp;<asp:Button ID="btnHot" CssClass="button" runat="server" Text="推 荐" OnClick="btnHot_Click" />
         &nbsp;<asp:Button ID="btnHotCancel" CssClass="button" runat="server" Text="取消推荐" OnClick="btnHotCancel_Click" />
         &nbsp;<asp:Button ID="btnClose" CssClass="button" runat="server" Text="关 闭"  OnClick="btnClose_Click" />
         &nbsp;<asp:Button ID="btnDelete" CssClass="button" runat="server" Text="删 除" OnClick="btnDelete_Click" /></div>   
    </form>
</body>
</html>
