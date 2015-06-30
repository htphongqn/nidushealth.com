function MyAccess() {
    var eventTable = null;
    var scripts = document.getElementsByTagName("script");
    var src = scripts[scripts.length - 1].src;
    if (src.indexOf(':') == -1) {
        // relative path, find full path
        var doc = document.location + '';
        var tmp = doc.substring(0, doc.lastIndexOf('/'));
        src = tmp + '/' + src;
    }
    MyAccess.base = src.substring(0, src.indexOf('/myaccess.js'));
    //var base = 'https://secure17.floridahospital.org/MyAccessDev/api';
    MyAccess.service_path = MyAccess.base + '/clientService.svc/ajax';
}

MyAccess.setCookie = function (c_name, value, path, exdays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var c_value = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
    if (path != null)
        c_value += '; path=' + path;
    document.cookie = c_name + "=" + c_value;
}

MyAccess.getCookie = function (c_name) {
    var i, x, y, ARRcookies = document.cookie.split(";");
    for (i = 0; i < ARRcookies.length; i++) {
        x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
        y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
        x = x.replace(/^\s+|\s+$/g, "");
        if (x == c_name) {
            return unescape(y);
        }
    }
}

MyAccess.deleteCookie = function (c_name) {
    MyAccess.setCookie(c_name, '', null, -1);
}

MyAccess.getURLParameter = function (name) {
    return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [, ""])[1].replace(/\+/g, '%20')) || null;
}

MyAccess.init = function (settings, onsuccess, onerror) {
    MyAccess.checkCookies(function (test) {
        if (test != true) {
            if (onerror != null)
                onerror('cookies not enabled');
        }
        else {
            var serviceurl = MyAccess.service_path + '/init';
            jQuery.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: serviceurl,
                data: { 'sessionToken': settings.sessionToken, 'channelUrl': settings.channelUrl },
                dataType: "jsonp",
                success: function (msg) {
                    if (onsuccess != null)
                        onsuccess(msg);
                },
                error: function (msg, status, error) {
                    if (onerror != null)
                        onerror(msg);
                    else
                        alert('API Error: An error occured during init: ' + msg.status);
                }
            });
        }
    });    
};

MyAccess.getLoginStatus = function (onsuccess, onerror) {
    var serviceurl = MyAccess.service_path + '/getLoginStatus';
    jQuery.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        url: serviceurl,
        data: {},
        dataType: "jsonp",
        success: function (msg) {
            if (onsuccess != null)
                onsuccess(msg);
        },
        error: function (msg) {
            if (onerror != null)
                onerror(msg);
            else
                alert('API Error: An error occured during logout: ' + msg.status);
        }
    });
};

MyAccess.login = function (onsuccess, onerror, username, password) {
    var serviceurl = MyAccess.service_path + '/login';
    jQuery.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        url: serviceurl,
        data: { 'username': username, 'password': password },
        dataType: "jsonp",
        success: function (msg) {
            if (onsuccess != null)
                onsuccess(msg);
        },
        error: function (msg) {
            if (onerror != null) {
                onerror(msg);
            }
        }
    });
};

MyAccess.logoutCallback = function (success, result, callbacks) {
    if (result.status != 'not_connected' && result.status != 'failed') {
        if (result.status = 'error') {
            alert('An error occurred during logout.  Please close all your browser windows.')
        }
        else {
            setTimeout(function () {
                MyAccess.getLoginStatus(
                    function (result) {
                        MyAccess.logoutCallback(true, result, callbacks)
                    },
                    function (result) {
                        MyAccess.logoutCallback(false, result, callbacks)
                    })
            },
                500);
        }
    }
    else {
        if (callbacks.onsuccess != null)
            callbacks.onsuccess({ status: 'success', message: 'not_connected' });
    }
};

MyAccess.logout = function (onsuccess, onerror, hidden) {
    if (hidden == true) {
        var logoutIframe = "<iframe id='MyAccess_B8ADA1EB1B434EA9ACAFC95EE3E644C9' src='" + MyAccess.base + "/logoff.aspx' style='display:none;' />";
        $('body').append(logoutIframe);
    }
    else {
        var popunder = window.open(MyAccess.base + '/logoff.aspx', '_blank', 'width=250px,height=100px');
        popunder.blur();
        window.focus();
    }

    var serviceurl = MyAccess.service_path + '/logout';
    jQuery.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        url: serviceurl,
        data: "{}",
        dataType: "jsonp",
        success: function (msg) {
            var callbacks = { onsuccess: onsuccess, onerror: onerror };
            setTimeout(function () {
                MyAccess.getLoginStatus(
                    function (result) {
                        MyAccess.logoutCallback(true, result, callbacks)
                    },
                    function (result) {
                        MyAccess.logoutCallback(false, result, callbacks)
                    })
            },
                500);
        },
        error: function (msg) {
            if (onerror != null)
                onerror(msg);
            else
                alert('API Error: An error occured during logout: ' + msg.status);
        }
    });
};

MyAccess.logoutOld = function (onsuccess, onerror) {

    var sessionTokenCookie = MyAccess.getCookie('__myaccessclientId');
    if (sessionTokenCookie != null) {
        var serviceurl = MyAccess.service_path + '/logout';
        jQuery.ajax({
            type: "GET",
            contentType: "application/json; charset=utf-8",
            url: serviceurl,
            data: "{}",
            dataType: "jsonp",
            success: function (msg) {
                if (onsuccess != null)
                    onsuccess({ status: 'success', message: 'not_connected' });
            },
            error: function (msg) {
                if (onerror != null)
                    onerror(msg);
                else
                    alert('API Error: An error occured during logout: ' + msg.status);
            }
        });
    }
    else {
        window.open(MyAccess.base + '/logoff.aspx', '_blank', 'width=100px,height=100px');
        if (onsuccess != null)
            onsuccess({ status: 'success', message: 'not_connected' });
    }
};


MyAccess.setPassword = function (onsuccess, onerror, oldpassword, newpassword) {
    if (newpassword == null) {
        var serviceurl = MyAccess.service_path + '/setpasswordfromlink';
        jQuery.ajax({
            type: "GET",
            contentType: "application/json; charset=utf-8",
            url: serviceurl,
            data: { 'password': oldpassword },
            dataType: "jsonp",
            success: function (msg) {
                if (onsuccess != null)
                    onsuccess(msg);
            },
            error: function (msg) {
                if (onerror != null)
                    onerror(msg);
                else
                    alert('API Error: An error occured during setPassword: ' + msg.status);
            }
        });
    } else {
        var serviceurl = MyAccess.service_path + '/setpassword';
        jQuery.ajax({
            type: "GET",
            contentType: "application/json; charset=utf-8",
            url: serviceurl,
            data: { 'oldpassword': oldpassword, 'newpassword': newpassword },
            dataType: "jsonp",
            success: function (msg) {
                if (onsuccess != null)
                    onsuccess(msg);
            },
            error: function (msg) {
                if (onerror != null)
                    onerror(msg);
                else
                    alert('API Error: An error occured during setPassword: ' + msg.status);
            }
        });
    }
};

MyAccess.createAccount = function (onsuccess, onerror, invitationid, confirmationcode, username, password) {
    var serviceurl = MyAccess.service_path + '/createAccount';
    jQuery.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        url: serviceurl,
        data: { 'invitationId': invitationid, 'confirmationCode': confirmationcode, 'username': username, 'password': password },
        dataType: "jsonp",
        success: function (msg) {
            if (onsuccess != null)
                onsuccess(msg);
        },
        error: function (msg) {
            if (onerror != null) {
                onerror(msg);
            }
        }
    });
};

MyAccess.assignInvitation = function (onsuccess, onerror, invitationid, confirmationcode) {
    var serviceurl = MyAccess.service_path + '/assignInvitation';
    jQuery.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        url: serviceurl,
        data: { 'invitationId': invitationid, 'confirmationCode': confirmationcode },
        dataType: "jsonp",
        success: function (msg) {
            if (onsuccess != null)
                onsuccess(msg);
        },
        error: function (msg) {
            if (onerror != null) {
                onerror(msg);
            }
        }
    });
};

MyAccess.updateAccount = function (onsuccess, onerror, details) {
    var serviceurl = MyAccess.service_path + '/updateAccount';
    jQuery.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        url: serviceurl,
        data: { 'emailAddress': details.emailAddress, 'firstName': details.firstName, 'middleName': details.middleName, 'lastName': details.lastName },
        dataType: "jsonp",
        success: function (msg) {
            if (onsuccess != null)
                onsuccess(msg);
        },
        error: function (msg) {
            if (onerror != null)
                onerror(msg);
            else
                alert('API Error: An error occured during updateAccount: ' + msg.status);
        }
    });
};

MyAccess.checkCookies = function (onComplete) {
    if (MyAccess.getCookie('browserOk') == 'true')
        onComplete(true);
    else {
        MyAccess.setCookie('testcookie', 'true');
        if (MyAccess.getCookie('testcookie') == 'true') {
            MyAccess.deleteCookie('testcookie');

            var serviceurl = MyAccess.service_path + '/checkBrowser';
            jQuery.ajax({
                type: "GET",
                contentType: "application/json; charset=utf-8",
                url: serviceurl,
                data: null,
                dataType: "jsonp",
                success: function (msg) {
                    // check session by making a round trip
                    jQuery.ajax({
                        type: "GET",
                        contentType: "application/json; charset=utf-8",
                        url: serviceurl,
                        data: null,
                        dataType: "jsonp",
                        success: function (msg) {
                            if (msg != 'ok') {
                                if (MyAccess.getCookie('3rdPartyCokieFix') != 'true') {
                                    MyAccess.setCookie('3rdPartyCokieFix', 'true');
                                    document.location = MyAccess.base + '/init.aspx?returnurl=' + document.location;
                                }
                                else {
                                    alert('This website requires 3rd party cookies to be enabled.');
                                    onComplete(false);
                                }
                            }
                            else {
                                MyAccess.setCookie('browserOk', 'true', '/');
                                MyAccess.deleteCookie('3rdPartyCokieFix');
                                onComplete(true);
                            }
                        },
                        error: function (msg) {
                            alert('API Error: An error occured during updateAccount: ' + msg.status);
                        }
                    });
                },
                error: function (msg) {
                    alert('API Error: An error occured during updateAccount: ' + msg.status);
                }
            });
        }
        else {
            alert('This website requires cookies to be enabled.');
            onComplete(false);
        }
    }
}

MyAccess();
