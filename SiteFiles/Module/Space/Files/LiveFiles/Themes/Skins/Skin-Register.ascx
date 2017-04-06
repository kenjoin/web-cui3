<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" class="bvBody"><div class="opaquePartMain">
      <table cellpadding="5" cellspacing="5" border="0">
        <tr>
  <td colspan="2" align="center" height="28"><strong>请填写您的注册信息。如果已经注册，请直接点 <a href="login.aspx">这里</a> 登录。</strong></td>
  </tr>
        <tr>
              <td	class="SSDs" width="167"><space:ResourceControl runat="server" ResourceName="CreateNewAccount_UserName" />:</td>
              <td	class="SSDs">
			<asp:textbox id="Username" MaxLength="64" runat="server" CssClass="text" columns="40"></asp:textbox>
			<asp:RequiredFieldValidator EnableClientScript="false" id="usernameValidator" runat="server" ControlToValidate="Username" Cssclass="validationWarning">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
              <td	class="SSDs" width="167"><space:ResourceControl runat="server" ResourceName="CreateNewAccount_PasswordDescription" />:</td>
              <td	class="SSDs">
			<asp:textbox id="Password" MaxLength="64" TextMode="Password" CssClass="text" runat="server" columns="40"></asp:textbox>
			<asp:RequiredFieldValidator id="passwordValidator" runat="server" ControlToValidate="Password" Cssclass="validationWarning">*</asp:RequiredFieldValidator>			  </td>
            </tr>
            <tr>
              <td	class="SSDs" width="167"><space:ResourceControl runat="server" ResourceName="CreateNewAccount_ReEnterPassword" />:</td>
              <td	class="SSDs">
			<asp:textbox id="Password2" MaxLength="64" TextMode="Password" CssClass="text" runat="server" columns="40"></asp:textbox>
			<asp:RequiredFieldValidator id="password2Validator" runat="server" ControlToValidate="Password2" Cssclass="validationWarning">*</asp:RequiredFieldValidator>
			<asp:comparevalidator id="ComparePassword" runat="server" ControlToValidate="Password2" ControlToCompare="Password" Cssclass="validationWarning">*</asp:comparevalidator>			  </td>
            </tr>
            <tr>
              <td width="167"	class="SSDs"><space:ResourceControl runat="server" ResourceName="CreateNewAccount_Email" />:</td>
              <td	class="SSDs">
			<asp:textbox id="Email" runat="server" MaxLength="128" CssClass="text" columns="40"></asp:textbox>
			<asp:RequiredFieldValidator id="emailValidator" runat="server" ControlToValidate="Email" Cssclass="validationWarning">*</asp:RequiredFieldValidator>
			<asp:RegularExpressionValidator id="emailRegExValidator" runat="server" ControlToValidate="Email" Cssclass="validationWarning" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>			  </td>
            </tr>
			<tr>
              <td width="167"	class="SSDs">提示问题:</td>
              <td	class="SSDs">
			<asp:textbox id="Question" runat="server" CssClass="text" MaxLength="128" columns="40"></asp:textbox>
			<asp:RequiredFieldValidator id="questionValidator" runat="server" ControlToValidate="Question" Cssclass="validationWarning">*</asp:RequiredFieldValidator>			  </td>
            </tr>
			<tr>
              <td width="167"	class="SSDs">答案:</td>
              <td	class="SSDs">
			<asp:textbox id="Answer" runat="server" CssClass="text" MaxLength="128" columns="40"></asp:textbox>
			<asp:RequiredFieldValidator id="answerValidator" runat="server" ControlToValidate="Answer" Cssclass="validationWarning">*</asp:RequiredFieldValidator>			  </td>
            </tr>
			<tr>
			  <td colspan="2"	class="SSDs"><asp:CheckBox id="AcceptAgreement" Checked="true" Runat="server" Text="我接受规则条款，并遵守。" />
			    <space:RequiredCheckBoxValidator EnableClientScript="false" id="RequiredAcceptAgreement" runat="server" ControlToValidate="AcceptAgreement" Cssclass="validationWarning">*</space:RequiredCheckBoxValidator></td>
		  </tr>
			<tr>
			  <td colspan="2"	class="SSDs"><textarea name="textarea" rows="5" cols="80">用户发布信息协议:

1.服务条款的确认和接受

本网站的各项网络服务的所有权和运营权归本公司所有。本公司依照本服务条款及其不时发布的操作规则提供网络服务，此外，当服务使用者（以下称“用户”）使用网站各项分类服务时，用户应当同意本服务条款的全部内容并遵守与该项服务相关的规则与要点。前述所有规则与要点均构成本服务条款的一部分。用户必须完全同意所有服务条款并完成注册程序，才能成为网站的正式用户。 

2.服务说明

本网站仅为用户提供相关的网络服务。用户必须自行配备上网的所需设备（如个人电脑、手机、调制解调器或其他必备上网装置）及所需费用（如上网所支付的与此服务有关的电话费用、 网络费用、手机费用等）。

3.服务的变更、中断或终止

鉴于网络服务的特殊性，本网站有权随时变更或中断或终止部分或全部网络服务，不需对用户或第三方负责。 

为了网站的正常运行，本网站定期或不定期地对提供网络服务的平台（如互联网网站、移动网络等）或相关的设备进行检修或者维护而造成网络服务的中断，本网站将尽力避免服务中断或将中断时间限制在最短时间内，在合理时间内的服务中断，本网站无需为此承担任何责任。 

如发生下列任何一种情形，本网站有权随时中断或终止向用户提供网络服务（包括收费网络服务）而无需对用户或任何第三方承担任何责任： 

（1） 用户提供的资料不真实； 
（2） 用户违反本服务条款的有关规定； 
（3） 用户在使用收费网络服务时未按规定向本网站支付相应的服务费。

4.网上注册

用户在申请使用本网站网络服务时，必须向本网站提供准确的个人资料，如个人资料有任何变动，必须及时更新。用户一旦注册成功，成为本网站的合法用户，将得到一个密码和用户名。每个用户应当对以其用户名进行的所有活动和事件承担全部责任。

用户在此同意接受本网站通过电子邮件或其他方式向用户发送宣传推广或者其他相关商业信息。 

在不对外披露单个用户隐私资料的前提下，本网站有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。

5.用户名、用户密码和安全性 

用户将对用户名和密码安全承担全部责任。用户可随时根据提示改变用户的密码。用户不应将其帐号、密码转让或出借予他人使用。如用户发现其帐号遭他人非法使用或存在安全漏洞的情况，应立即通知本网站。因黑客行为或用户的保管疏忽导致帐号、密码遭他人非法使用，本网站不承担任何责任。 

如用户注册的免费网络服务的帐号在任何连续180日内未实际使用，或者用户注册的收费网络服务的帐号在其订购的收费网络服务的服务期满之后连续180日内未实际使用，则本网站有权删除该帐号并停止为该用户提供相关的网络服务。 

6.用户隐私制度
  用户在遵守上述协议要求的前提下，将充分保护用户享有个人隐私。除非因以下原因，未经用户授权，本网站不公开、编辑或透露其个人注册资料：
(1) 根据有关法律法规的要求；
(2) 按照相关政府主管部门的要求；
(3) 维护社会个体和公众的安全；
(4) 为维护社会公共利益的需要； 
(5) 维护本网站的合法权益；
(6) 事先获得用户的明确授权；
(7) 符合其他相关的要求；
 
7.对用户发布信息的的管理

  用户在本发布信息时，必须遵守国家有关法律规定，并承担一切因自己发布信息不当导致的民事、行政或刑事法律责任。用户在在所发布的信息，不得含有以下内容：
违反宪法确定的基本原则的；
(1)危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；
(2)损害国家荣誉和利益，攻击党和政府的；
(3)煽动民族仇恨、民族歧视，破坏民族团结的；
(4)破坏国家、地区间友好关系的；
(5)违背中华民族传统美德、社会公德、论理道德、以及社会主义精神文明的；
(6)破坏国家宗教政策，宣扬邪教和封建迷信的；
(7)散布谣言或不实消息，扰乱社会秩序 ，破坏社会稳定的；
(8)煽动、组织、教唆恐怖活动、非法集会、结社、游行、示威、聚众扰乱社会秩序的；
(9)散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的；
(10)侮辱或诽谤他人，侵害他人合法权益的；
(11)侵犯他人肖像权、姓名权、名誉权、隐私权或其他人身权利的；
(12)使用漫骂、辱骂、中伤、恐吓、诅咒等不文明语言的；
(13)以非法民间组织名义活动的；
(14)含有法律、行政法规禁止的其他内容的

   如果用户在发布信息时，不能履行和遵守协议中的规定，为维护本网站的形象、信誉、安全、本网站有权删除网民发布的信息。并对违反协议的网民做出封闭ID，暂时、永久禁止在本网站发布信息的处理。同时保留依法追究当事人法律责任的权利。

   用户需独立对自己在网上的行为承担法律责任。若用户的行为不符合上述服务条款，本网站有权做出独立判断立即取消用户服务帐号，用户若在本网站网上散布和传播反动、色情或其他违反国家法律的信息，本网站的系统记录有可能作为用户违反法律的证据。 

   本网站不对用户所发布信息的删除或储存失败承担任何责任。本网站有权判定用户的行为是否符合中国法律法规的规定以及本网站服务条款的要求，如果用户违背了中国法律法规的规定或服务条款的规定，本网站有中断对其提供服务的权利。 对于用户通过本网站网络技术服务（包括但不限于论坛、BBS、新闻评论、博客、图片、网摘等频道）上传到本网站网上可公开获取区域的任何内容，用户同意授予本网站在全世界范围内永久性的、不可撤销的、免费的、非独家的和再许可的权利和许可，本网站可以使用、复制、修改、改编、出版、翻译、据以创作衍生作品、传播、表演和展示该等内容的全部或部分，和/或将此等内容的全部或部分编入其他任何形式的作品、媒体或技术中。 

8.网络服务内容的所有权

本网站网定义的网络服务内容包括：本网站网提供的文字、软件、声音、图片、录象、图表、广告中的全部内容、电子邮件的全部内容以及本网站网为用户提供的其他信息。所有这些内容受版权、商标和/或其它财产所有权法律的保护。所以，用户只能在本网站网和相关权利人授权下才能使用这些内容，而不能擅自复制、发布、转载、播放、改编、汇编或以其他方式使用这些内容或将该等内容用于其他任何商业目的。 

9.链接

本网站网站内设有通往其他网站和网页的链接，但这些网站和网页并非由本网站经营或控制，本网站不承担责任。用户启动任何此类链接或网页，离开本网站网站进入其他网站或网页，所有风险自负，本网站不承担一切责任和债务。 

10.免责声明

用户同意对本网站网络服务的使用承担全部风险，并对因其使用本网站网络服务而产生的一切后果承担全部风险，本网站对用户不作任何类型的担保，也不承担任何责任。 本网站不担保网络服务一定能满足用户的要求，也不担保网络服务不会中断，对服务的及时性、安全性、准确性都不作担保。 对于因不可抗力或本网站不能避免或控制的原因造成的网络服务中断或其它缺陷，本网站不承担任何责任，但将尽力减少因此而给用户造成的损失和影响。 

11.损害赔偿责任

用户同意保障和维护本网站及其他用户的利益，如因用户违反有关法律、法规或本服务条款的任何条款而给本网站或任何其他第三人造成损失，用户同意承担由此造成的损害赔偿责任。 本网站对用户使用网络服务所产生的任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害可能来自：不正当使用网络服务、在网上购买商品或进行同类型服务、在网上进行交易、非法使用网络服务或用户传送的信息有所变动。 

12.服务条款的变更和修订

本网站有权随时对服务条款进行修改，并且一旦发生服务条款的变动，本网站将在页面上提示修改的内容；当用户使用本网站的特殊服务时，应接受本网站随时提供的与该特殊服务相关的规则或说明，并且此规则或说明均构成本服务条款的一部分。用户如果不同意服务条款的修改，可以主动取消已经获得的网络服务；如果用户继续享用网络服务，则视为用户已经接受服务条款的修改。本网站保留不时地且不需通知用户而升级或更改本“提交协议”和所有有关参考文件的权利。

13.适用法律

本服务条款的订立、执行和解释及争议的解决均应适用中国法律并受中国法院管辖。如本服务条款与中华人民共和国法律相抵触时，则该等条款将按法律规定重新修订，而其它条款则依旧有效并具有法律效力。 如双方就本服务条款内容或其执行发生任何争议，双方应尽量友好协商解决；协商不成时，任何一方均可向本网站所在地的人民法院提起诉讼。 

14.其他规定

本服务条款中的标题仅为方便而设，在解释本服务条款时应被忽略，本网站保留进一步修改本协议的权利。
</textarea></td>
		  </tr>
			<tr>
			  <td height="30" colspan="2" align="center" valign="middle"	class="SSDs"><span class="SaveRow">
			    <asp:Button ID="CreateAccount" Text="完成注册，下一步" CssClass="button" runat="server" />                
			  </span></td>
		  </tr>
        </table>
	  <br />
    </div></td>
  </tr>
</table>
