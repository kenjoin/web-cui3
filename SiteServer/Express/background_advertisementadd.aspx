<%@ Page Language="C#" Inherits="SiteServer.Express.BackgroundPages.BackgroundAdvertisementadd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
     <head>
     <!--#include file="../inc/html_head.inc"-->
     <user:custom type="style" runat="server"></user:custom>
     <style type="text/css">
.toptips { line-height:26px; margin-top:2px; padding-right: 2px; padding-left: 5px; padding-bottom: 2px; padding-top: 2px; text-align:left; border:1px dotted #999999; background-color:#FFFFCC; }
</style>
     <%--</user:Custom>--%>
     <meta http-equiv="content-type" content="text/html;charset=utf-8">
     <script language="JavaScript" type="text/javascript"> 
    var flag=false;
    function DrawImage(ImgD,iwidth,iheight){
    //参数(图片,允许的宽度,允许的高度)
    var image=new Image();
    image.src=ImgD.src;
    if(image.width>0 && image.height>0){
    flag=true;
    if(image.width/image.height>= iwidth/iheight){
    if(image.width>iwidth){ ImgD.width=iwidth;
    ImgD.height=(image.height*iwidth)/image.width;
    }else{
    ImgD.width=image.width; 
    ImgD.height=image.height;}
    ImgD.alt=image.width+"×"+image.height;
    }else{
    if(image.height>iheight){ 
    ImgD.height=iheight;
    ImgD.width=(image.width*iheight)/image.height; 
    }else{
    ImgD.width=image.width; ImgD.height=image.height;
    }ImgD.alt=image.width+"×"+image.height; }}} 
     </script>
     </head>
     <body>
<user:Custom Type="showpopwin" runat="server" />
<form id="myForm" style="margin: 0" runat="server">
       <bairong:Message runat="server"> </bairong:Message>
       <div class="column">
    <div class="columntitle"> 广告编辑</div>
    <div style="padding:10px 0 10px 10px;">
           <table cellpadding="10" cellspacing="10" border="0" width="95%">
        <tr>
               <td></td>
               <td><asp:Literal ID="ltlImg" runat="server" Visible="false"></asp:Literal></td>
             </tr>
        <tr>
               <td style="width:10%;" valign="top"> 广告图片： </td>
               <td><asp:FileUpload ID="upload" runat="server" Width="400px" height="23px"/>
            <br />
            <div class="toptips"> 图片格式为jpg或gif，大小不超过1M。(<font style="color:Red;">提示</font>:图片尺寸为:250 x 110.请选择最佳尺寸图片上传。)</div></td>
             </tr>
        <tr>
               <td valign="top"> 链接地址： </td>
               <td><asp:TextBox ID="txtAddress" runat="server" Width="400px" Height="23px"></asp:TextBox>
            <br />
            <div class="toptips">绝对路径,如:http://www.ctma.net 相对路径,如:enterpriseshow.aspx</div></td>
             </tr>
        <tr>
               <td valign="top"> 显示位置： </td>
               <td><asp:TextBox ID="txtRegion" runat="server" Width="100px" Height="23px"></asp:TextBox>
            <br />
            <div class="toptips">1为明星企业下方广告位.2为采购信息下方广告位.</div></td>
             </tr>
        <tr>
               <td valign="top"> 是否显示： </td>
               <td><asp:CheckBox ID="chkvisible" runat="server" />
            <br />
            <div class="toptips">勾选后请确认选择了上传图片,或者已经上传过图片,点击确定后方可生效.</div></td>
             </tr>
      </table>
           <%=tips%></div>
  </div>
       <div style="text-align: left; padding-left: 27px;">
    <asp:Button ID="btnadd" runat="server" CssClass="button" Text="添加广告" OnClick="btnadd_Click" />
    <input type="button" id="btncancel" class="button" value="取 消" onClick="history.back(-1);" />
  </div>
     </form>
</body>
</html>
