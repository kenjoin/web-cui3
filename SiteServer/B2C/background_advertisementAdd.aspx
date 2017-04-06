<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundAdvertisementAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head><body>
<user:custom type="showpopwin" runat="server" />
<form runat="server">
<bairong:Message runat="server"></bairong:Message>
  <br>
  <DIV class="column">
  <div class="columntitle">
    <asp:Literal id="literalTitle" runat="server" />广告向导 </div>
  <table cellpadding="3" width="95%" height="380" align="center">
    <tr>
      <td colspan="2" height="320" align="left" valign="top">
        <div style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 30px">
          <asp:panel id="AdvertisementBase" runat="server" Visible="false">
            <table width="95%" align="center" cellpadding="3" cellspacing="3">
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="广告的名称" Text="广告名称：" runat="server" ></bairong:help>
                </td>
                <td width="463" colspan="2" align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="AdvertisementName" runat="server" />
                  <asp:RequiredFieldValidator ControlToValidate="AdvertisementName" ErrorMessage="*" Display="Dynamic"
										runat="server" />
                  <asp:RegularExpressionValidator runat="server" ControlToValidate="AdvertisementName"
										ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" />
                </td>
              </tr>
              <tr >
                <td width="200" align="left">
                  <bairong:help HelpText="广告的类型" Text="广告类型：" runat="server" ></bairong:help>
                </td>
                <td colspan="2" align="left">
                  <asp:RadioButtonList ID="AdvertisementType" runat="server" ></asp:RadioButtonList>
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告是否存在期限" Text="此广告是否存在期限限制：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:CheckBox id="IsDateLimited" AutoPostBack="true" OnCheckedChanged="ReFresh" Text="存在期限限制" runat="server"> </asp:CheckBox>
                </td>
              </tr>
              <tr id="StartDateRow" runat="server">
                <td width="200" align="left">
                  <bairong:help HelpText="显示此广告的开始时间" Text="开始时间：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <bairong:DateTimeTextBox id="StartDate" showTime="true" class="colorblur" Columns="30" runat="server" />
                </td>
              </tr>
              <tr id="EndDateRow" runat="server">
                <td width="200" align="left">
                  <bairong:help HelpText="取消此广告的结束时间" Text="结束时间：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <bairong:DateTimeTextBox id="EndDate" showTime="true" class="colorblur" Columns="30" runat="server" />
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="请选择需要显示此广告的栏目页面" Text="显示此广告的栏目页面：" runat="server" ></bairong:help>
                </td>
                <td colspan="2" align="left">
                  <asp:ListBox ID="NodeIDCollectionToChannel" SelectionMode="Multiple" Rows="15" runat="server"></asp:ListBox>
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="请选择需要显示此广告的内容页面" Text="显示此广告的内容页面：" runat="server" ></bairong:help>
                </td>
                <td colspan="2" align="left">
                  <asp:ListBox ID="NodeIDCollectionToContent" SelectionMode="Multiple" Rows="15" runat="server"></asp:ListBox>
                </td>
              </tr>
              <tr id="FileTemplateIDCollectionRow" runat="server">
                <td width="200" align="left">
                  <bairong:help HelpText="请选择需要显示此广告的单页模板" Text="显示此广告的单页模板：" runat="server" ></bairong:help>
                </td>
                <td colspan="2" align="left">
                  <asp:CheckBoxList ID="FileTemplateIDCollection" RepeatColumns="4" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList>
                </td>
              </tr>
            </table>
            </asp:panel>
          <asp:panel id="AdvertisementFloatImage" runat="server" Visible="false">
            <table cellpadding="3" width="95%" align="center">
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="点击此广告后链接到的地址" Text="广告链接地址：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" MaxLength="200" id="NavigationUrl" runat="server" />
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告需要显示的图片或Flash文件的地址" Text="显示图片地址：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="ImageUrl" runat="server" />
                  <asp:RegularExpressionValidator runat="server" ControlToValidate="ImageUrl"
					ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                  <asp:HyperLink ID="SelectImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">选择</asp:HyperLink>
                  <asp:HyperLink ID="UploadImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">上传</asp:HyperLink>
                  <IMG class="preview" id="preview_ImageUrl" src='<%=GetPreviewImageSrc("FloatImage")%>' alt=图片预览 align="absmiddle" name="preview_ImageUrl" width=88 height=70>
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告图片的显示宽度" Text="图片显示宽度：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="Width" runat="server" />
                  <asp:RegularExpressionValidator
					ControlToValidate="Width"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="图片显示宽度必须为数字"
					runat="server"/>
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告图片的显示高度" Text="图片显示高度：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="Height" runat="server" />
                  <asp:RegularExpressionValidator
					ControlToValidate="Height"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="图片显示高度必须为数字"
					runat="server"/>
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告在页面中的显示方式，可以是“跟随窗体滚动”、“在窗体中不断移动”或“静止不动”。" Text="广告滚动类型：" runat="server" ></bairong:help>
                </td>
                <td colspan="2" align="left">
                  <asp:RadioButtonList ID="RollingType" AutoPostBack="true" OnSelectedIndexChanged="ReFresh" runat="server" > </asp:RadioButtonList>
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告出现在页面中的位置" Text="广告位置：" runat="server" ></bairong:help>
                </td>
                <td colspan="2" align="left">
                  <asp:DropDownList ID="PositionType" runat="server"> </asp:DropDownList>
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="水平方向距离：" Text="水平方向距离：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="120" id="PositionX" runat="server" />
                  <asp:RegularExpressionValidator
										ControlToValidate="PositionX"
										ValidationExpression="\d+"
										Display="Dynamic"
										ErrorMessage="此项必须为数字"
										runat="server"/>(px)
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="垂直方向距离：" Text="垂直方向距离：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="100" id="PositionY" runat="server" />
                  <asp:RegularExpressionValidator
										ControlToValidate="PositionY"
										ValidationExpression="\d+"
										Display="Dynamic"
										ErrorMessage="此项必须为数字"
										runat="server"/>(px)
                </td>
              </tr>
              <tr id="IsCloseableTR">
                <td width="200" align="left">
                  <bairong:help HelpText="此广告是否能够被关闭" Text="广告能够被关闭：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:CheckBox id="IsCloseable" runat="server"> </asp:CheckBox>
                </td>
              </tr>
            </table>
            </asp:panel>
          <asp:panel id="AdvertisementScreenDown" runat="server" Visible="false">
            <table cellpadding="3" width="95%" align="center">
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="点击此广告后链接到的地址" Text="广告链接地址：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" MaxLength="200" id="ScreenDownNavigationUrl" runat="server" />
                  <asp:RequiredFieldValidator ControlToValidate="ScreenDownNavigationUrl" ErrorMessage="*" Display="Dynamic" runat="server" />
                  <asp:RegularExpressionValidator runat="server" ControlToValidate="ScreenDownNavigationUrl"
										ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告需要显示的图片或Flash文件的地址" Text="显示图片地址：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="ScreenDownImageUrl" runat="server" />
                  <asp:RegularExpressionValidator runat="server" ControlToValidate="ScreenDownImageUrl"
					ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                  <asp:HyperLink ID="ScreenDownSelectImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">选择</asp:HyperLink>
                  <asp:HyperLink ID="ScreenDownUploadImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">上传</asp:HyperLink>
                  <IMG class="preview" src='<%=GetPreviewImageSrc("ScreenDown")%>' alt=图片预览 align="absmiddle" name="preview_ScreenDownImageUrl" width=88 height=70 id=preview_ScreenDownImageUrl>
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告图片的显示宽度" Text="显示广告时间：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="ScreenDownDelay" runat="server" Text="5" />
                  <asp:RegularExpressionValidator
					ControlToValidate="ScreenDownDelay"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="显示广告时间必须为数字"
					runat="server"/>秒
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告图片的显示宽度" Text="图片显示宽度：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="ScreenDownWidth" runat="server" Text="0" />
                  <asp:RegularExpressionValidator
					ControlToValidate="ScreenDownWidth"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="图片显示宽度必须为数字"
					runat="server"/>(0代表图片默认宽度)
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="此广告图片的显示高度" Text="图片显示高度：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="ScreenDownHeight" runat="server" Text="0" />
                  <asp:RegularExpressionValidator
					ControlToValidate="ScreenDownHeight"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="图片显示高度必须为数字"
					runat="server"/>(0代表图片默认高度)
                </td>
              </tr>
            </table>
            </asp:panel>
          <asp:panel id="AdvertisementOpenWindow" runat="server" Visible="false">
            <table cellpadding="3" width="95%" align="center">
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="弹出窗口页面的地址" Text="弹出窗口页面地址：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" MaxLength="200" id="OpenWindowFileUrl" runat="server" />
                  <asp:RequiredFieldValidator ControlToValidate="OpenWindowFileUrl" ErrorMessage="*" Display="Dynamic" runat="server" />
                  <asp:RegularExpressionValidator runat="server" ControlToValidate="OpenWindowFileUrl"
										ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="弹出窗口的宽度" Text="弹出窗口宽度：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="OpenWindowWidth" runat="server" />
                  <asp:RegularExpressionValidator
					ControlToValidate="OpenWindowWidth"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="弹出窗口宽度必须为数字"
					runat="server"/>(0代表不限制宽度)
                </td>
              </tr>
              <tr>
                <td width="200" align="left">
                  <bairong:help HelpText="弹出窗口的高度" Text="弹出窗口高度：" runat="server" ></bairong:help>
                </td>
                <td align="left">
                  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="OpenWindowHeight" runat="server" />
                  <asp:RegularExpressionValidator
					ControlToValidate="OpenWindowHeight"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="弹出窗口高度必须为数字"
					runat="server"/>(0代表不限制高度)
                </td>
              </tr>
            </table>
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
          </asp:Panel>
    </div>
    
    </td>
    
    </tr>
    
    <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
      <td width="30%">&nbsp;
      </td>
      <td>&nbsp;
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
          <tr >
            <td align="right">
              <span style="padding-right:30 "><span style="padding-right:30 "></span> <span style="padding-right:30 "></span>
              <asp:Button class="button" ID="Previous" OnClick="PreviousPanel" CausesValidation="false" runat="server" Text="< 上一步"></asp:Button>
              &nbsp;
              <asp:Button class="button" id="Next" onclick="NextPanel" runat="server" text="下一步 >"></asp:button>
              <span style="padding-right:30 "></span></span>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  </div>
 
</form>
</body>
</HTML>
