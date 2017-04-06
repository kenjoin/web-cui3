<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Space.Pages.UserHome" enableViewState="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <DIV style="WIDTH: 100%" id="CommandContainer" runat="server">
    <div id="moduleDropdown" class="r" style="display:none;">
      <div id="moduleDropdown-menu">
        <dl>
          <dd><span class="menu-title">我的...</span>
            <ul class="menu">
              <bairong:NoTagText id="MyModuleList" runat="server" />
            </ul>
          </dd>
          <dd><span class="menu-title">热门订阅...</span>
            <ul class="menu">
              <bairong:NoTagText id="RssModuleList" runat="server" />
            </ul>
          </dd>
          <dt><a id="moduleDropdown-closer" href="javascript:undefined;">关闭</a></dt>
        </dl>
        <div class="clear"></div>
      </div>
    </div>
    <asp:PlaceHolder ID="ModuleScriptHolder" runat="server">
      <script type="text/javascript">	
	var ModuleDropdown = Class.create();
	ModuleDropdown.prototype = {
	   initialize:function(){
		   if($("moduleDropdown").visible()){this.hide();}
		   $("moduleDropdown-trigger").onclick=this.toggle.bind(this);
		   $("moduleDropdown-closer").onclick=this.hide.bind(this);
		   this.mouseUpHander=this.mouseUp.bindAsEventListener(this);
		},
		show:function(){
			$("moduleDropdown").style.top = _find_y($("moduleDropdown-trigger")) + 20;
			$("moduleDropdown").style.left = _find_x($("moduleDropdown-trigger"),true) - 80;
			$("moduleDropdown").show();
			this.showing=true;
			Event.observe(document.body, "mouseup", this.mouseUpHander);
			return false;
		},
		hide:function(){
			$("moduleDropdown").hide();
			this.showing=false;
			Event.stopObserving(document.body,"mouseup",this.mouseUpHander);
			return false;
		},
		toggle:function(){
			if(this.showing){this.hide();}
			else{this.show();}
			return false;
		},
		mouseUp:function(e){
			if(this.showing){
				if(!Position.within($("moduleDropdown-menu"),e.clientX,e.clientY)){this.hide();}
			}
		}
	};
					
	var myModuleDropdown = new ModuleDropdown();
	//]]>
	</script>
    </asp:PlaceHolder>
  </DIV>
  <DIV id="modContainer">
    <TABLE id="modContainerTable" cellSpacing="0" cellPadding="0">
      <TBODY>
        <TR>
          <TD class="col" id="ColumnOne" runat="server"></TD>
          <TD class="col" id="ColumnTwo" runat="server"></TD>
          <TD class="col" id="ColumnThree" runat="server"></TD>
        </TR>
      </TBODY>
    </TABLE>
  </DIV>
  <bairong:NoTagText id="ModuleScript" runat="server" />
</asp:content>
