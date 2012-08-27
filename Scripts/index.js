/// <reference path="jquery-1.8.0.min.js"/>
var footerOpened;

var cssContentBoxNormal = {
    'position': 'fixed',
    'top': '45px',
    'left': '0',
    'right': '0',
    'bottom': '20px',
    'overflow' : 'hidden'
}

var cssContentBoxTopHidden= {
    'top': '0px'
}

$(document).ready(function () {
    footerOpened = true;

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