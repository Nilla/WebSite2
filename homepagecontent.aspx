<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="homepagecontent.aspx.cs" Inherits="webpages_content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script> 
    <script src="http://code.jquery.com/jquery-migrate-1.1.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>  
    <script type="text/javascript" src="js/datetimepicker.js">
    //Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
    //Script featured on JavaScript Kit (http://www.javascriptkit.com)
    //For this script, visit http://www.javascriptkit.com 
    </script>
    <script>
        jQuery.noConflict();
        jQuery(document).ready(function ($) {
            $("#tabs").tabs().addClass("ui-tabs-vertical ui-helper-clearfix");
            $("#tabs li").removeClass("ui-corner-top").addClass("ui-corner-left");
        });
    </script>
   <!-- Start WOWSlider.com HEAD section -->
   <link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
   <style type="text/css">a#vlb{display:none}</style>
   <script type="text/javascript" src="engine1/jquery.js"></script>
   <!-- End WOWSlider.com HEAD section -->
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div id="searchpad">
    <div id="product_content_box">
<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Flight Tickets</a></li>
    <li></li>
    <li></li>
  </ul>
  <div id="tabs-1">
    <h2>Finding Flight Tickets</h2>
    <div id="flight">
        <asp:Label ID="Label1" runat="server" Text="From"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="To"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            <br />
        <asp:Label ID="Label3" runat="server" Text="Depart:"></asp:Label>
        <input id="depart" type="text" size="25"/><a href="javascript:NewCal('depart','ddmmyyyy')">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
        
        <asp:Label ID="Label4" runat="server" Text="Return:"></asp:Label>
     
        <input id="return" type="text" size="25"/><a href="javascript:NewCal('return','ddmmyyyy')">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Seat Qty"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
        <br />   
        <br />
        <asp:Button ID="Button1" runat="server" Text="Search" />
      </div>
  </div>
  <div id="tabs-2">
    <h2></h2>
       <div id="hotels">
          
       </div>
  </div>
  <div id="tabs-3">
    <h2></h2>
     <div id="cars">
         
     </div>
</div>

        </div>
    </div>
        <div id="product_box2">
           <a href="Flightcontent.aspx" title="">
              <img src="images/info.png" style="width:540px;height:260px;"/>
           </a>

                    
		   </div> 

        <div id="product_box3">
<!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
<li><img src="data1/images/jetstar5807_narrowweb__300x414,0.jpg" alt="Bali" title="Bali" id="wows1_0"/></li>
<li><img src="data1/images/alitaliaairlinesadvenice.jpg" alt="Alitalia" title="Alitalia" id="wows1_1"/></li>
<li><img src="data1/images/ad_campaign_blow_dry_500.jpg" alt="Flight Better" title="Flight Better" id="wows1_2"/></li>
<li><img src="data1/images/mocktheislandstravelad.jpg" alt="Island" title="Island" id="wows1_3"/></li>
<li><img src="data1/images/virgin_ipad_ad_0.jpg" alt="Flight Now" title="Flight Now" id="wows1_4"/></li>
</ul></div>
<div class="ws_bullets"><div>
<a href="#" title="Bali"><img src="data1/tooltips/jetstar5807_narrowweb__300x414,0.jpg" alt="Bali"/>1</a>
<a href="#" title="Alitalia"><img src="data1/tooltips/alitaliaairlinesadvenice.jpg" alt="Alitalia"/>2</a>
<a href="#" title="Flight Better"><img src="data1/tooltips/ad_campaign_blow_dry_500.jpg" alt="Fight Better"/>3</a>
<a href="#" title="Island"><img src="data1/tooltips/mocktheislandstravelad.jpg" alt="Island"/>4</a>
<a href="#" title="Flight Now"><img src="data1/tooltips/virgin_ipad_ad_0.jpg" alt="Flight Now"/>5</a>
</div></div>
<a class="wsl" href="http://wowslider.com">Upload Image Javascript by WOWSlider.com v3.4</a>
<div class="ws_shadow"></div>
</div>
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
       
        </div>
        </div>
    </form>
</asp:Content>

