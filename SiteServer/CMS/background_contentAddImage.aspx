<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContentAddImage" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<bairong:Message runat="server"></bairong:Message>
<form runat="server">
  <div id="success" style="position:absolute;z-index:300;height:120px;width:320px;left:50%;top:120px;margin-left:-150px;margin-top:-80px; display:none">
    <div class="column" style="position:absolute;z-index:300;width:100%;left:4px;top:5px;height:90px;font-size:14px;background-color:#FFFFFF">
      <div class="columntitle">操作提示</div>
      <div class="content" style="height:64px;line-height:150%;" align="center"><BR />
        <img border="0" src="../pic/animated_loading.gif" align="absmiddle" />&nbsp;正在验证采集规则, 请稍候... <BR />
        <BR />
      </div>
    </div>
  </div>
  <DIV class="column">
    <div class="columntitle">添加图片</div>
    <table cellpadding="1" width="100%" height="380" align="center">
      <tr>
        <td colspan="2" height="320" align="left" valign="top"><div style="PADDING-RIGHT: 0px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 0px">
            <asp:panel id="UploadFiles" runat="server" Visible="false">
              <TABLE cellSpacing=3 cellPadding=3 width="95%" border=0>
                <TBODY>
                  <TR>
                    <TD width="58%"><p>1.
                        <input id="file1" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" onChange="_showImage(this, 'preview1')" type="file" name="file1" size="60" runat="server" />
                      </p></TD>
                    <TD width="42%" align=left><IMG src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview1" width=120 height=90 class=myphoto id=preview1></TD>
                  </TR>
                  <TR>
                    <TD><p>2.
                        <input id="file2" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" onChange="_showImage(this, 'preview2')" type="file" name="file2" size="60" runat="server" />
                      </p></TD>
                    <TD width="42%" align=left><IMG src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview2" width=120 height=90 class=myphoto id=preview2></TD>
                  </TR>
                  <TR>
                    <TD><p>3.
                        <input id="file3" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" onChange="_showImage(this, 'preview3')" type="file" name="file3" size="60" runat="server" />
                      </p></TD>
                    <TD width="42%" align=left><IMG src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview3" width=120 height=90 class=myphoto id=preview3></TD>
                  </TR>
                  <TR>
                    <TD><p>4.
                        <input id="file4" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" onChange="_showImage(this, 'preview4')" type="file" name="file4" size="60" runat="server" />
                      </p></TD>
                    <TD width="42%" align=left><IMG src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview4" width=120 height=90 class=myphoto id=preview4></TD>
                  </TR>
                  <TR>
                    <TD><p>5.
                        <input id="file5" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" onChange="_showImage(this, 'preview5')" type="file" name="file5" size="60" runat="server" />
                      </p></TD>
                    <TD width="42%" align=left><IMG src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview5" width=120 height=90 class=myphoto id=preview5></TD>
                  </TR>
                  <TR>
                    <TD>6.
                      <input id="file6" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" onChange="_showImage(this, 'preview6')" type="file" name="file6" size="60" runat="server" /></TD>
                    <TD width="42%" align=left><IMG src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview6" width=120 height=90 class=myphoto id=preview6></TD>
                  </TR>
                </TBODY>
              </TABLE>
              </asp:panel>
            <asp:panel id="UploadWirte" runat="server" Visible="false">
              <asp:DataList ID="MyDataList" ItemStyle-VerticalAlign="Top" Width="100%" runat="server">
                <itemtemplate>
                  <TABLE cellSpacing=5 cellpadding="6" align="left">
                    <TBODY>
                      <TR>
                        <TD align="left" valign="top" style="width:200px;"><asp:Literal ID="ltlImage" runat="server"></asp:Literal></TD>
                        <TD class=As valign="top"><input type="hidden" id="hdContentID" runat="server" />
                          <TABLE cellPadding=5>
                            <TBODY>
                              <TR>
                                <TD class=Label>标题:</TD>
                                <TD><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" style="WIDTH: 350px" ID="tbTitle" runat="server"></asp:TextBox>
                                  <asp:RequiredFieldValidator ControlToValidate="tbTitle" ErrorMessage="*" Display="Dynamic" runat="server"/></TD>
                              </TR>
                              <TR>
                                <TD class=Label>正文:</TD>
                                <TD><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" style="WIDTH: 350px" TextMode="MultiLine" ID="tbContent" runat="server" Rows="6" Wrap="true"></asp:TextBox></TD>
                              </TR>
                            </TBODY>
                          </TABLE></TD>
                      </TR>
                    </TBODY>
                  </TABLE>
                </itemtemplate>
              </asp:DataList>
              </asp:panel>
            <asp:panel id="Done" runat="server" Visible="false">
              <SPAN class="mainTitle">完成!</SPAN> <BR>
              <BR>
              <DIV> 操作成功。<BR>
                </asp:Panel>
            </DIV>
            </asp:panel>
          <asp:Panel id="OperatingError" runat="server" Visible="false">
            <span class="mainTitle"></span> <STRONG>发生错误</STRONG> <br>
            <br>
            <div> 执行向导过程中出错 </div>
            <br>
            <DIV><B><U>错误信息</U></B>:
              <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
            </DIV>
            </asp:Panel></td>
      </tr>
      <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="30%">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
            <tr >
              <td align="right"><span style="padding-right:30 "><span style="padding-right:30 "></span> <span style="padding-right:30 "></span>
                <asp:Button class="button" ID="Previous" OnClick="PreviousPanel" runat="server" Text="< 上一步"></asp:Button>
                &nbsp;
                <asp:Button class="button" id="Next" onclick="NextPanel" runat="server" text="下一步 >"></asp:button>
                <span style="padding-right:30 "></span></span></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </DIV>
  </TD>
  </TR>
  </TBODY>
  </TABLE>
  </TD>
  </TR>
  </TBODY>
  </TABLE>
</form>
</body>
</HTML>
