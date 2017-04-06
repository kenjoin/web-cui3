<%@ Page Language="C#" Inherits="SiteServer.CCSpark.BackgroundPages.BackgroundUpload" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <script language="javascript" type="text/javascript" src="../../SiteFiles/bairong/Scripts/swfobject.js"></script>
    <style type="text/css">
        .fla_btn
        {
            position: relative;
        }
        #swfDiv
        {
            position: absolute;
            z-index: 10;
            top: 25px;
            left: 0px;
            width:45px;
            height:20px;
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form id="addvform" name="addvform" action="addvideo.php" method="get" onsubmit="return alert('提交视频');">
    <bairong:Message runat="server" />
    <div class="column">
        <div class="columntitle">
            上传视频</div>
        <table cellpadding="5" cellspacing="5" border="0" width="100%">
            <tr>
                <td width="80px" align="right">
                    选择视频：
                </td>
                <td align="left">
                    <div class="fla_btn">
                        <input id="videofile" name="videofile" disabled="disabled" type="text" class="inputtext" />
                        <div id="swfDiv">
                        </div>
                        <br />
                        <input type="button" value="选择" id="btn_width" class="inputbutton" style="clear: both;" />
                    </div>
                </td>
            </tr>
            <tr>
                <td width="80px" align="right">
                    视频标题：
                </td>
                <td align="left">
                    <input id="title" name="title" class="colorblur" style="height: 20px; width: 220px;
                        padding: 2px; vertical-align: middle;" onfocus="this.className='colorfocus';"
                        onblur="this.className='colorblur';" columns="60" type="text" />
                </td>
            </tr>
            <tr>
                <td width="80px" align="right">
                    视频标签：
                </td>
                <td align="left">
                    <input id="tag" name="tag" class="colorblur" style="height: 20px; width: 220px; padding: 2px;
                        vertical-align: middle;" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                        columns="60" type="text" />
                </td>
            </tr>
            <tr>
                <td width="80px" align="right">
                    视频简介：
                </td>
                <td align="left">
                    <textarea id="description" name="description" class="colorblur" style="height: 80px;
                        width: 260px; padding: 2px; vertical-align: middle;" onfocus="this.className='colorfocus';"
                        onblur="this.className='colorblur';" type="text"></textarea>
                </td>
            </tr>
        </table>
        <input id="videoid" name="videoid" type="hidden" value="" />
        <div>
            <input type="button" value="提交" onclick="submitvideo();">
        </div>
        <br />
        <hr />
        videoid:
        <div id="videoidshow">
        </div>
        <div>
            上传进度：<span id="up"></span></div>
        <div>
            请求地址：<span id="request_params"></span></div>
        <script type="text/javascript">

            // 加载上传flash ------------- start
            var swfobj = new SWFObject('http://union.bokecc.com/flash/api/uploader.swf', 'uploadswf', '80', '25', '8');
            swfobj.addVariable("progress_interval", 1); //	上传进度通知间隔时长（单位：s）
            swfobj.addVariable("notify_url", ""); //	上传视频后回调接口
            swfobj.addParam('allowFullscreen', 'true');
            swfobj.addParam('allowScriptAccess', 'always');
            swfobj.addParam('wmode', 'transparent');
            swfobj.write('swfDiv');
            // 加载上传flash ------------- end

            //-------------------
            //调用者：flash
            //功能：选中上传文件，获取文件名函数
            //时间：2010-12-22
            //说明：用户可以加入相应逻辑
            //-------------------
            function on_spark_selected_file(filename) {
                document.getElementById("videofile").value = filename;
            }

            //-------------------
            //调用者：flash
            //功能：验证上传是否正常进行函数
            //时间：2010-12-22
            //说明：用户可以加入相应逻辑
            //-------------------
            function on_spark_upload_validated(status, videoid) {
                if (status == "OK") {
                    document.getElementById("videoid").value = videoid;
                    document.getElementById("videoidshow").innerHTML = videoid;
                } else if (status == "NETWORK_ERROR") {
                    alert("网络错误");
                } else {
                    alert("api错误码：" + status);
                }
            }

            //-------------------
            //调用者：flash
            //功能：通知上传进度函数
            //时间：2010-12-22
            //说明：用户可以加入相应逻辑
            //-------------------
            function on_spark_upload_progress(progress) {
                var uploadProgress = document.getElementById("up");
                if (progress == -1) {
                    uploadProgress.innerHTML = "上传出错：" + progress;
                } else if (progress == 100) {
                    uploadProgress.innerHTML = "进度：100% 上传完成";
                    alert('视频上传成功!');
                    location.href = 'background_video.aspx';
                } else {
                    uploadProgress.innerHTML = "进度：" + progress + "%";
                }
            }

            function submitvideo() {
                var videofile = document.getElementById("videofile").value;
                var title = encodeURIComponent(document.getElementById("title").value, "utf-8");
                if (title == '') {
                    title =encodeURIComponent(videofile.substring(0, videofile.indexOf('.')));
                }
                var tag = encodeURIComponent(document.getElementById("tag").value, "utf-8");
                var description = encodeURIComponent(document.getElementById("description").value, "utf-8");
                var url = "background_getUploadUrl.aspx?title=" + title + "&tag=" + tag
			+ "&description=" + description + "";
                var req = getAjax();
                req.open("GET", url, true);
                req.onreadystatechange = function () {
                    if (req.readyState == 4) {
                        if (req.status == 200) {
                            var re = req.responseText; //获取返回的内容
                            document.getElementById("uploadswf").start_upload(re); //	调用flash上传函数
                            document.getElementById("request_params").innerHTML = re;
                        }
                    }
                };
                req.send(null);
            }
            function getAjax() {
                var oHttpReq = null;

                if (window.XMLHttpRequest) {
                    oHttpReq = new XMLHttpRequest;
                    if (oHttpReq.overrideMimeType) {
                        oHttpReq.overrideMimeType("text/xml");
                    }
                } else if (window.ActiveXObject) {
                    try {
                        oHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
                    } catch (e) {
                        oHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                } else if (window.createRequest) {
                    oHttpReq = window.createRequest();
                } else {
                    oHttpReq = new XMLHttpRequest();
                }

                return oHttpReq;
            }
        </script>
    </div>
    </form>
</body>
</html>
