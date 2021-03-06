﻿<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="hotelcontent.aspx.cs" Inherits="webpages_hotelcontent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link type="text/css" rel="stylesheet" href="style.css" />
<link type="text/css" rel="stylesheet" href="livePreviewStyle.css" />
<link type="text/css" rel="stylesheet" href="colors/allColors.css" />
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
                        $("#p9content1").prepend("<div class='alert'>Please enter your name!</div>");
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="hotelbody">
     <div id="searchareas">
         <div id="searchbox"></div>
         <div id="flightdetails"></div>
     </div>
    <div class="panel clearfix" id="processPanel9" style="margin-top: 30px;">
				<a href="#p9content1" label="1">
					Select Flight
				</a>
				<a href="#p9content2" label="2">
					Passenger Info
				</a>
				<a href="#p9content3" label="3">
					Contact Info/ payment
				</a>
				<form id="exampleForm" action="formProcessor.php" method="post">
					<fieldset id="p9content1">
						<div class="title">Step one - description</div>
						<div  class="searchresult" style="width: 372px; float: left; margin-right: 10px;">
							
						</div>
						<div style="width: 372px; float: left;">
							Please enter your name before you go to the second step:<br />
							name: <input type="text" name="name" />
						</div>
					</fieldset>
					<fieldset id="p9content2">
						<div class="title">Step two - implementation html</div>
						<div>
							Please enter your e-mail before you go to the third step:<br />
							e-mail: <input type="text" name="email" />
						</div>
						<div class="searchresult">
						
						</div>
					</fieldset>
					<fieldset id="p9content3">
						<div class="title">Step three - implementation js</div>
						<div>
							2+3= <input type="text" name="check" />&nbsp;<input type="submit" value="Submit form" />
						</div>
						<div class="searchresult">
						
						</div>
					</fieldset>
				</form>
			</div>
     </div>
</asp:Content>

