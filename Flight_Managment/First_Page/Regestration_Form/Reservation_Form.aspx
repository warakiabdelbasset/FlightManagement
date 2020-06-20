<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation_Form.aspx.cs" Inherits="Flight_Managment.First_Page.Regestration_Form.Reservation_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="supernova">
<head runat="server">
    <script src="jsfiles/html2canvas.min.js"></script>
    <script src="jsfiles/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            alert("hello");
            html2canvas(document.getElementById('e'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("AdmitCard.pdf");
                    alert("Admit Card Downloading Started");
                }
            });
        }
    </script>
   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="alternate" type="application/json+oembed" href="https://www.jotform.com/oembed/?format=json&amp;url=https%3A%2F%2Fform.jotform.com%2F200504401166541" title="oEmbed Form">
<link rel="alternate" type="text/xml+oembed" href="https://www.jotform.com/oembed/?format=xml&amp;url=https%3A%2F%2Fform.jotform.com%2F200504401166541" title="oEmbed Form">
<meta property="og:title" content="Hotel Booking Form" >
<meta property="og:url" content="https://form.jotform.com/200504401166541" >
<meta property="og:description" content="Please click the link to complete this form.">
<meta name="slack-app-id" content="AHNMASS8M">
<link rel="icon" type="image/png" href="im.png">
<link rel="canonical" href="https://form.jotform.com/200504401166541" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2.0, user-scalable=1" />
<meta name="HandheldFriendly" content="true" />
<title>Hotel Booking Form</title>
<link href="https://cdn.jotfor.ms/static/formCss.css?3.3.15564" rel="stylesheet" type="text/css" />
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.15564" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.15564" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/566a91c2977cdfcd478b4567.css?themeRevisionID=5dca5ac9a5e86d17235d90c1"/>
<style type="text/css">
    .form-label-left{
        width:160px;
    }
    .form-line{
        padding-top:12px;
        padding-bottom:12px;
    }
    .form-label-right{
        width:160px;
    }
    body, html{
        margin:0;
        padding:0;
        background:rgba(255, 255, 255, 0.93);
    }

    .form-all{
        margin:0px auto;
        padding-top:0px;
        width:650px;
        color:#555 !important;
        font-family:"Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
        font-size:14px;
    }
    .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header{
        color: false;
    }

</style>

<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
@import "//support.jotform.com/themes/css/buttons/form-submit-button-simple_orange.css";
.form-all {
  font-family: "Lucida Grande", sans-serif;
}
.form-all {
  width: 650px;
}
.form-label-left,
.form-label-right {
  width: 160px;
}
.form-label {
  white-space: normal;
}
.form-label.form-label-auto {
  display: inline-block;
  float: left;
  text-align: left;
  width: 160px;
}
.form-label-left {
  display: inline-block;
  white-space: normal;
  float: left;
  text-align: left;
}
.form-label-right {
  display: inline-block;
  white-space: normal;
  float: left;
  text-align: right;
}
.form-label-top {
  white-space: normal;
  display: block;
  float: none;
  text-align: left;
}
.form-radio-item label:before {
  top: 0;
}
.form-all {
  font-size: 14px;
}
.form-label {
  font-weight: bold;
}
.form-checkbox-item label,
.form-radio-item label {
  font-weight: normal;
}
.supernova {
  background-color: rgba(255, 255, 255, 0.93);
  background-color: #f5f5f5;
}
.supernova body {
  background-color: transparent;
}
/*
@width30: (unit(@formWidth, px) + 60px);
@width60: (unit(@formWidth, px)+ 120px);
@width90: (unit(@formWidth, px)+ 180px);
*/
/* | */
@media screen and (min-width: 480px) {
  .supernova .form-all {
    border: 1px solid #dcdcdc;
    -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
    -moz-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
    box-shadow: 0 3px 9px rgba(0, 0, 0, 0.1);
  }
}
/* | */
/* | */
@media screen and (max-width: 480px) {
  .jotform-form {
    padding: 10px 0;
  }
}
/* | */
/* | */
@media screen and (min-width: 480px) and (max-width: 768px) {
  .jotform-form {
    padding: 30px 0;
  }
}
/* | */
/* | */
@media screen and (min-width: 480px) and (max-width: 649px) {
  .jotform-form {
    padding: 30px 0;
  }
}
/* | */
/* | */
@media screen and (min-width: 768px) {
  .jotform-form {
    padding: 60px 0;
  }
}
/* | */
/* | */
@media screen and (max-width: 649px) {
  .jotform-form {
    padding: 12px;
  }
}
/* | */
.supernova .form-all,
.form-all {
  background-color: rgba(255, 255, 255, 0.93);
  border: 1px solid transparent;
}
.form-header-group {
  border-color: rgba(230, 230, 230, 0.93);
}
.form-matrix-table tr {
  border-color: rgba(230, 230, 230, 0.93);
}
.form-matrix-table tr:nth-child(2n) {
  background-color: rgba(242, 242, 242, 0.93);
}
.form-all {
  color: #555555;
}
.form-header-group .form-header {
  color: #555555;
}
.form-header-group .form-subHeader {
  color: #6f6f6f;
}
.form-sub-label {
  color: #6f6f6f;
}
.form-label-top,
.form-label-left,
.form-label-right,
.form-html {
  color: #555555;
}
.form-checkbox-item label,
.form-radio-item label {
  color: #6f6f6f;
}
.form-line.form-line-active {
  -webkit-transition-property: all;
  -moz-transition-property: all;
  -ms-transition-property: all;
  -o-transition-property: all;
  transition-property: all;
  -webkit-transition-duration: 0.3s;
  -moz-transition-duration: 0.3s;
  -ms-transition-duration: 0.3s;
  -o-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease;
  -moz-transition-timing-function: ease;
  -ms-transition-timing-function: ease;
  -o-transition-timing-function: ease;
  transition-timing-function: ease;
  background-color: rgba(255, 251, 234, 0);
}
/* omer */
.form-radio-item,
.form-checkbox-item {
  padding-bottom: 4px !important;
}
.form-radio-item:last-child,
.form-checkbox-item:last-child {
  padding-bottom: 0;
}
/* omer */
.form-single-column .form-checkbox-item,
.form-single-column .form-radio-item {
  width: 100%;
}
.form-radio-item:not(#foo) {
  margin-bottom: 0;
  position: relative;
}
.form-radio-item:not(#foo) input[type="checkbox"],
.form-radio-item:not(#foo) input[type="radio"] {
  display: none;
}
.form-radio-item:not(#foo) .form-radio-other,
.form-radio-item:not(#foo) .form-checkbox-other {
  display: inline-block !important;
  margin-left: 7px;
  margin-right: 3px;
  margin-top: 4px;
}
.form-radio-item:not(#foo) .form-checkbox-other-input,
.form-radio-item:not(#foo) .form-radio-other-input {
  margin: 0;
}
.form-radio-item:not(#foo) label {
  line-height: 18px;
  margin-left: 0;
  float: left;
  text-indent: 27px;
}
.form-radio-item:not(#foo) label:before {
  content: '';
  position: absolute;
  display: inline-block;
  vertical-align: baseline;
  margin-right: 4px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  left: 4px;
  width: 18px;
  height: 18px;
  cursor: pointer;
}
.form-radio-item:not(#foo) label:after {
  content: '';
  position: absolute;
  z-index: 10;
  display: inline-block;
  opacity: 0;
  top: 5px;
  left: 9px;
  width: 8px;
  height: 8px;
}
.form-radio-item:not(#foo) input:checked + label:after {
  opacity: 1;
}
.form-radio-item:not(#foo) input[type="checkbox"],
.form-radio-item:not(#foo) input[type="radio"] {
  display: none;
}
.form-radio-item:not(#foo) .form-radio-other,
.form-radio-item:not(#foo) .form-checkbox-other {
  display: inline-block !important;
  margin-left: 7px;
  margin-right: 3px;
  margin-top: 4px;
}
.form-radio-item:not(#foo) .form-checkbox-other-input,
.form-radio-item:not(#foo) .form-radio-other-input {
  margin: 0;
}
.form-radio-item:not(#foo) label {
  line-height: 24px;
  margin-left: 0;
  float: left;
  text-indent: 33px;
}
.form-radio-item:not(#foo) label:before {
  content: '';
  position: absolute;
  display: inline-block;
  vertical-align: baseline;
  margin-right: 4px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  left: 4px;
  width: 24px;
  height: 24px;
  cursor: pointer;
}
.form-radio-item:not(#foo) label:after {
  content: '';
  position: absolute;
  z-index: 10;
  display: inline-block;
  opacity: 0;
  top: 7px;
  left: 11px;
  width: 10px;
  height: 10px;
}
.form-radio-item:not(#foo) input:checked + label:after {
  opacity: 1;
}
.form-radio-item:not(#foo) label:before {
  border: 2px solid #878787;
}
.form-radio-item:not(#foo) label:after {
  background-color: #878787;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  cursor: pointer;
}
.form-checkbox-item:not(#foo) {
  margin-bottom: 0;
  position: relative;
}
.form-checkbox-item:not(#foo) input[type="checkbox"],
.form-checkbox-item:not(#foo) input[type="radio"] {
  display: none;
}
.form-checkbox-item:not(#foo) .form-radio-other,
.form-checkbox-item:not(#foo) .form-checkbox-other {
  display: inline-block !important;
  margin-left: 7px;
  margin-right: 3px;
  margin-top: 4px;
}
.form-checkbox-item:not(#foo) .form-checkbox-other-input,
.form-checkbox-item:not(#foo) .form-radio-other-input {
  margin: 0;
}
.form-checkbox-item:not(#foo) label {
  line-height: 18px;
  margin-left: 0;
  float: left;
  text-indent: 27px;
}
.form-checkbox-item:not(#foo) label:before {
  content: '';
  position: absolute;
  display: inline-block;
  vertical-align: baseline;
  margin-right: 4px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  left: 4px;
  width: 18px;
  height: 18px;
  cursor: pointer;
}
.form-checkbox-item:not(#foo) label:after {
  content: '';
  position: absolute;
  z-index: 10;
  display: inline-block;
  opacity: 0;
  top: 8px;
  left: 9px;
  width: 3px;
  height: 3px;
}
.form-checkbox-item:not(#foo) input:checked + label:after {
  opacity: 1;
}
.form-checkbox-item:not(#foo) label:before {
  border: 2px solid #878787;
}
.form-checkbox-item:not(#foo) label:after {
  background-color: #878787;
  box-shadow: 0 2px 0 0 #878787, 2px 2px 0 0 #878787, 4px 2px 0 0 #878787, 6px 2px 0 0 #878787;
  -moz-transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  -o-transform: rotate(-45deg);
  -ms-transform: rotate(-45deg);
  transform: rotate(-45deg);
}
.form-checkbox-item:not(#foo) input[type="checkbox"],
.form-checkbox-item:not(#foo) input[type="radio"] {
  display: none;
}
.form-checkbox-item:not(#foo) .form-radio-other,
.form-checkbox-item:not(#foo) .form-checkbox-other {
  display: inline-block !important;
  margin-left: 7px;
  margin-right: 3px;
  margin-top: 4px;
}
.form-checkbox-item:not(#foo) .form-checkbox-other-input,
.form-checkbox-item:not(#foo) .form-radio-other-input {
  margin: 0;
}
.form-checkbox-item:not(#foo) label {
  line-height: 24px;
  margin-left: 0;
  float: left;
  text-indent: 33px;
}
.form-checkbox-item:not(#foo) label:before {
  content: '';
  position: absolute;
  display: inline-block;
  vertical-align: baseline;
  margin-right: 4px;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  left: 4px;
  width: 24px;
  height: 24px;
  cursor: pointer;
}
.form-checkbox-item:not(#foo) label:after {
  content: '';
  position: absolute;
  z-index: 10;
  display: inline-block;
  opacity: 0;
  top: 11px;
  left: 10px;
  width: 4px;
  height: 4px;
}
.form-checkbox-item:not(#foo) input:checked + label:after {
  opacity: 1;
}
.form-checkbox-item:not(#foo) label:after {
  background-color: #878787;
  box-shadow: 0 3px 0 0 #878787, 3px 3px 0 0 #878787, 6px 3px 0 0 #878787, 8px 3px 0 0 #878787;
  -moz-transform: rotate(-45deg);
  -webkit-transform: rotate(-45deg);
  -o-transform: rotate(-45deg);
  -ms-transform: rotate(-45deg);
  transform: rotate(-45deg);
}
.supernova {
  height: 100%;
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
  background-attachment: fixed;
  background-size: auto;
  background-size: cover;
}
.supernova {
  background-image: none;
  background-image: url("../../image/1.jpg");
}
#stage {
  background-image: none;
  background-image: url("../../image/1.jpg");
}
/* | */
.form-all {
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
}
.form-header-group {
  background-repeat: no-repeat;
  background-attachment: scroll;
  background-position: center top;
}
.form-line {
  margin-top: 6px;
  margin-bottom: 6px;
}
.form-line {
  padding: 12px 36px;
}
.form-all .form-submit-button,
.form-all .form-submit-reset,
.form-all .form-submit-print {
  -webkit-border-radius: 100px;
  -moz-border-radius: 100px;
  border-radius: 100px;
}
.form-all .form-sub-label {
  margin-left: 3px;
}
.form-all {
  -webkit-border-radius: 6px;
  -moz-border-radius: 6px;
  border-radius: 6px;
}
.form-section:first-child {
  -webkit-border-radius: 6px 6px 0 0;
  -moz-border-radius: 6px 6px 0 0;
  border-radius: 6px 6px 0 0;
}
.form-section:last-child {
  -webkit-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
  border-radius: 0 0 6px 6px;
}
.form-all .qq-upload-button,
.form-all .form-submit-button,
.form-all .form-submit-reset,
.form-all .form-submit-print {
  font-size: 1em;
  padding: 9px 15px;
  font-family: "Lucida Grande", sans-serif;
  font-size: 16px;
  font-weight: normal;
}
.form-all .form-pagebreak-back,
.form-all .form-pagebreak-next {
  font-size: 1em;
  padding: 9px 15px;
  font-family: "Lucida Grande", sans-serif;
  font-size: 14px;
  font-weight: normal;
}
/*
& when ( @buttonFontType = google ) {
	@import (css) "@{buttonFontLink}";
}
*/
h2.form-header {
  line-height: 1.618em;
  font-size: 1.714em;
}
h2 ~ .form-subHeader {
  line-height: 1.5em;
  font-size: 1.071em;
}
    .form-header-group {
        text-align: left;
    }
    /*.form-dropdown,
.form-radio-item,
.form-checkbox-item,
.form-radio-other-input,
.form-checkbox-other-input,*/
.form-captcha input,
.form-spinner input,
.form-error-message {
  padding: 4px 3px 2px 3px;
}
.form-header-group {
  font-family: "Lucida Grande", sans-serif;
}
.form-section {
  padding: 0px 0px 0px 0px;
}
.form-header-group {
  margin: 12px 0px 12px 0px;
}
.form-header-group {
  padding: 24px 36px 24px 36px;
}
.form-textbox,
.form-textarea {
  padding: 4px 3px 2px 3px;
}
.form-textbox,
.form-textarea,
.form-radio-other-input,
.form-checkbox-other-input,
.form-captcha input,
.form-spinner input {
  background-color: rgba(255, 255, 255, 0.49);
}
.form-dropdown {
  border-color: #cccccc;
  -webkit-appearance: menulist-button;
  background-color: rgba(248, 248, 248, 0.58);
}
[data-type="control_dropdown"] .form-input,
[data-type="control_dropdown"] .form-input-wide {
  width: 150px;
}
.form-label {
  font-family: "Lucida Grande", sans-serif;
}
li[data-type="control_image"] div {
  text-align: left;
}
li[data-type="control_image"] img {
  border: none;
  border-width: 0px !important;
  border-style: solid !important;
  border-color: false !important;
}
.form-line-column {
  width: auto;
}
.form-line-error {
  background-color: rgba(255, 255, 255, 0.93);
  -webkit-box-shadow: inset 0px 3px 11px -7px #ff3200;
  -moz-box-shadow: inset 0px 3px 11px -7px #ff3200;
  box-shadow: inset 0px 3px 11px -7px #ff3200;
}
.form-line-error input:not(#coupon-input),
.form-line-error textarea,
.form-line-error .form-validation-error {
  -webkit-transition-property: none;
  -moz-transition-property: none;
  -ms-transition-property: none;
  -o-transition-property: none;
  transition-property: none;
  -webkit-transition-duration: 0.3s;
  -moz-transition-duration: 0.3s;
  -ms-transition-duration: 0.3s;
  -o-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease;
  -moz-transition-timing-function: ease;
  -ms-transition-timing-function: ease;
  -o-transition-timing-function: ease;
  transition-timing-function: ease;
  border: 1px solid #fff4f4;
  -moz-box-shadow: 0 0 3px #fff4f4;
  -webkit-box-shadow: 0 0 3px #fff4f4;
  box-shadow: 0 0 3px #fff4f4;
}
.form-line-error .form-error-message {
  margin: 0;
  position: absolute;
  color: #fff;
  display: inline-block;
  right: 0;
  font-size: 10px;
  position: absolute!important;
  box-shadow: none;
  top: 0px;
  line-height: 20px;
  color: #FFF;
  background: #ff3200;
  padding: 0px 5px;
  bottom: auto;
  min-width: 105px;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
}
.form-line-error .form-error-message img,
.form-line-error .form-error-message .form-error-arrow {
  display: none;
}
.ie-8 .form-all {
  margin-top: auto;
  margin-top: initial;
}
.ie-8 .form-all:before {
  display: none;
}
/* | */
@media screen and (max-width: 480px), screen and (max-device-width: 768px) and (orientation: portrait), screen and (max-device-width: 415px) and (orientation: landscape) {
  .testOne {
    letter-spacing: 0;
  }
  .jotform-form {
    padding: 12px 0 0 0;
  }
  .form-all {
    border: 0;
    width: 94%!important;
    max-width: initial;
  }
  .form-sub-label-container {
    width: 100%;
    margin: 0;
    margin-right: 0;
    float: left;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  span.form-sub-label-container + span.form-sub-label-container {
    margin-right: 0;
  }
  .form-sub-label {
    white-space: normal;
  }
  .form-address-table td,
  .form-address-table th {
    padding: 0 1px 10px;
  }
  .form-submit-button,
  .form-submit-print,
  .form-submit-reset {
    width: 100%;
    margin-left: 0!important;
  }
  div[id*=at_] {
    font-size: 14px;
    font-weight: 700;
    height: 8px;
    margin-top: 6px;
  }
  .showAutoCalendar {
    width: 20px;
  }
  img.form-image {
    max-width: 100%;
    height: auto;
  }
  .form-matrix-row-headers {
    width: 100%;
    word-break: break-all;
    min-width: 40px;
  }
  .form-collapse-table,
  .form-header-group {
    margin: 0;
  }
  .form-collapse-table {
    height: 100%;
    display: inline-block;
    width: 100%;
  }
  .form-collapse-hidden {
    display: none !important;
  }
  .form-input {
    width: 100%;
  }
  .form-label {
    width: 100% !important;
  }
  .form-label-left,
  .form-label-right {
    display: block;
    float: none;
    text-align: left;
    width: auto!important;
  }
  .form-line,
  .form-line.form-line-column {
    padding: 2% 5%;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  input[type=text],
  input[type=email],
  input[type=tel],
  textarea {
    width: 100%;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    max-width: initial !important;
  }
  .form-dropdown,
  .form-textarea,
  .form-textbox {
    width: 100%!important;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  .form-input,
  .form-input-wide,
  .form-textarea,
  .form-textbox,
  .form-dropdown {
    max-width: initial!important;
  }
  .form-address-city,
  .form-address-line,
  .form-address-postal,
  .form-address-state,
  .form-address-table,
  .form-address-table .form-sub-label-container,
  .form-address-table select,
  .form-input {
    width: 100%;
  }
  div.form-header-group {
    padding: 24px 36px !important;
    padding-left: 5%!important;
    padding-right: 5%!important;
    margin: 0 12px 2% !important;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }
  div.form-header-group.hasImage img {
    max-width: 100%;
  }
  [data-type="control_button"] {
    margin-bottom: 0 !important;
  }
  [data-type=control_fullname] .form-sub-label-container {
    width: 48%;
  }
  [data-type=control_fullname] .form-sub-label-container:first-child {
    margin-right: 4%;
  }
  [data-type=control_phone] .form-sub-label-container {
    width: 65%;
  }
  [data-type=control_phone] .form-sub-label-container:first-child {
    width: 31%;
    margin-right: 4%;
  }
  [data-type=control_datetime] .form-sub-label-container + .form-sub-label-container,
  [data-type=control_datetime] .form-sub-label-container:first-child {
    width: 27.3%;
    margin-right: 6%;
  }
  [data-type=control_datetime] .form-sub-label-container + .form-sub-label-container + .form-sub-label-container {
    width: 33.3%;
    margin-right: 0;
  }
  [data-type=control_datetime] span + span + span > span:first-child {
    display: block;
    width: 100% !important;
  }
  [data-type=control_birthdate] .form-sub-label-container,
  [data-type=control_datetime] span + span + span > span:first-child + span + span,
  [data-type=control_time] .form-sub-label-container {
    width: 27.3%!important;
    margin-right: 6% !important;
  }
  [data-type=control_birthdate] .form-sub-label-container:last-child,
  [data-type=control_time] .form-sub-label-container:last-child {
    width: 33.3%!important;
    margin-right: 0 !important;
  }
  .form-pagebreak-back-container,
  .form-pagebreak-next-container {
    width: 50% !important;
  }
  .form-pagebreak-back,
  .form-pagebreak-next,
  .form-product-item.hover-product-item {
    width: 100%;
  }
  .form-pagebreak-back-container {
    padding: 0;
    text-align: right;
  }
  .form-pagebreak-next-container {
    padding: 0;
    text-align: left;
  }
  .form-pagebreak {
    margin: 0 auto;
  }
  .form-buttons-wrapper {
    margin: 0!important;
    margin-left: 0!important;
  }
  .form-buttons-wrapper button {
    width: 100%;
  }
  .form-buttons-wrapper .form-submit-print {
    margin: 0 !important;
  }
  table {
    width: 100%!important;
    max-width: initial!important;
  }
  table td + td {
    padding-left: 3%;
  }
  .form-checkbox-item,
  .form-radio-item {
    white-space: normal!important;
  }
  .form-checkbox-item input,
  .form-radio-item input {
    width: auto;
  }
  .form-collapse-table {
    margin: 0 5%;
    display: block;
    zoom: 1;
    width: auto;
  }
  .form-collapse-table:before,
  .form-collapse-table:after {
    display: table;
    content: '';
    line-height: 0;
  }
  .form-collapse-table:after {
    clear: both;
  }
  .fb-like-box {
    width: 98% !important;
  }
  .form-error-message {
    clear: both;
    bottom: -10px;
  }
  .date-separate,
  .phone-separate {
    display: none;
  }
  .custom-field-frame,
  .direct-embed-widgets,
  .signature-pad-wrapper {
    width: 100% !important;
  }
}
/* | */

/*PREFERENCES STYLE*/
    .form-all {
      font-family: Lucida Grande, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Lucida Grande, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Lucida Grande, sans-serif;
    }
    .form-header-group {
      font-family: Lucida Grande, sans-serif;
    }
    .form-label {
      font-family: Lucida Grande, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: inline-block;
    float: left;
    text-align: left;
  
    }
  
    .form-line {
      margin-top: 12px 36px 12px 36px px;
      margin-bottom: 12px 36px 12px 36px px;
    }
  
    .form-all {
      width: 650px;
    }
  
    .form-label.form-label-left,
    .form-label.form-label-right,
    .form-label.form-label-left.form-label-auto,
    .form-label.form-label-right.form-label-auto {
      width: 160px;
    }
  
    .form-all {
      font-size: 14px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 14px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 14px
    }
  
    .supernova .form-all, .form-all {
      background-color: rgba(255, 255, 255, 0.93);
      border: 1px solid transparent;
    }
  
    .form-all {
      color: #555;
    }
    .form-header-group .form-header {
      color: #555;
    }
    .form-header-group .form-subHeader {
      color: #555;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label {
      color: #555;
    }
    .form-sub-label {
      color: #6f6f6f;
    }
  
    .supernova {
      background-color: #f5f5f5;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: rgba(255, 255, 255, 0.49);
    }
  
      .supernova {
        height: 100%;
        background-repeat: repeat;
        background-attachment: scroll;
        background-position: center top;
      }
      .supernova {
        background-image: url("../../image/1.jpg");
      }
      #stage {
        background-image: url("../../image/1.jpg");
      }
    
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/
/*---------------------
Theme: Generic Theme
Author: Elton Cris - idarktech@jotform.com
www.jotform.com
----------------------*/
.form-all {
    -moz-box-sizing : border-box;
    -webkit-box-sizing : border-box;
    box-sizing : border-box;
}

[data-type="control_head"] {
    padding-bottom : 20px;
}

/*responsive fields*/
[data-type="control_textbox"] .form-textbox, 
[data-type="control_fullname"] .form-textbox,
[data-type="control_email"] .form-textbox,
[data-type="control_textarea"] .form-textarea, 
[data-type="control_dropdown"] .form-dropdown {
    width : 100% !important;
    max-width : none !important;
}

    .form-textbox, .form-textarea, .form-dropdown {
        max-width: none !important;
        box-shadow: none;
        outline: none;
        box-sizing: border-box;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        font-family: inherit;
        padding: 4px;
        border: solid 1px #E5E5E5;
        outline: 0;
        font: normal 13px/100% Verdana, Tahoma, sans-serif;
        background: #FFF url('bg_form.png') left top repeat-x;
        background: -webkit-gradient(linear, left top, left 25, from(#FFF), color-stop(4%, #EEE), to(#FFF));
        background: -moz-linear-gradient(top, #FFFFFF, #EEEEEE 1px, #FFFFFF 25px);
        box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -moz-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
        -webkit-box-shadow: rgba(0,0,0, 0.1) 0px 0px 8px;
    }

    .form-textarea-limit > span {
        display: block;
    }

[data-type="control_dropdown"] .form-input, 
[data-type="control_dropdown"] .form-input-wide {
    width : 100%;
}

/*input focus*/
.form-line-active input:focus, .form-line-active textarea:focus, .form-line-active select:focus {
    border-color : #C9C9C9;
    -webkit-box-shadow : rgba(0, 0, 0, 0.15) 0px 0px 8px;
}

/*reset error*/
.form-line-error {
    box-shadow : none;
}

/*input error*/
.form-line-error input:not(#coupon-input), .form-line-error textarea, .form-line-error select, .form-line-error .form-validation-error {
    border : 1px solid #e15353 !important;
    box-shadow : none !important;
}

.form-line-active {
    color : inherit !important;
}

/*responsive content -wide or shrink*/
.form-label {
    width : 35% !important;
    box-sizing : border-box;
    -webkit-box-sizing : border-box;
    -moz-box-sizing : border-box;
}

.form-label-top {
    width : 100% !important;
}

.form-line {
    box-sizing : border-box;
    -webkit-box-sizing : border-box;
    -moz-box-sizing : border-box;
    width : 100%;
}

.form-checkbox-other-input {
    width : 80% !important;
}

.form-input {
    width : 65% !important;
    max-width : none !important;
}

.form-input-wide {
    max-width : none !important;
    display : inline-block;
    width : 100%;
}

/*single fields with sublabels*/
[data-type="control_textbox"] .form-input-wide .form-sub-label-container, 
[data-type="control_fullname"] .form-input-wide .form-sub-label-container,
[data-type="control_email"] .form-input-wide .form-sub-label-container,
[data-type="control_textarea"] .form-input-wide .form-sub-label-container, 
[data-type="control_dropdown"] .form-input-wide .form-sub-label-container,
[data-type="control_textbox"] .form-input .form-sub-label-container, 
[data-type="control_fullname"] .form-input .form-sub-label-container,
[data-type="control_email"] .form-input .form-sub-label-container,
[data-type="control_textarea"] .form-input .form-sub-label-container, 
[data-type="control_dropdown"] .form-input .form-sub-label-container {
    width : 100%;
    max-width : none !important;
}

[data-type="control_dropdown"] .form-input-wide {
    width : 100%;
}

/*responsive full name*/
[data-type="control_fullname"] .form-sub-label-container {
    width : 50% !important;
    margin : 0;
    float : left;
    box-sizing : border-box;
}

[data-type="control_fullname"] .form-label + div .form-sub-label-container {
    display : inline-block;
    padding-right : 5px;
}

[data-type="control_fullname"] .form-label + div .form-sub-label-container + .form-sub-label-container {
    margin-right : 0;
    padding-right : 0;
    padding-left : 5px;
}

[data-type="control_fullname"] .form-label + div .form-sub-label-container + .form-sub-label-container {
    margin-right : 0;
    padding-right : 0;
    padding-left : 5px;
}

[data-type="control_fullname"] .form-label + div .form-sub-label-container + .form-sub-label-container + .form-sub-label-container {
    padding-left : 0;
    padding-right : 5px;
}

[data-type="control_fullname"] .form-label + div .form-sub-label-container + .form-sub-label-container + .form-sub-label-container + .form-sub-label-container {
    padding-left : 5px;
    padding-right : 0;
}

[data-type="control_fullname"] .form-label + div .form-sub-label-container + .form-sub-label-container  + .form-sub-label-container + .form-sub-label-container + .form-sub-label-container {
    padding-right : 5px;
    padding-left : 0;
}

#sublabel_prefix, #sublabel_first, #sublabel_middle {
    /*margin-bottom : 10px;
    */;
}

/*remove sepatators on date and phone*/
.phone-separate, .date-separate {
    display : none;
}

/*responsive phone fields*/
[data-type="control_phone"] input[name$="[area]"] {
    width : 100%;
}

[data-type="control_phone"] input[name$="[phone]"] {
    width : 100%;
}

[data-type="control_phone"] input[name$="[full]"] {
    width : 100%;
}

[data-type="control_phone"] .form-sub-label-container {
    width : 40%;
    float : left;
    box-sizing : border-box;
    margin-right : 0;
    padding-right : 12px;
}

/* responsive date time field */
[data-type="control_datetime"] .form-textbox,
[data-type="control_datetime"] .form-dropdown {
    width : 100%;
}

[data-type="control_datetime"] .form-sub-label-container {
    width : 28%;
    padding-left : 4px;
    box-sizing : border-box;
    margin-right : 0;
}

[data-type="control_datetime"] .form-sub-label-container:first-child {
    padding-left : 0;
}

[data-type="control_datetime"] .form-sub-label-container:first-child + .form-sub-label-container + .form-sub-label-container {
    padding-right : 0;
}

[data-type="control_datetime"] .form-sub-label-container:last-child {
    width : auto !important;
}

.allowTime-container .form-sub-label-container:last-child {
    width : 20% !important;
}

span.allowTime-container {
    width : 80%;
    padding-top : 14px;
}

.allowTime-container span.form-sub-label-container {
    width : 35%;
}

span.allowTime-container .form-dropdown {
    width : 100%;
}

span.allowTime-container > span:first-child {
    display : none;
}

span.allowTime-container > span:first-child + span {
    padding-left : 0;
}

.showAutoCalendar + label {
    display : none;
}

span.allowTime-container + span {
    padding-top : 14px;
}

/*calendar lite mode*/
[data-type="control_datetime"] div[style*="none"] + .form-sub-label-container {
    width : 84%;
    padding-left : 0;
}

/*responsive phone field*/
[data-type="control_phone"] .form-sub-label-container + .form-sub-label-container {
    width : 60%;
    margin-right : 0;
    padding-right : 0;
    padding-left : 12px;
}

/*responsive full address fields*/
.form-address-city, .form-address-line, .form-address-postal, 
.form-address-state, .form-address-table, 
.form-address-table .form-sub-label-container, .form-address-table select {
    width : 100%;
    max-width : 100%;
}

[data-type="control_address"] input[name$="[city]"],
[data-type="control_address"] input[name$="[postal]"] {
    width : 90% !important;
}

[data-type="control_address"] input[name$="[area]"] {
    width : 60%;
}

/*reset submit button*/
[data-type="control_button"] {
    background : transparent !important;
}

.form-submit-button,
.form-submit-reset,
.form-submit-print {
    outline : none;
}

/*remove other checkbox*/
.form-checkbox-other, 
.form-radio-other {
    visibility : hidden !important;
}

/*shruken fields*/
.form-line-column {
    width : 50%;
}

.form-line-column .form-label-top {
    width : 100% !important;
}

/*fix form builder display*/
div#stage.form-all {
    max-width : none !important;
    margin-right : 0;
}

div#stage .form-input {
    width : 64% !important;
}

/*remove first pagebreak back button*/
.form-all .page-section:first-child .form-pagebreak .form-pagebreak-back-container {
    display : none !important;
}

/* responsive pagebreak */
.form-pagebreak-back-container {
    width : 50% !important;
    text-align : left;
    box-sizing : border-box;
    -webkit-box-sizing : border-box;
    float : left;
}

.form-pagebreak-next-container {
    width : 50% !important;
    text-align : right;
    box-sizing : border-box;
    -webkit-box-sizing : border-box;
    float : left;
}

/* radio-checkbox button make border 1px */
.form-radio-item:not(#foo) label:after,
.form-radio-item:not(#foo) label:before {
    border-radius : 50%;
}

.form-checkbox-item:not(#foo) label:after,
.form-checkbox-item:not(#foo) label:before {
    border-radius : 0;
}

.form-radio-item:not(#foo) label:before,
.form-checkbox-item:not(#foo) label:before {
    border-width : 1px;
}

/*responsive credit card on payment fields*/
table td + td {
    padding-left : 0;
}

.form-address-table {
    width : 100%;
}

[data-type="control_stripe"] .form-address-table,
[data-type="control_stripe"] .form-address-table .form-textbox,
[data-type="control_authnet"] .form-address-table,
[data-type="control_authnet"] .form-address-table .form-textbox,
#creditCardTable.form-address-table,
#creditCardTable.form-address-table .form-textbox {
    max-width : none;
}

[data-type="control_stripe"] .form-address-table td:last-child .form-sub-label-container,
[data-type="control_authnet"] .form-address-table td:last-child .form-sub-label-container,
#creditCardTable.form-address-table td:last-child .form-sub-label-container {
    margin-left : 0;
    white-space : normal;
}

[data-type="control_stripe"] .form-address-table td .form-sub-label-container,
[data-type="control_authnet"] .form-address-table td .form-sub-label-container,
#creditCardTable.form-address-table td .form-sub-label-container {
    width : 100%;
}

[data-type="control_stripe"] .form-address-table .form-textbox,
[data-type="control_stripe"] .form-address-table .form-dropdown,
[data-type="control_authnet"] .form-address-table .form-textbox,
[data-type="control_authnet"] .form-address-table .form-dropdown,
#creditCardTable.form-address-table .form-textbox,
#creditCardTable.form-address-table .form-dropdown {
    width : 100%;
    visibility : visible;
}

[data-type="control_stripe"] .form-address-table tbody > tr:first-child + tr td:first-child span,
[data-type="control_authnet"] .form-address-table tbody > tr:first-child + tr td:first-child span,
#creditCardTable.form-address-table tbody > tr:first-child + tr td:first-child span {
    margin : 0;
    padding-right : 6px;
    box-sizing : border-box;
    -webkit-box-sizing : border-box;
}

[data-type="control_stripe"] .form-address-table tbody > tr:first-child + tr td:first-child + td span,
[data-type="control_authnet"] .form-address-table tbody > tr:first-child + tr td:first-child + td span,
#creditCardTable.form-address-table tbody > tr:first-child + tr td:first-child + td span {
    margin : 0;
    padding-left : 6px;
    box-sizing : border-box;
    -webkit-box-sizing : border-box;
}

[data-type="control_stripe"] .form-address-table tbody > tr:first-child + tr +tr td:first-child span,
[data-type="control_stripe"] .form-address-table tbody > tr:first-child + tr +tr+tr td:first-child span,
[data-type="control_authnet"] .form-address-table tbody > tr:first-child + tr +tr td:first-child span,
[data-type="control_authnet"] .form-address-table tbody > tr:first-child + tr +tr+tr td:first-child span,
#creditCardTable.form-address-table tbody > tr:first-child + tr +tr td:first-child span,
#creditCardTable.form-address-table tbody > tr:first-child + tr +tr+tr td:first-child span {
    margin : 0;
    padding-right : 6px;
    width : 50% !important;
    visibility : hidden;
    float : left;
    box-sizing : border-box;
    -webkit-box-sizing : border-box;
}

[data-type="control_stripe"] .form-address-table tbody > tr:first-child + tr +tr td:first-child span + span,
[data-type="control_stripe"] .form-address-table tbody > tr:first-child + tr +tr+tr td:first-child span + span,
[data-type="control_authnet"] .form-address-table tbody > tr:first-child + tr +tr td:first-child span + span,
[data-type="control_authnet"] .form-address-table tbody > tr:first-child + tr +tr+tr td:first-child span + span,
#creditCardTable.form-address-table tbody > tr:first-child + tr +tr td:first-child span + span,
#creditCardTable.form-address-table tbody > tr:first-child + tr +tr+tr td:first-child span + span {
    margin : 0;
    padding-top : 0 !important;
    padding-right : 0;
    padding-left : 6px;
    width : 50% !important;
    box-sizing : border-box;
    -webkit-box-sizing : border-box;
}

.cc_ccv {
    width : 100% !important;
}

[data-type="control_stripe"] .form-address-table .form-sub-label,
[data-type="control_authnet"] .form-address-table .form-sub-label,
#creditCardTable.form-address-table .form-sub-label {
    visibility : visible;
}

/*cc fix city state, country */
[data-type="control_stripe"] .form-address-table td[width="50%"]>span:first-child,
[data-type="control_authnet"] .form-address-table td[width="50%"]>span:first-child,
#creditCardTable.form-address-table td[width="50%"]>span:first-child {
    box-sizing : border-box;
    padding-right : 7px;
}

[data-type="control_stripe"] .form-address-table td[width="50%"] + td >span:first-child,
[data-type="control_authnet"] .form-address-table td[width="50%"] + td >span:first-child,
#creditCardTable.form-address-table td[width="50%"] + td >span:first-child {
    box-sizing : border-box;
    padding-left : 7px;
}

[data-type="control_stripe"] .form-address-table td[width="50%"] + td[width="50%"] >span:first-child,
[data-type="control_authnet"] .form-address-table td[width="50%"] + td[width="50%"] >span:first-child,
#creditCardTable.form-address-table td[width="50%"] + td[width="50%"] >span:first-child {
    box-sizing : border-box;
    padding-right : 0;
}

.hover-product-item:hover {
    color : inherit;
}

/*fix for braintree cc styling*/
[data-type="control_braintree"] .form-sub-label-container {
    width : 100% !important;
    padding : 4px;
    box-sizing : border-box;
}

[data-type="control_braintree"] .form-textbox {
    width : 100%;
}

.braintree-hosted-fields {
    width : 100% !important;
    box-sizing : border-box;
    min-height : 28px;
}

/*remove bottom spacing on CC section*/
#creditCardTable.form-address-table tbody tr + tr + tr td,
[data-type="control_stripe"] .form-address-table tbody tr + tr + tr td,
[data-type="control_authnet"] .form-address-table tbody tr + tr + tr td {
    padding-bottom : 0;
}

@media screen and (max-width:768px){
    .form-all {
        margin : 0 auto !important;
        width : 100% !important;
    }

    [data-type=control_fullname] .form-sub-label-container:first-child {
        margin-right : 0;
    }

}

@media screen and (max-width:480px){
    .jotform-form {
        padding : 0;
    }

    .form-input {
        width : 100% !important;
    }

    .form-label {
        width : 100% !important;
        float : none !important;
    }

    .form-line-column {
        width : 100% !important;
    }

    div.form-header-group {
        margin : 0 !important;
        padding : 24px 20px !important;
    }

    [data-type="control_datetime"] .form-sub-label-container {
        float : left;
    }

    [data-type=control_fullname] .form-sub-label-container:first-child {
        margin-right : 0;
    }

}


    /* Injected CSS Code */
</style>

<script src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.15564" type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
      setTimeout(function() {
          $('input_17').hint('ex: myname@example.com');
       }, 20);
    if(typeof $('input_18').spinner !== 'undefined') {$('input_18').spinner({ imgPath:'https://cdn.jotfor.ms/images/', width: '60', maxValue:'', minValue:'', allowNegative: false, addAmount: 1, value:'0' });}
    $('input_18').up(2).setAttribute('tabindex',0);

 JotForm.calendarMonths = ["January","February","March","April","May","June","July","August","September","October","November","December"];
 JotForm.calendarDays = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"];
 JotForm.calendarOther = {"today":"Today"};
 var languageOptions = document.querySelectorAll('#langList li'); 
 for(var langIndex = 0; langIndex < languageOptions.length; langIndex++) { 
   languageOptions[langIndex].on('click', function(e) { setTimeout(function(){ JotForm.setCalendar("22", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""}); }, 0); });
 } 
 JotForm.setCalendar("22", false, {"days":{"monday":true,"tuesday":true,"wednesday":true,"thursday":true,"friday":true,"saturday":true,"sunday":true},"future":true,"past":true,"custom":false,"ranges":false,"start":"","end":""});
 JotForm.formatDate({date:(new Date()), dateField:$("id_"+22)});
 JotForm.displayLocalTime("hour_22", "min_22", "ampm_22");
if (window.JotForm && JotForm.accessible) $('input_28').setAttribute('tabindex',0);
if (window.JotForm && JotForm.accessible) $('input_30').setAttribute('tabindex',0);
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,null,{"name":"submitForm","qid":"2","text":"Submit","type":"control_button"},null,null,null,{"name":"roomType","qid":"6","text":"Room Type","type":"control_dropdown"},null,null,null,{"name":"freePickup","qid":"10","text":"Free Pickup?","type":"control_radio"},null,null,null,{"name":"clickTo14","qid":"14","text":"Hotel Booking","type":"control_head"},null,{"name":"name","qid":"16","text":"Name","type":"control_fullname"},{"name":"email17","qid":"17","text":"E-mail","type":"control_email"},{"name":"numberOf18","qid":"18","text":"Number of Guests","type":"control_spinner"},null,{"name":"departureDate20","qid":"20","text":"Departure Date","type":"control_birthdate"},null,{"name":"arrivalDate","qid":"22","text":"Arrival Date & Time","type":"control_datetime"},null,null,null,null,null,{"name":"flightNumber28","qid":"28","text":"Flight Number","type":"control_textbox"},null,{"name":"specialRequests","qid":"30","text":"Special Requests","type":"control_textarea"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,null,{"name":"submitForm","qid":"2","text":"Submit","type":"control_button"},null,null,null,{"name":"roomType","qid":"6","text":"Room Type","type":"control_dropdown"},null,null,null,{"name":"freePickup","qid":"10","text":"Free Pickup?","type":"control_radio"},null,null,null,{"name":"clickTo14","qid":"14","text":"Hotel Booking","type":"control_head"},null,{"name":"name","qid":"16","text":"Name","type":"control_fullname"},{"name":"email17","qid":"17","text":"E-mail","type":"control_email"},{"name":"numberOf18","qid":"18","text":"Number of Guests","type":"control_spinner"},null,{"name":"departureDate20","qid":"20","text":"Departure Date","type":"control_birthdate"},null,{"name":"arrivalDate","qid":"22","text":"Arrival Date & Time","type":"control_datetime"},null,null,null,null,null,{"name":"flightNumber28","qid":"28","text":"Flight Number","type":"control_textbox"},null,{"name":"specialRequests","qid":"30","text":"Special Requests","type":"control_textarea"}]);}, 20); 
</script>




    <script>

        function good() {
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'Thank you for your reservation',
                showConfirmButton: false,
                timer: 1500
            })
        }

    </script>
     <script type="text/javascript">
         function r() {
             alert("Thank you for your reservation");
             html2canvas(document.getElementById('e'), {
                 onrendered: function (canvas) {
                     var data = canvas.toDataURL();
                     var docDefinition = {
                         content: [{
                             image: data,
                             width: 500
                         }]
                     };
                     pdfMake.createPdf(docDefinition).download("Reservation.pdf");
                     alert("Admit Card Downloading Started");
                 }
             });
         }
    </script>

</head>
<body id="e">
<form class="jotform-form"  method="post" name="form_200504401166541" id="200504401166541" accept-charset="utf-8" autocomplete="on" >
    <form runat="server">
        

  <input type="hidden" name="formID" value="200504401166541" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_14" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
              <h1 id="header_14" class="form-header" data-component="header">
                  Flight Reservation
              </h1>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_fullname" id="id_16">
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:gest_aero1ConnectionString %>" SelectCommand="SELECT [nom_aero] FROM [aeroport]"></asp:SqlDataSource>
          
        <label class="form-label form-label-left form-label-auto" id="label_16" for="first_16">
          Name
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_16" class="form-input jf-required">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container " style="vertical-align:top">

              <input type="text" id="first_16" name="q16_name[first]" class="form-textbox validate[required]" size="10" value="" data-component="first" aria-labelledby="label_16 sublabel_16_first" required="" runat="server" />
              <label class="form-sub-label" for="first_16" id="sublabel_16_first" style="min-height:13px" aria-hidden="false"> First Name </label>
            </span>
            <span class="form-sub-label-container " style="vertical-align:top">
              <input type="text" id="last_16" name="q16_name[last]" class="form-textbox validate[required]" size="15" value="" data-component="last" aria-labelledby="label_16 sublabel_16_last" required="" runat="server" />
              <label class="form-sub-label" for="last_16" id="sublabel_16_last" style="min-height:13px" aria-hidden="false"> Last Name </label>
            </span>
          </div>
        </div>
      </li>
        <li class="form-line jf-required" data-type="control_fullname" id="id_16">
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:gest_aeroConnectionString2 %>" SelectCommand="SELECT [nom_aero] FROM [aeroport]"></asp:SqlDataSource>
          
        <label class="form-label form-label-left form-label-auto" id="label_16" for="first_16">
          Numero de passport
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_16" class="form-input jf-required">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container " style="vertical-align:top">

              <input type="text" id="pass" name="q16_name[first]" class="form-textbox validate[required]" size="30" value="" data-component="first" aria-labelledby="label_16 sublabel_16_first" required="" runat="server" />
            </span>
            
          </div>
        </div>
      </li>



         <li class="form-line jf-required" data-type="control_fullname" id="id_16">

          
        <label class="form-label form-label-left form-label-auto" id="label_16" for="first_16">
          From
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_16" class="form-input jf-required">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container " style="vertical-align:top">

             <asp:DropDownList class="form-textbox validate[required]"     ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom_aero" DataValueField="nom_aero">
              </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:gest_aeroConnectionString2 %>" SelectCommand="SELECT [nom_aero] FROM [aeroport]"></asp:SqlDataSource>
              <label class="form-sub-label" for="first_16" id="sublabel_16_first" style="min-height:13px" aria-hidden="false"> From </label>
            </span>
            <span class="form-sub-label-container " style="vertical-align:top">
<asp:DropDownList class="form-textbox validate[required]"     ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom_aero" DataValueField="nom_aero"></asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:gest_aeroConnectionString2 %>" SelectCommand="SELECT [nom_aero] FROM [aeroport]"></asp:SqlDataSource>             
                <label class="form-sub-label" for="last_16" id="sublabel_16_last" style="min-height:13px" aria-hidden="false"> TO </label>
            </span>
          </div>
        </div>
      </li>
    
      <li class="form-line" data-type="control_dropdown" id="id_6">
        <label class="form-label form-label-left form-label-auto" id="label_6" for="input_6"> Class </label>
        <div id="cid_6" class="form-input">

          <select class="form-dropdown" id="input_6" name="q6_roomType" style="width:180px" data-component="dropdown" aria-labelledby="label_6" runat="server">
            <option value="">  </option>
            <option value="Economie"> Economie </option>
            <option value="business"> business </option>
            
          </select>
        </div>
      </li>
          <li class="form-line jf-required" data-type="control_email" id="id_17">
        <label class="form-label form-label-left form-label-auto" id="label_17" for="input_17">
          E-mail
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_17" class="form-input jf-required">
          <input type="email" id="input_17" name="q17_email17" runat="server" class="form-textbox validate[required, Email]" size="32" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_17" required="" />
        </div>
      </li>
     
      <li class="form-line jf-required allowTime" data-type="control_datetime" id="id_22">
        <label class="form-label form-label-left" id="label_22" for="month_22">
          Depart Date &amp; Time
          <span class="form-required">
            *
          </span>
        </label>
        <div id="cid_22" class="form-input jf-required">
          <div data-wrapper-react="true">
            <span class="form-sub-label-container " style="vertical-align:top">
              <select class="currentTime time-dropdown form-dropdown validate[required, limitDate]" id="year_" name="q22_arrivalDate[hour]" aria-labelledby="label_22 sublabel_22_hour" required="" runat="server">
                  <option selected="" value="">  </option>
                  <option value="1"> 2021 </option>
                  <option value="2"> 2020 </option>
                  <option value="3"> 2019 </option>
                  <option value="4"> 2018 </option>
                  <option value="5"> 2017 </option>
                  <option value="6"> 2016 </option>
                  <option value="7"> 2015 </option>
                  <option value="8"> 2014 </option>
                  <option value="9"> 2012 </option>
                  <option value="10"> 2011 </option>
                  
                  <option value="12"> 2010 </option>
                </select>

                <span class="date-separate" aria-hidden="true">
                 -
              </span>
              <label class="form-sub-label" for="month_22" id="sublabel_22_month" style="min-height:13px" aria-hidden="false"> Year </label>
            </span>
            <span class="form-sub-label-container " style="vertical-align:top">
           <!--   <input type="tel" class="currentDate form-textbox validate[required, limitDate]" id="day_22" name="q22_arrivalDate[day]" size="2" data-maxlength="2" value="20" required="" aria-labelledby="label_22 sublabel_22_day" />
           -->   
        <select class="currentTime time-dropdown form-dropdown validate[required, limitDate]" id="month_" name="q22_arrivalDate[hour]" aria-labelledby="label_22 sublabel_22_hour" runat="server">
                  <option selected="" value="">  </option>
                  <option value="1"> 1 </option>
                  <option value="2"> 2 </option>
                  <option value="3"> 3 </option>
                  <option value="4"> 4 </option>
                  <option value="5"> 5 </option>
                  <option value="6"> 6 </option>
                  <option value="7"> 7 </option>
                  <option value="8"> 8 </option>
                  <option value="9"> 9 </option>
                  <option value="10"> 10 </option>
                  <option value="11"> 11 </option>
                  <option value="12"> 12 </option>
                </select>

                <span class="date-separate" aria-hidden="true">
                 -
              </span>
              <label class="form-sub-label" for="day_22" id="sublabel_22_day" style="min-height:13px" aria-hidden="false"> Month </label>
            </span>
            <span class="form-sub-label-container " style="vertical-align:top">
           <!--   <input type="tel" class="form-textbox validate[required, limitDate]" id="year_22" name="q22_arrivalDate[year]" size="4" data-maxlength="4" value="2020" required="" aria-labelledby="label_22 sublabel_22_year" />
            -->
                 <select class="currentTime time-dropdown form-dropdown validate[required, limitDate]" id="day_" name="q22_arrivalDate[hour]" aria-labelledby="label_22 sublabel_22_hour" runat="server">
                  <option selected="" value="">  </option>
                  <option value="1"> 1 </option>
                  <option value="2"> 2 </option>
                  <option value="3"> 3 </option>
                  <option value="4"> 4 </option>
                  <option value="5"> 5 </option>
                  <option value="6"> 6 </option>
                  <option value="7"> 7 </option>
                  <option value="8"> 8 </option>
                  <option value="9"> 9 </option>
                  <option value="10"> 10 </option>
                  <option value="11"> 11 </option>
                  <option value="12"> 12 </option>
                  <option value="13"> 13 </option>
                  <option value="14"> 14 </option>
                  <option value="15"> 15 </option>
                  <option value="16"> 16 </option>
                  <option value="17"> 17 </option>
                  <option value="18"> 18 </option>
                  <option value="19"> 19 </option>
                  <option value="20"> 20 </option>
                  <option value="21"> 21 </option>
                  <option value="22"> 22 </option>
                  <option value="23"> 23 </option>
                  <option value="24"> 24 </option>
                  <option value="25"> 25 </option>
                  <option value="26"> 26 </option>
                  <option value="27"> 27 </option>
                  <option value="28"> 28 </option>
                  <option value="29"> 29 </option>
                    <option value="30"> 30 </option>
                  <option value="31"> 31 </option>
                </select>

                <label class="form-sub-label" for="year_22" id="sublabel_22_year" style="min-height:13px" aria-hidden="false"> Day </label>
            </span>
            <span style="white-space:nowrap;display:inline-block" class="allowTime-container">
              <span class="form-sub-label-container " style="vertical-align:top">
                <div id="at_22">
                  at
                </div>
              </span>
              <span class="form-sub-label-container " style="vertical-align:top">
                <select class="currentTime time-dropdown form-dropdown validate[required, limitDate]" id="hour_22" name="q22_arrivalDate[hour]" aria-labelledby="label_22 sublabel_22_hour" runat="server">
                  <option>  </option>
                  <option value="1"> 1 </option>
                  <option value="2"> 2 </option>
                  <option value="3"> 3 </option>
                  <option value="4"> 4 </option>
                  <option value="5"> 5 </option>
                  <option value="6"> 6 </option>
                  <option value="7"> 7 </option>
                  <option value="8"> 8 </option>
                  <option value="9"> 9 </option>
                  <option value="10"> 10 </option>
                  <option selected="" value=""> </option>
                  <option value="12"> 12 </option>
                </select>
                <span class="date-separate" aria-hidden="true">
                   :
                </span>
                <label class="form-sub-label" for="hour_22" id="sublabel_22_hour" style="min-height:13px" aria-hidden="false"> Hour </label>
              </span>
              <span class="form-sub-label-container " style="vertical-align:top">
                <select class="time-dropdown form-dropdown validate[required, limitDate]" id="min_22" name="q22_arrivalDate[min]" aria-labelledby="label_22 sublabel_22_minutes" runat="server">
                  <option>  </option>
                  <option selected="" value="00"> 00 </option>
                  <option value="10"> 10 </option>
                  <option value="20"> 20 </option>
                  <option value="30"> 30 </option>
                  <option value="40"> 40 </option>
                  <option value="50"> 50 </option>
                </select>
                <label class="form-sub-label" for="min_22" id="sublabel_22_minutes" style="min-height:13px" aria-hidden="false"> Minutes </label>
              </span>
              <span class="form-sub-label-container " style="vertical-align:top">
                <select class="time-dropdown form-dropdown validate[required, limitDate]" id="ampm_22" name="q22_arrivalDate[ampm]" aria-labelledby="label_22 sublabel_22_ampm">
                  <option selected="" value="AM"> AM </option>
                  <option value="PM"> PM </option>
                </select>
                <label class="form-sub-label" for="ampm_22" id="sublabel_22_ampm" style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px;white-space:nowrap" aria-hidden="false"> AM/PM Option </label>
              </span>
            </span>
            <span class="form-sub-label-container " style="vertical-align:top">
              <label class="form-sub-label" for="input_22_pick" style="border:0;clip:rect(0 0 0 0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px;white-space:nowrap" aria-hidden="true"> Date Picker Icon </label>
            </span>
          </div>
        </div>
      </li>
     
      
     
      <li class="form-line" data-type="control_textarea" id="id_30">
        <label class="form-label form-label-left form-label-auto" id="label_30" for="input_30"> Special Requests </label>
        <div id="cid_30" class="form-input">
          <textarea id="input_30" class="form-textarea" name="q30_specialRequests" cols="40" rows="10" data-component="textarea" aria-labelledby="label_30" runat="server"></textarea>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div style="text-align:center" data-align="center" class="form-buttons-wrapper ">
            <asp:Button ID="Button1" runat="server" type="submit" class="form-submit-button" data-component="button" data-content="" Text="submit" OnClick="Button1_Click" OnClientClick="r()" />
             <input type="button" id="btnExport" value="Export" onclick="Export()" class="form-submit-button" />
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
  <script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
  <input type="hidden" id="simple_spc" name="simple_spc" value="200504401166541" />
  <script type="text/javascript">
  document.getElementById("si" + "mple" + "_spc").value = "200504401166541-200504401166541";
  </script>
  <div class="formFooter-heightMask">
  </div>
   <script type="text/javascript">
       function r() {
           alert("Thank you for your reservation");
           html2canvas(document.getElementById('e'), {
               onrendered: function (canvas) {
                   var data = canvas.toDataURL();
                   var docDefinition = {
                       content: [{
                           image: data,
                           width: 500
                       }]
                   };
                   pdfMake.createPdf(docDefinition).download("Reservation.pdf");
                   alert("Admit Card Downloading Started");
               }
           });
       }
    </script>

</form></body>
</html>
<script type="text/javascript">JotForm.ownerView=true;</script>