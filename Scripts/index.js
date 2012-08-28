/// <reference path="jquery-1.8.0.min.js"/>
/// <reference path="css-tools.js"/>
var footerOpened, cssContentBoxNormal;

var cssContentBoxTopHidden= {'top': '0px'}

$(document).ready(function () {
    footerOpened = true;
    cssContentBoxNormal = css($("#contentBox"));

    $("#nailHeader").click(function () {
        if (footerOpened) {
            $("#contentBox").css(cssContentBoxTopHidden);
            footerOpened = false;
        }
        else {
            $("#contentBox").css(cssContentBoxNormal);
            footerOpened = true;
        }
    });
});