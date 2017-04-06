<%@ Page language="VB" AutoEventWireup="false" aspCompat="True" validateRequest="False" %>

<!--#include file="config.aspx"-->

<%
'######################################
' eWebEditor v3.00 - Advanced online web based WYSIWYG HTML editor.
' Copyright (c) 2003-2004 eWebSoft.com
'
' For further information go to http://www.ewebsoft.com/
' This copyright notice MUST stay intact for use.
'######################################
%>

<%

Call InitUpload()

sAction = UCase(Trim(Request.QueryString("action")))

Select Case sAction
Case "REMOTE"
	Call DoCreateNewDir()
	Call DoRemote()
Case "SAVE"
	Call ShowForm()
	Call DoCreateNewDir()
	Call DoSave()
Case Else
	Call ShowForm()
End Select

%>

<script language="vb" runat="server">
Dim sAction As String
Dim sType As String, sStyleName As String, sLanguage As String
Dim sAllowExt As String, nAllowSize As Integer, sUploadDir As String, nUploadObject As Integer, nAutoDir As Integer, sBaseUrl As String, sContentPath As String
Dim sFileExt As String, sOriginalFileName As String, sSaveFileName As String, sPathFileName As String, nFileNum As Integer
Dim nSLTFlag As Integer, nSLTMinSize As Integer, nSLTOkSize As Integer, nSYFlag As Integer, sSYText As String, sSYFontColor As String, nSYFontSize As Integer, sSYFontName As String, sSYPicPath As String, nSLTSYObject As Integer, sSLTSYExt As String, nSYMinSize As Integer, sSYShadowColor As String, nSYShadowOffset As Integer

Sub ShowForm()
	Response.Write ("<HTML>" & _
	"<HEAD>" & _
	"<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>" & _
	"<TITLE>eWebEditor</TITLE>" & _
	"<script language=""javascript"" src=""../dialog/dialog.js""></s" & "cript>" & _
	"<link href='../language/" & sLanguage & ".css' type='text/css' rel='stylesheet'>" & _
	"<link href='../dialog/dialog.css' type='text/css' rel='stylesheet'>" & _
	"</head>" & _
	"<body class=upload>")

	Response.Write ("<form action='?action=save&type=" & sType & "&style=" & sStyleName & "&language=" & sLanguage & "' method=post name=myform enctype='multipart/form-data'>" & _
	"<input type=file name=uploadfile size=1 style='width:100%' >" & _
	"</form>")

	Response.Write ("<script language=javascript>" & VBCrlf & _
	"" & VBCrlf & _
	"var sAllowExt = """ & sAllowExt & """;" & VBCrlf & _
	"" & VBCrlf & _
	"function CheckUploadForm() {" & VBCrlf & _
	"	if (!IsExt(document.myform.uploadfile.value,sAllowExt)){" & VBCrlf & _
	"		parent.UploadError('lang[""ErrUploadInvalidExt""]+"":'+sAllowExt+'""');" & VBCrlf & _
	"		return false;" & VBCrlf & _
	"	}" & VBCrlf & _
	"	return true" & VBCrlf & _
	"}" & VBCrlf & _
	"" & VBCrlf & _
	"var oForm = document.myform ;" & VBCrlf & _
	"oForm.attachEvent(""onsubmit"", CheckUploadForm) ;" & VBCrlf & _
	"if (! oForm.submitUpload) oForm.submitUpload = new Array() ;" & VBCrlf & _
	"oForm.submitUpload[oForm.submitUpload.length] = CheckUploadForm ;" & VBCrlf & _
	"if (! oForm.originalSubmit) {" & VBCrlf & _
	"	oForm.originalSubmit = oForm.submit ;" & VBCrlf & _
	"	oForm.submit = function() {" & VBCrlf & _
	"		if (this.submitUpload) {" & VBCrlf & _
	"			for (var i = 0 ; i < this.submitUpload.length ; i++) {" & VBCrlf & _
	"				this.submitUpload[i]() ;" & VBCrlf & _
	"			}" & VBCrlf & _
	"		}" & VBCrlf & _
	"		this.originalSubmit() ;" & VBCrlf & _
	"	}" & VBCrlf & _
	"}" & VBCrlf & _
	"" & VBCrlf & _
	"try {" & VBCrlf & _
	"	parent.UploadLoaded();" & VBCrlf & _
	"}" & VBCrlf & _
	"catch(e){" & VBCrlf & _
	"}" & VBCrlf & _
	"" & VBCrlf & _
	"</s" & "cript>" & VBCrlf )

	Response.Write ("</body></html>")

End Sub 


Sub DoSave()

	Select Case nUploadObject
	Case 1
		Call DoUpload_ASPUpload()
	Case 2
		Call DoUpload_SAFileUP()
	Case 3
		Call DoUpload_LyfUpload()
	Case Else
		Call DoUpload_ASPDotNet()
	End Select

	Dim s_SmallImageFile As String, s_SmallImagePathFile As String, s_SmallImageScript As String
	s_SmallImageFile = getSmallImageFile(sSaveFileName)
	s_SmallImagePathFile = ""
	s_SmallImageScript = ""
	If makeImageSLT(sUploadDir, sSaveFileName, s_SmallImageFile) = True Then
		Call makeImageSY(sUploadDir, s_SmallImageFile)
		Call makeImageSY(sUploadDir, sSaveFileName)
		s_SmallImagePathFile = sContentPath & s_SmallImageFile
		s_SmallImageScript = "try{obj.addUploadFile('" & sOriginalFileName & "', '" & s_SmallImageFile & "', '" & s_SmallImagePathFile & "');} catch(e){} "
	Else
		s_SmallImageFile = ""
		Call makeImageSY(sUploadDir, sSaveFileName)
	End If

	sPathFileName = sContentPath & sSaveFileName
	Call OutScript("parent.UploadSaved('" & sPathFileName & "','" & s_SmallImagePathFile & "');var obj=parent.dialogArguments.dialogArguments;if (!obj) obj=parent.dialogArguments;try{obj.addUploadFile('" & sOriginalFileName & "', '" & sSaveFileName & "', '" & sPathFileName & "');} catch(e){} " & s_SmallImageScript)

End Sub

Sub makeImageSY(s_Path As String, s_File As String)
	If nSYFlag = 0 Then Exit Sub
	If isValidSLTSYExt(s_File) = False Then Exit Sub

	On Error Resume Next
	Dim nOriginalWidth

	Select Case nSLTSYObject
	Case 0
		Dim image As System.Drawing.Image = System.Drawing.Image.FromFile(Server.Mappath(s_Path & s_File))
		nOriginalWidth = image.Width
		If nSYMinSize > nOriginalWidth Then Exit Sub

		Dim bitmap As New System.Drawing.Bitmap(image.Width, image.Height, System.Drawing.Imaging.PixelFormat.Format32bppArgb)
		Dim g As System.Drawing.Graphics = System.Drawing.Graphics.FromImage(bitmap)
		g.DrawImage(image, 0, 0, image.Width, image.Height)

		If nSYFlag = 1 Then
			Dim f As System.Drawing.Font, b As System.Drawing.Brush
			f = new System.Drawing.Font(sSYFontName, nSYFontSize)
			b = new System.Drawing.SolidBrush(System.Drawing.ColorTranslator.FromHtml("#" & sSYShadowColor))
			g.DrawString(sSYText, f, b, 5+nSYShadowOffset, 5+nSYShadowOffset)
			b = new System.Drawing.SolidBrush(System.Drawing.ColorTranslator.FromHtml("#" & sSYFontColor))
			g.DrawString(sSYText, f, b, 5, 5)
		Else
			Dim copyImage As System.Drawing.Image = System.Drawing.Image.FromFile(Server.Mappath(sSYPicPath))
			g.DrawImage(copyImage, new System.Drawing.Rectangle(0, 0, copyImage.Width, copyImage.Height), 0, 0, copyImage.Width, copyImage.Height, System.Drawing.GraphicsUnit.Pixel)
			copyImage.Dispose()
		End If
		g.Dispose()
		image.Dispose()

		bitmap.Save(Server.Mappath(s_Path & s_File))
		bitmap.Dispose()

	Case Else
		Dim oImage, oLogo
		If IsObjInstalled("Persits.Jpeg") = False Then Exit Sub
		oImage = Server.CreateObject("Persits.Jpeg")
		oImage.Open (Server.Mappath(s_Path & s_File))
		nOriginalWidth = oImage.OriginalWidth
		If nSYMinSize > nOriginalWidth Then Exit Sub
		If nSYFlag = 1 Then
			oImage.Canvas.Font.Color = CInt("&H" & sSYFontColor)
			oImage.Canvas.Font.Family = sSYFontName
			'oImage.Canvas.Font.Bold = True
			oImage.Canvas.Font.Size = nSYFontSize
			oImage.Canvas.Font.ShadowColor = CInt("&H" & sSYShadowColor)
			oImage.Canvas.Font.ShadowXOffset = nSYShadowOffset
			oImage.Canvas.Font.ShadowYOffset = nSYShadowOffset
			oImage.Canvas.Print (5, 5, sSYText)
			oImage.Save (Server.Mappath(s_Path & s_File))
		End If
		If nSYFlag = 2 Then
			oLogo = Server.CreateObject("Persits.Jpeg")
			oLogo.Open (Server.Mappath(sSYPicPath))
			oImage.DrawImage (0, 0, oLogo)
			oImage.SendBinary()
			oLogo = Nothing
		End If
		oImage = Nothing

	End Select

End Sub

Function makeImageSLT(s_Path As String, s_File As String, s_SmallFile As String)
	makeImageSLT = False
	If nSLTFlag = 0 Then Exit Function
	If isValidSLTSYExt(s_File) = False Then Exit Function

	On Error Resume Next
	Dim nOriginalWidth As Integer, nOriginalHeight As Integer, nWidth As Integer, nHeight As Integer
	
	Select Case nSLTSYObject
	Case 0
		Dim image As System.Drawing.Image = System.Drawing.Image.FromFile(Server.Mappath(s_Path & s_File))
		nOriginalWidth = image.Width
		nOriginalHeight = image.Height
		If nOriginalWidth < nSLTMinSize And nOriginalHeight < nSLTMinSize Then Exit Function
		If nOriginalWidth > nOriginalHeight Then
			nWidth = nSLTOkSize
			nHeight = (nSLTOkSize / nOriginalWidth) * nOriginalHeight
		Else
			nHeight = nSLTOkSize
			nWidth = (nSLTOkSize / nOriginalHeight) * nOriginalWidth
		End If

		Dim bitmap As New System.Drawing.Bitmap(nWidth, nHeight, System.Drawing.Imaging.PixelFormat.Format32bppArgb)
		Dim g As System.Drawing.Graphics = System.Drawing.Graphics.FromImage(bitmap)
		g.Clear(System.Drawing.Color.Transparent)
		g.DrawImage(image, new System.Drawing.Rectangle(0, 0, nWidth, nHeight))
		image.Dispose()

		Dim s_Ext As String, s_Mime As String
		s_Ext = LCase(Mid(s_File, InstrRev(s_File, ".")+1))
		Select Case s_Ext
		Case "png"
			s_Mime = "image/png"
		Case "tif", "tiff"
			s_Mime = "image/tiff"
		Case "bmp"
			s_Mime = "image/bmp"
		Case Else
			s_Mime = "image/jpeg"
		End Select

		Dim parameters As New System.Drawing.Imaging.EncoderParameters(1)
		parameters.Param(0) = new System.Drawing.Imaging.EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 90)
		bitmap.Save(Server.Mappath(s_Path & s_SmallFile), GetCodecInfo(s_Mime), parameters)
		parameters.Dispose()
		
		g.Dispose()
		bitmap.Dispose()
	
	Case 1
		Dim oImage
		If IsObjInstalled("Persits.Jpeg") = False Then Exit Function
		oImage = Server.CreateObject("Persits.Jpeg")
		oImage.Open (Server.Mappath(s_Path & s_File))
		nOriginalWidth = oImage.OriginalWidth
		nOriginalHeight = oImage.OriginalHeight
		If nOriginalWidth < nSLTMinSize And nOriginalHeight < nSLTMinSize Then Exit Function
		If nOriginalWidth > nOriginalHeight Then
			nWidth = nSLTOkSize
			nHeight = (nSLTOkSize / nOriginalWidth) * nOriginalHeight
		Else
			nHeight = nSLTOkSize
			nWidth = (nSLTOkSize / nOriginalHeight) * nOriginalWidth
		End If
		oImage.Width = nWidth
		oImage.Height = nHeight
		oImage.Save (Server.Mappath(s_Path & s_SmallFile))
		oImage = Nothing

	End Select

	makeImageSLT = True
End Function

Function GetCodecInfo(s_Mime As String)
	Dim CodecInfo() As System.Drawing.Imaging.ImageCodecInfo = System.Drawing.Imaging.ImageCodecInfo.GetImageEncoders()
	Dim ici As System.Drawing.Imaging.ImageCodecInfo
	For Each ici In CodecInfo
		If ici.MimeType = s_Mime Then
			GetCodecInfo = ici
		End If
	Next
End Function

Function isValidSLTSYExt(s_File)
	Dim b, i, aExt, sExt
	b = False
	sExt = LCase(Mid(s_File, InstrRev(s_File, ".")+1))
	aExt = Split(LCase(sSLTSYExt), "|")
	For i = 0 To UBound(aExt)
		If aExt(i) = sExt Then
			b = True
			Exit For
		End If
	Next
	isValidSLTSYExt = b
End Function

Function getSmallImageFile(s_File)
	Dim n
	n = InstrRev(s_File, ".")
	getSmallImageFile = Left(s_File, n-1) & "_s." & Mid(s_File, n+1)
End Function

Sub DoRemote()
	Dim sContent
	sContent = Request.Form("eWebEditor_UploadText")

	If sAllowExt <> "" Then
		sContent = ReplaceRemoteUrl(sContent, sAllowExt)
	End If

	Response.Write ("<HTML><HEAD><meta http-equiv='Content-Type' content='text/html; charset=UTF-8'></head><body>" & _
		"<TITLE>eWebEditor</TITLE>" & _
		"<input type=hidden id=UploadText value=""" & inHTML(sContent) & """>" & _
		"</body></html>")

	Call OutScriptNoBack("parent.setHTML(UploadText.value);try{parent.addUploadFile('" & sOriginalFileName & "', '" & sSaveFileName & "', '" & sPathFileName & "');} catch(e){} parent.remoteUploadOK();")

End Sub

Sub DoCreateNewDir()

	Dim sCreateDir
	Select Case nAutoDir
	Case 1
		sCreateDir = Left(FormatTime(Now(), 4), 4)
	Case 2
		sCreateDir = Left(FormatTime(Now(), 4), 6)
	Case 3
		sCreateDir = Left(FormatTime(Now(), 4), 8)
	Case Else
		Exit Sub
	End Select
	sUploadDir = sUploadDir & sCreateDir & "/"
	sContentPath = sContentPath & sCreateDir & "/"
	
	Dim oDir As System.IO.Directory
	If oDir.Exists(Server.Mappath(sUploadDir)) = False Then
		oDir.CreateDirectory(Server.Mappath(sUploadDir))
	End If
End Sub

Sub DoUpload_LyfUpload()
	On Error Resume Next
	Dim oUpload, sResult, sOriginalFile
	oUpload = Server.CreateObject("LyfUpload.UploadFile")
	oUpload.ExtName = Replace(sAllowExt, "|", ",")
	oUpload.MaxSize = nAllowSize*1024
	sOriginalFile = oUpload.Request("originalfile")
	sOriginalFileName = Mid(sOriginalFile, InStrRev(sOriginalFile, "\") + 1)
	sFileExt = LCase(Mid(sOriginalFileName, InStrRev(sOriginalFileName, ".") + 1))
	Call CheckValidExt(sFileExt)
	sSaveFileName = GetRndFileName(sFileExt)
	sResult = oUpload.SaveFile("uploadfile", Server.Mappath(sUploadDir), True, sSaveFileName)

	Select Case sResult
	Case "0"
		Call OutScript("parent.UploadError('lang[""ErrUploadSizeLimit""]+"":" & nAllowSize & "KB""')")
	Case ""
		Call OutScript("parent.UploadError('lang[""ErrUploadInvalidFile""]')")
	Case "1"
		Call OutScript("parent.UploadError('lang[""ErrUploadInvalidExt""]+"":" & sAllowExt & """')")
	End Select
	
	oUpload = Nothing
End Sub

Sub DoUpload_SAFileUp()
	On Error Resume Next
	Dim oFileUp
	oFileUp = Server.CreateObject("SoftArtisans.FileUp")
	'oFileUp.MaxBytes = nAllowSize*1024
	oFileUp.Path = Server.MapPath(sUploadDir)

	If oFileUp.Form("uploadfile").TotalBytes > nAllowSize*1024 Then
		Err.Clear
		Call OutScript("parent.UploadError('lang[""ErrUploadSizeLimit""]+"":" & nAllowSize & "KB""')")
	End If
	If oFileUp.Form("uploadfile").IsEmpty Then
		Call OutScript("parent.UploadError('lang[""ErrUploadInvalidFile""]')")
	End If

	Dim sShortFileName
	sShortFileName = oFileUp.Form("uploadfile").ShortFileName
	sFileExt = LCase(Mid(sShortFileName, InStrRev(sShortFileName, ".") + 1))
	Call CheckValidExt(sFileExt)
	sOriginalFileName = sShortFileName
	sSaveFileName = GetRndFileName(sFileExt)
	oFileUp.Form("uploadfile").SaveAs(Server.Mappath(sUploadDir & sSaveFileName))
	
	oFileUp = Nothing
End Sub

Sub DoUpload_ASPUpload()
	On Error Resume Next
	Dim oUpload, oFile, nCount
	oUpload = Server.CreateObject("Persits.Upload")
	oUpload.SetMaxSize(nAllowSize*1024, True)
	nCount = oUpload.Save

	If nCount < 1 Then
		Call OutScript("parent.UploadError('lang[""ErrUploadInvalidFile""]')")
	End If
	If Err.Number = 8 Then
		Err.Clear
		Call OutScript("parent.UploadError('lang[""ErrUploadSizeLimit""]+"":" & nAllowSize & "KB""')")
	End If
	
	oFile = oUpload.Files("uploadfile")
	sFileExt = LCase(Mid(oFile.Ext, 2))
	Call CheckValidExt(sFileExt)
	sOriginalFileName = oFile.FileName
	sSaveFileName = GetRndFileName(sFileExt)
	oFile.SaveAs (Server.Mappath(sUploadDir & sSaveFileName))

	oFile = Nothing
	oUpload = Nothing
End Sub

Sub DoUpload_ASPDotNet()
	On Error Resume Next
	Dim oFiles As System.Web.HttpFileCollection = System.Web.HttpContext.Current.Request.Files
	Dim postedFile As System.Web.HttpPostedFile = oFiles(0)
	sOriginalFileName = System.IO.Path.GetFileName(postedFile.FileName)
	sFileExt = System.IO.Path.GetExtension(sOriginalFileName)
	sFileExt = LCase(Mid(sFileExt, 2))
	Call CheckValidExt(sFileExt)
	sSaveFileName = GetRndFileName(sFileExt)
	If PostedFile.ContentLength > nAllowSize*1024 Then
		Call OutScript("parent.UploadError('lang[""ErrUploadSizeLimit""]+"":" & nAllowSize & "KB""')")
	End If

	Dim str_Mappath
	str_Mappath = Server.Mappath(sUploadDir & sSaveFileName)
	sFileExt = LCase(Mid(str_Mappath, InstrRev(str_Mappath, ".") + 1))
	Call CheckValidExt(sFileExt)

	postedFile.SaveAs(str_Mappath)

	oFiles = Nothing
End Sub

Function GetRndFileName(sExt)
	Dim sRnd
	Randomize
	sRnd = Int(900 * Rnd) + 100
	GetRndFileName = year(now) & month(now) & day(now) & hour(now) & minute(now) & second(now) & sRnd & "." & sExt
End Function

Sub OutScript(str)
	Response.Write ("<script language=javascript>" & str & ";history.back()</s" & "cript>")
	Response.End
End Sub
Sub OutScriptNoBack(str)
	Response.Write ("<script language=javascript>" & str & "</s" & "cript>")
End Sub

Sub CheckValidExt(sExt)
	Dim b, i, aExt
	b = False
	aExt = Split(sAllowExt, "|")
	For i = 0 To UBound(aExt)
		If LCase(aExt(i)) = sExt Then
			b = True
			Exit For
		End If
	Next
	If b = False Then
		Call OutScript("parent.UploadError('lang[""ErrUploadInvalidExt""]+"":" & sAllowExt & """')")
	End If
End Sub

Sub InitUpload()
	sType = UCase(Trim(Request.QueryString("type")))
	sStyleName = Trim(Request.QueryString("style"))
	sLanguage = Trim(Request.QueryString("language"))

	Dim i, aStyleConfig, bValidStyle
	bValidStyle = False
	For i = 1 To Ubound(aStyle)
		aStyleConfig = Split(aStyle(i), "|||")
		If Lcase(sStyleName) = Lcase(aStyleConfig(0)) Then
			bValidStyle = True
			Exit For
		End If
	Next

	If bValidStyle = False Then
		OutScript("parent.UploadError('lang[""ErrInvalidStyle""]')")
	End If

	sBaseUrl = aStyleConfig(19)
	nUploadObject = CInt(aStyleConfig(20))
	nAutoDir = CInt(aStyleConfig(21))

	sUploadDir = aStyleConfig(3)
	If Left(sUploadDir, 1) <> "/" Then
		sUploadDir = "../" & sUploadDir
	End If

	Select Case sBaseUrl
	Case "0"
		sContentPath = aStyleConfig(23)
	Case "1"
		sContentPath = RelativePath2RootPath(sUploadDir)
	Case "2"
		sContentPath = RootPath2DomainPath(RelativePath2RootPath(sUploadDir))
	End Select

	Select Case sType
	Case "REMOTE"
		sAllowExt = aStyleConfig(10)
		nAllowSize = CInt(aStyleConfig(15))
	Case "FILE"
		sAllowExt = aStyleConfig(6)
		nAllowSize = CInt(aStyleConfig(11))
	Case "MEDIA"
		sAllowExt = aStyleConfig(9)
		nAllowSize = CInt(aStyleConfig(14))
	Case "FLASH"
		sAllowExt = aStyleConfig(7)
		nAllowSize = CInt(aStyleConfig(12))
	Case Else
		sAllowExt = aStyleConfig(8)
		nAllowSize = CInt(aStyleConfig(13))
	End Select

	nSLTFlag = CInt(aStyleConfig(29))
	nSLTMinSize = CInt(aStyleConfig(30))
	nSLTOkSize = CInt(aStyleConfig(31))
	nSYFlag = CInt(aStyleConfig(32))
	sSYText = aStyleConfig(33)
	sSYFontColor = aStyleConfig(34)
	nSYFontSize = CInt(aStyleConfig(35))
	sSYFontName = aStyleConfig(36)
	sSYPicPath = aStyleConfig(37)
	nSLTSYObject = CInt(aStyleConfig(38))
	sSLTSYExt = aStyleConfig(39)
	nSYMinSize = CInt(aStyleConfig(40))
	sSYShadowColor = aStyleConfig(41)
	nSYShadowOffset = CInt(aStyleConfig(42))

End Sub

Function RelativePath2RootPath(url)
	Dim sTempUrl
	sTempUrl = url
	If Left(sTempUrl, 1) = "/" Then
		RelativePath2RootPath = sTempUrl
		Exit Function
	End If

	Dim sWebEditorPath
	sWebEditorPath = Request.ServerVariables("SCRIPT_NAME")
	sWebEditorPath = Left(sWebEditorPath, InstrRev(sWebEditorPath, "/") - 1)
	Do While Left(sTempUrl, 3) = "../"
		sTempUrl = Mid(sTempUrl, 4)
		sWebEditorPath = Left(sWebEditorPath, InstrRev(sWebEditorPath, "/") - 1)
	Loop
	RelativePath2RootPath = sWebEditorPath & "/" & sTempUrl
End Function

Function RootPath2DomainPath(url)
	Dim sHost, sPort
	sHost = Split(Request.ServerVariables("SERVER_PROTOCOL"), "/")(0) & "://" & Request.ServerVariables("HTTP_HOST")
	sPort = Request.ServerVariables("SERVER_PORT")
	If sPort <> "80" Then
		sHost = sHost & ":" & sPort
	End If
	RootPath2DomainPath = sHost & url
End Function

Function ReplaceRemoteUrl(sHTML, sExt)
	Dim s_Content
	s_Content = sHTML
	If IsObjInstalled("Microsoft.XMLHTTP") = False then
		ReplaceRemoteUrl = s_Content
		Exit Function
	End If
	
	Dim SaveFileName, SaveFileType
	Dim re As Regex
	Dim RemoteFile As MatchCollection
	Dim RemoteFileurl As Match
	Dim strSearchPattern As String
	strSearchPattern = "((http|https|ftp|rtsp|mms):(\/\/|\\\\){1}(([A-Za-z0-9_-])+[.]){1,}(net|com|cn|org|cc|tv|[0-9]{1,3})([^ \f\n\r\t\v\""\'\>]*\/)(([^ \f\n\r\t\v\""\'\>])+[.]{1}(" & sExt & ")))"
	re = New Regex(strSearchPattern)
	RemoteFile = re.Matches(s_Content, RegexOptions.IgnoreCase)

	Dim a_RemoteUrl(), n, i, bRepeat
	n = 0
	' to no repeat array
	For Each RemoteFileurl in RemoteFile
		If n = 0 Then
			n = n + 1
			Redim a_RemoteUrl(n)
			a_RemoteUrl(n) = RemoteFileurl.Value.ToString
		Else
			bRepeat = False
			For i = 1 To UBound(a_RemoteUrl)
				If UCase(RemoteFileurl.Value.ToString) = UCase(a_RemoteUrl(i)) Then
					bRepeat = True
					Exit For
				End If
			Next
			If bRepeat = False Then
				n = n + 1
				Redim Preserve a_RemoteUrl(n)
				a_RemoteUrl(n) = RemoteFileurl.Value.ToString
			End If
		End If
	Next
	' start replace
	nFileNum = 0
	For i = 1 To n
		SaveFileType = Mid(a_RemoteUrl(i), InstrRev(a_RemoteUrl(i), ".") + 1)
		SaveFileName = GetRndFileName(SaveFileType)
		If SaveRemoteFile(SaveFileName, a_RemoteUrl(i)) = True Then
			nFileNum = nFileNum + 1
			If nFileNum > 0 Then
				sOriginalFileName = sOriginalFileName & "|"
				sSaveFileName = sSaveFileName & "|"
				sPathFileName = sPathFileName & "|"
			End If
			sOriginalFileName = sOriginalFileName & Mid(a_RemoteUrl(i), InstrRev(a_RemoteUrl(i), "/") + 1)
			sSaveFileName = sSaveFileName & SaveFileName
			sPathFileName = sPathFileName & sContentPath & SaveFileName
			s_Content = Replace(s_Content, a_RemoteUrl(i), sContentPath & SaveFileName, 1, -1, 1)
		End If
	Next

	ReplaceRemoteUrl = s_Content
End Function

Function SaveRemoteFile(s_LocalFileName, s_RemoteFileUrl)
	Dim Ads, Retrieval, GetRemoteData
	Dim bError
	bError = False
	SaveRemoteFile = False
	On Error Resume Next
	Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
	With Retrieval
		.Open ("Get", s_RemoteFileUrl, False, "", "")
		.Send
		GetRemoteData = .ResponseBody
	End With
	Retrieval = Nothing

	If GetRemoteData.length > nAllowSize*1024 Then
		bError = True
	Else
		Ads = Server.CreateObject("Adodb.Stream")
		With Ads
			.Type = 1
			.Open
			.Write (GetRemoteData)
			.SaveToFile (Server.MapPath(sUploadDir & s_LocalFileName), 2)
			.Cancel()
			.Close()
		End With
		Ads=nothing
	End If

	If Err.Number = 0 And bError = False Then
		SaveRemoteFile = True
	Else
		Err.Clear
	End If
End Function

Function IsObjInstalled(strClassString)
	On Error Resume Next
	IsObjInstalled = False
	Err.Number = 0
	Dim xTestObj
	xTestObj = Server.CreateObject(strClassString)
	If 0 = Err.Number Then IsObjInstalled = True
	xTestObj = Nothing
	Err.Number = 0
End Function

Function inHTML(str)
	Dim sTemp
	sTemp = str
	inHTML = ""
	If IsDBNull(sTemp) = True Then
		Exit Function
	End If
	sTemp = Replace(sTemp, "&", "&amp;")
	sTemp = Replace(sTemp, "<", "&lt;")
	sTemp = Replace(sTemp, ">", "&gt;")
	sTemp = Replace(sTemp, Chr(34), "&quot;")
	inHTML = sTemp
End Function

Function FormatTime(s_Time, n_Flag)
	Dim y, m, d, h, mi, s
	FormatTime = ""
	If IsDate(s_Time) = False Then Exit Function
	y = cstr(year(s_Time))
	m = cstr(month(s_Time))
	If len(m) = 1 Then m = "0" & m
	d = cstr(day(s_Time))
	If len(d) = 1 Then d = "0" & d
	h = cstr(hour(s_Time))
	If len(h) = 1 Then h = "0" & h
	mi = cstr(minute(s_Time))
	If len(mi) = 1 Then mi = "0" & mi
	s = cstr(second(s_Time))
	If len(s) = 1 Then s = "0" & s
	Select Case n_Flag
	Case 1
		' yyyy-mm-dd hh:mm:ss
		FormatTime = y & "-" & m & "-" & d & " " & h & ":" & mi & ":" & s
	Case 2
		' yyyy-mm-dd
		FormatTime = y & "-" & m & "-" & d
	Case 3
		' hh:mm:ss
		FormatTime = h & ":" & mi & ":" & s
	Case 4
		' yyyymmdd
		FormatTime = y & m & d
	End Select
End Function

</script>