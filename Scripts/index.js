/// <reference path="jquery-1.8.0.min.js"/>
/// <reference path="css-tools.js"/>
var footerOpened, cssContentBoxNormal, cssNailHeaderNormal, cssLogoNormal, cssMenuBoxNormal;

var cssContentBoxTopHidden = { 'top': '0px' }
var cssZeroWidth = { 'width': '0px' }

$(document).ready(function () {
    footerOpened = true;
    cssContentBoxNormal = css($("#contentBox"));
    cssNailHeaderNormal = css($("#nailHeader"));
    cssLogoNormal = css($("#logo"));
    cssMenuBoxNormal = css($("#menuBox"));

    $("#nailHeader").click(function () {
        if (footerOpened) {
            $("#contentBox").css(cssContentBoxTopHidden);$("#nailHeader").css(cssContentBoxTopHidden);
            $("#logo").css(cssZeroWidth); $("#menuBox").css(cssZeroWidth);
            footerOpened = false;
        }
        else {
            $("#contentBox").css(cssContentBoxNormal);
            $("#nailHeader").css(cssNailHeaderNormal);
            $("#logo").css(cssLogoNormal);
            $("#menuBox").css(cssMenuBoxNormal);
            footerOpened = true;
        }
    });
});