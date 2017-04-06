<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Inner.Count" ContentType="text/html" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<DIV>
  <UL>
    <LI>创建：<SPAN><asp:Literal ID="ltlCreationDate" runat="server"></asp:Literal></SPAN></LI>
    <LI>博客：<SPAN><asp:Literal ID="ltlCountBlog" runat="server"></asp:Literal>&nbsp;篇</SPAN></LI>
    <LI>相册：<SPAN><asp:Literal ID="ltlCountPhoto" runat="server"></asp:Literal>&nbsp;幅</SPAN></LI>
    <LI>留言：<SPAN><asp:Literal ID="ltlCountWords" runat="server"></asp:Literal>&nbsp;条</SPAN></LI>
    <LI>访问：<SPAN><asp:Literal ID="ltlCountVisits" runat="server"></asp:Literal>&nbsp;次</SPAN></LI>
  </UL>
</DIV>