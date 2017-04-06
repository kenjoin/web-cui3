<%@ Page Language="C#" Inherits="SiteServer.Express.BackgroundPages.BackgroundAdvertisement" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
     <head>
     <!--#include file="../inc/html_head.inc"-->
     <user:custom type="style" runat="server"></user:custom>
     <style type="text/css">
.toptips { background:url(../PageFiles/images/tips.gif) no-repeat; background-position:4px 8px; line-height:26px; margin:2px 2px; padding-right: 2px; padding-left: 18px; padding-bottom: 2px; padding-top: 2px; text-align:left; border:1px dotted #999999; background-color:#FFFFCC; }
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
    <div class="columntitle"> 广告列表</div>
    <div class="toptips">图片是否显示为是的状态,请确保广告图片不为空,否则无法显示.</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" CellSpacing="1" CellPadding="0" Align="center" border="0" Width="100%" runat="server" Style="word-break: break-all">
           <HeaderTemplate>
        <tr class="summary-title" style="height: 25px" align="center" >
               <td style="width:30%;">广告图片</td>
               <td style="width:40%;">链接地址</td>
               <td style="width:10%;">是否显示</td>
               <td style="width:20%;">操作</td>
             </tr>
      </HeaderTemplate>
           <ItemTemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" style="height: 25px" onMouseOut="this.className='tdbg';" align="center">
               <td style="padding:5px 0 5px 0;"><asp:Literal ID="ltlImg" runat="server"></asp:Literal></td>
               <td><asp:Literal ID="ltlAddress" runat="server"></asp:Literal></td>
               <td><asp:Literal ID="ltlVisible" runat="server"></asp:Literal></td>
               <td><a href="background_advertisementadd.aspx?ID=<%#DataBinder.Eval(Container.DataItem, "ID")%>">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="background_advertisement.aspx?ID=<%# DataBinder.Eval(Container.DataItem,"ID")%>&Delete=True" onClick="javascript:return confirm('此操作将删除该该广告，确认吗？');">删除</a></td>
             </tr>
      </ItemTemplate>
         </asp:DataList>
    <bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" class="summary-title" Width="100%" cellspacing="0" border="0"></bairong:sqlpager>
    <%=tips%> </div>
       <div style="text-align:left; padding-left:27px;">
    <input type="button" id="btnadd" class="button" value=" 添加广告"  onclick="location.href='background_advertisementadd.aspx'" />
  </div>
     </form>
</body>
</html>
