<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTaskWaiting" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
    <head>
    <link rel="stylesheet" href="../style.css" type="text/css" />
    <user:custom type="style" runat="server"></user:custom>
    <bairong:Code type="Prototype" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <bairong:NoTagText id="RegisterScripts" runat="server" />
    <script type="text/javascript" language="javascript">			
        function writeResult(resultMessage, errorMessage, executeCode)
        {
            $('progressBar').style.display = 'none';
            $('taskOk').style.display = 'none';
            $('taskError').style.display = 'none';

            if (resultMessage != '')
            {
                $('taskOk').style.display = '';
                $('taskOkText').innerHTML = resultMessage;
            }
            if (errorMessage != '')
            {
                $('taskError').style.display = '';
                $('taskErrorText').innerHTML = errorMessage;
            }
            if (executeCode != '')
            {
                new PeriodicalExecuter(function(pe)
                {
                    eval(executeCode);
                    pe.stop(); 
                }, 2);
            }
        }
    </script>
    </head>
    <body>
    <form id="MyForm" runat="server">
      <DIV class="column">
        <div class="columntitle">
          <asp:Label id="DisplayTitle" runat="server" />
        </div>
        <table cellpadding="3" width="95%" align="center">
          <tr>
            <td><div id="progressBar" style="margin: 1em 2em 2em 2em;">
                <div>
                <div style="font-weight: bold; padding: 5px;">任务执行中,请稍候...</div>
                <div style="width: 350px; height: 20px;">
                    <div><img src="../sitefiles/bairong/Icons/waiting.gif" /></div>
                  </div>
              </div>
              </div>
              <div id="taskOk" style="position:relative; margin: 2em; display:none;">
                <p style=" padding-left: 25px; padding-bottom: 5px; text-align: left; vertical-align: middle; background:url(../sitefiles/bairong/icons/ok.gif) no-repeat left top;"> <span id="taskOkText"></span></p>
              </div>
              <div id="taskError" style="position:relative; margin: 2em; display:none;">
                <p style=" padding-left: 25px; padding-bottom: 5px; color:red; text-align: left; vertical-align: middle; background:url(../sitefiles/bairong/icons/error.gif) no-repeat left top;"> 任务执行出错，错误信息为：<span id="taskErrorText"></span></p>
              </div></td>
          </tr>
        </table>
      </div>
    </form>
</body>
</html>
