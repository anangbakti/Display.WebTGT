/// <reference path="jquery-1.8.0.min.js"/>
/// <reference path="css-tools.js"/>
var headerOpened, footerOpened,
    cssContentBoxNormal, cssNailHeaderNormal,
    cssNailFooterNormal, cssLogoNormal, cssMenuBoxNormal;

var cssContentBoxTopHidden = { 'top': '0px' }
var cssContentBoxBottomHidden = { 'bottom': '0px' }
var cssZeroWidth = { 'width': '0px' }

$(document).ready(function () {
    headerOpened = true; footerOpened = true;
    cssContentBoxNormal = css($("#contentBox"));
    cssNailHeaderNormal = css($("#nailHeader"));
    cssNailFooterNormal = css($("#nailFooter"));
    cssLogoNormal = css($("#logo"));
    cssMenuBoxNormal = css($("#menuBox"));

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
        $("#txtNama").val("");
        $("#txtMMSI").val("");
        $("#txtCallSign").val("");
        $("#txtBendera").val("");
        $("#txtAgen").val("");
        $("#txtNama").focus();
        e.preventDefault();
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

