/// <reference path="jquery-1.8.0.min.js"/>
/// <reference path="css-tools.js"/>
var headerOpened, footerOpened, daftarKplOpened,
    cssContentBoxNormal, cssNailHeaderNormal,
    cssNailFooterNormal, cssLogoNormal, cssMenuBoxNormal,
    cssLeftDaftarKapalBoxNormal , cssArrowDaftarKapalNormal;

var cssContentBoxTopHidden = { 'top': '0px' }
var cssContentBoxBottomHidden = { 'bottom': '0px' }
var cssZeroWidth = { 'width': '0px' }
var cssZeroHeight = { 'height': '0px' }
var cssLeftDaftarKapalBoxHidden = {'height' : '50px'}
var cssArrowDaftarKapalHidden = { 
    '-webkit-transform': 'rotate(180deg)',
    '-moz-transform': 'rotate(180deg)'
 }

 $(document).ready(function () {
     headerOpened = true; footerOpened = true; daftarKplOpened = true;
     cssContentBoxNormal = css($("#contentBox"));
     cssNailHeaderNormal = css($("#nailHeader"));
     cssNailFooterNormal = css($("#nailFooter"));
     cssLogoNormal = css($("#logo"));
     cssMenuBoxNormal = css($("#menuBox"));
     cssLeftDaftarKapalBoxNormal = css($("#leftDaftarKapalBox"));
     cssArrowDaftarKapalNormal = css($("#arrowDaftarKapal"));

     $("#nailHeader").click(function () {
         if (headerOpened) {
             $("#contentBox").css(cssContentBoxTopHidden); $("#nailHeader").css(cssContentBoxTopHidden);
             $("#logo").css(cssZeroWidth); $("#menuBox").css(cssZeroWidth);
             headerOpened = false;
         }
         else {
             SetHeaderFooterContentNormal();
         }
     });

     $("#nailFooter").click(function () {
         if (footerOpened) {
             $("#contentBox").css(cssContentBoxBottomHidden); $("#nailFooter").css(cssContentBoxBottomHidden);
             footerOpened = false;
         }
         else {
             SetHeaderFooterContentNormal();
         }
     });

     $("#cmdResetKapal").click(function (e) {
         ResetTextFilter();
         $("#txtNama").focus();
         e.preventDefault();
     });

     $("#arrowDaftarKapal").click(function (e) {
         if (daftarKplOpened) {
             $("#entryFilterBox").hide();
             $("#arrowDaftarKapal").css(cssArrowDaftarKapalHidden);
             daftarKplOpened = false;
         } else {
             $("#entryFilterBox").show();
             $("#leftDaftarKapalBox").css(cssLeftDaftarKapalBoxNormal);
             $("#arrowDaftarKapal").css(cssArrowDaftarKapalNormal);
             daftarKplOpened = true;
         }
     });

 });

function SetHeaderFooterContentNormal() {
    $("#contentBox").css(cssContentBoxNormal);
    $("#nailHeader").css(cssNailHeaderNormal);
    $("#nailFooter").css(cssNailFooterNormal);
    $("#logo").css(cssLogoNormal);
    $("#menuBox").css(cssMenuBoxNormal);
    headerOpened = true; footerOpened = true;
}

function ResetTextFilter() {
    $("#txtNama").val("");
    $("#txtMMSI").val("");
    $("#txtCallSign").val("");
    $("#txtBendera").val("");
    $("#txtAgen").val("");
}

