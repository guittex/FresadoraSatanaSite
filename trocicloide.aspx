<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="trocicloide.aspx.vb" Inherits="site_fresadora.trocicloide" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div style="margin-top:10px;"><b style="font-size:20px; color:#cd9b1d">TROCICLOIDE</b><br /><br /></div>


<div id="silverlightControlHost" style="margin-top:50px">

         <object data="data:application/x-silverlight-2," type="application/x-silverlight-2" width="100%" height="370px">
		  <param name="source" value="ClientBin/Trocicloide.xap"/>
		  <param name="onError" value="onSilverlightError" />
		  <param name="background" value="white" />
		  <param name="minRuntimeVersion" value="3.0.40818.0" />
		  <param name="autoUpgrade" value="true" />
		  <a href="http://go.microsoft.com/fwlink/?LinkID=149156&v=3.0.40818.0" style="text-decoration:none">
 			  <img src="http://go.microsoft.com/fwlink/?LinkId=161376" alt="Get Microsoft Silverlight" style="border-style:none"/>
		  </a>
	    </object><iframe id="_sl_historyFrame" style="visibility:hidden;height:0px;width:0px;border:0px"></iframe></div>


</asp:Content>
