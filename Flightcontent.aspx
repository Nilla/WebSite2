<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Flightcontent.aspx.cs" Inherits="webpages_hotelcontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link type="text/css" rel="stylesheet" href="style.css" />
<link type="text/css" rel="stylesheet" href="livePreviewStyle.css" />
<link type="text/css" rel="stylesheet" href="colors/allColors.css" />
<link type="text/css" rel="stylesheet" href="CSS/Flighcontent.css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.processPanel.packed.js"></script>
<script type="text/javascript">
   
    function checkEmail(email) {
        if (email == "")
            return false;
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        if (reg.test(email) == false)
            return false;
        else
            return true;
    }
    $(document).ready(function () {
        $("#processPanel9").processPanel({
            style: "blue-orange",
            onOpen: function (event, step, content, stepNumber) {
                if (stepNumber == 2) {
                    $("#p9content1 .alert").remove();
                    if ($("[name=name]").val() == "") {
                        $("#p9content1").prepend("<div class='alert'>Please check the condition!</div>");
                        return false;
                    }
                }
                else if (stepNumber == 3) {
                    $("#p9content2 .alert").remove();
                    if (!checkEmail($("[name=email]").val())) {
                        $("#p9content2").prepend("<div class='alert'>Please enter valid e-mail address!</div>");
                        return false;
                    }
                }
            }
        });
        $("#processPanel9 #exampleForm").submit(function () {
            $("#p9content3 .alert").remove();
            if ($("[name=check]").val() != "5") {
                $("#p9content3").prepend("<div class='alert'>Please enter correct result!</div>");
                return false;
            }
        });
    });
</script>
    <style type="text/css">
        .auto-style1 {
            height: 52px;
        }
        .auto-style2 {
            width: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
    <div id="hotelbody">
     <div id="searchareas">
       <div id="searchbox">
                <h3>Finding Flights</h3>
              
        <div id="flight">
        <asp:Label ID="Label1" runat="server" Text="From"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="To"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
            <br />
        <asp:Label ID="Label3" runat="server" Text="Depart:"></asp:Label>
        <input id="depart" type="text" size="25"/><a href="javascript:NewCal('depart','ddmmyyyy')">
            <img src="js/cal.gif" width="16" height="16" border="0" alt="Pick a date"/></a>
        <br />
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
         <div id="flightdetails">
             <h3>Booking Items</h3>
             <div id="depart1">
             <div class="heading">Depart</div>
              <div class="flight" id="departflight">
                  <asp:Label ID="fligtname" runat="server" Text="Label"></asp:Label>
                  <asp:Label ID="Label19" runat="server" Text="From"></asp:Label>
                  <asp:Label ID="city1" runat="server" Text="city1"></asp:Label>
                  <asp:Label ID="Label6" runat="server" Text="To"></asp:Label>
                  <asp:Label ID="city2" runat="server" Text="city2"></asp:Label>
                  <br />
                  <asp:Label ID="Date" runat="server" Text="date"></asp:Label>
                  <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                  <br />
                  <asp:Label ID="Label22" runat="server" Text="Depart Time"></asp:Label>
                  <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                  <br />
                  <asp:Label ID="Label24" runat="server" Text="Arrive Time"></asp:Label>
                  <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
              </div>
              <div class="priceheading">Pricing</div>
              <div class="pricedisplay" id="departprice">
                  <asp:Label ID="qty" runat="server" Text="number"></asp:Label>
                  <asp:Label ID="Label7" runat="server" Text="Adult"></asp:Label>
                  <br />
                  <asp:Label ID="Label8" runat="server" Text="Fare"></asp:Label>
                  <asp:Label ID="fareprice" runat="server" Text="number"></asp:Label>
                  <br />
                  <asp:Label ID="Label10" runat="server" Text="GST"></asp:Label>
                  <asp:Label ID="gstprice" runat="server" Text="number"></asp:Label>
                  <br />
              </div>
              <div class="Div1"></div>
             </div>
             <div id="return1">
             <div class="heading">Return</div>
              <div class="flight" id="returnflight">
                   <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                  <asp:Label ID="Label11" runat="server" Text="From"></asp:Label>
                  <asp:Label ID="Label18" runat="server" Text="city1"></asp:Label>
                  <asp:Label ID="Label20" runat="server" Text="To"></asp:Label>
                  <asp:Label ID="Label26" runat="server" Text="city2"></asp:Label>
                  <br />
                  <asp:Label ID="Label27" runat="server" Text="date"></asp:Label>
                  <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                  <br />
                  <asp:Label ID="Label29" runat="server" Text="Depart Time"></asp:Label>
                  <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
                  <br />
                  <asp:Label ID="Label31" runat="server" Text="Arrive Time"></asp:Label>
                  <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>


              </div>
              <div class="priceheading">Pricing</div>
              <div class="pricedisplay" id="returnprice">
                  <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                  <asp:Label ID="Label13" runat="server" Text="Adult"></asp:Label>
                  <br />
                  <asp:Label ID="Label14" runat="server" Text="Fare"></asp:Label>
                  <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                  <br />
                  <asp:Label ID="Label16" runat="server" Text="GST"></asp:Label>
                  <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                  <br />


              </div>
              <div class="Div1"></div>
             </div>
              <div id="totalprice">
                  Total
                  <br />
                  $<asp:Label ID="Label33" runat="server" Text="Label"></asp:Label></div>

         </div>
     </div>
    <div class="panel clearfix" id="processPanel9" style="margin-top: 30px;">
				<a href="#p9content1" label="1">
					Select Flight
				</a>
				<a href="#p9content2" label="2">
					Contact Info
				</a>
				<a href="#p9content3" label="3">
					Payment
				</a>
				<form id="exampleForm" action="formProcessor.php" method="post">
					<fieldset id="p9content1">
						<div class="title">Step one - Select Flight</div>
						<div  class="searchresult" style="width: 750px; float: left; margin-right: 10px;">
                            <table style="width:740px;border: 1px solid black;" >
                                <tr style="background-color:#F69D0E;color:white; font-weight:bold;">
                                    <td>Departing:</td>
                                    <td>From</td>
                                    <td></td>
                                    <td>To</td>
                                    <td></td>                                                                     
                                </tr>
                                <tr style="font-weight:bold;">
                                    <td>Date</td>
                                    <td>Depart</td>
                                    <td>Arrive</td>
                                    <td>Flight</td>
                                    <td>Detail</td>                                   
                                </tr>
                                <tr>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label34" runat="server" Text="Raw Fare"></asp:Label>
                                            <br />
                                        <asp:RadioButton ID="RadioButton1" runat="server" /><asp:Label ID="Price" runat="server" Text="Price"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>Prices includes taxes and fees</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <table style="width:740px;border: 1px solid black;" >
                                <tr style="background-color:#F69D0E;color:white; font-weight:bold;">
                                    <td>Return:</td>
                                    <td>From</td>
                                    <td></td>
                                    <td>To</td>
                                    <td></td>                                                                     
                                </tr>
                                <tr style="font-weight:bold;">
                                    <td>Date</td>
                                    <td>Depart</td>
                                    <td>Arrive</td>
                                    <td>Flight</td>
                                    <td>Detail</td>                                   
                                </tr>
                                <tr>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style1"></td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Label35" runat="server" Text="Raw Fare"></asp:Label>
                                            <br />
                                        <asp:RadioButton ID="RadioButton2" runat="server" /><asp:Label ID="Label36" runat="server" Text="Price"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>Prices includes taxes and fees</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
						</div>
						<div style="width: 740px; ">
                            <table style="width: 100%;">
                                <tr>
                                    <td>TT-designated flights are operated by Easytravelling Airways Australia.</td>
                                    
                                </tr>
                                <tr>
                                    <td>                                      
                                        <p>
                                            <input id="Checkbox1" type="checkbox" name="name" />
                                        I/We have read and accept the applicable carrier’s conditions of carriage,                                        
                                        the fare conditions and the applicable restrictions associated with the 
                                        fare and will advise all other passengers travelling on this reservation. 
                                        I/We confirm that I/we satisfy the applicable carrier’s requirements and understand that 
                                        if I/we do not, I/we may be refused carriage and will not be entitled to a refund. 
                                        (Please check box to continue)</p>

                                    </td>
                                    
                                </tr>
                                <tr style="font-size:small;">
                                    <td>Credit card payments are subject to a booking fee of AUD 8.50 per flight per person. 
                                        This will be added to the price on the payment page. There is no fee for bookings 
                                        made with an Australian-issued MasterCard debit card.</td>
                                   
                                </tr>                  

                            </table>
						</div>
					</fieldset>
					<fieldset id="p9content2">
						<div class="title">Step two - Payment</div>
						
						<div class="searchresult" style="width: 750px; float: left; margin-right: 10px;">
						
						</div>
                        <div>
							Please enter your e-mail before you go to the third step:<br />
							e-mail: <input type="text" name="email" />
						</div>
					</fieldset>
					<fieldset id="p9content3">
						<div class="title">Step three - implementation js</div>
						
						<div class="searchresult" style="width: 750px; float: left; margin-right: 10px;">
						
						</div>
                        <div>
							2+3= <input type="text" name="check" />&nbsp;<input type="submit" value="Submit form" />
						</div>
					</fieldset>
				</form>
			</div>
     </div>
     </form>
</asp:Content>

