(function (window, $, undefined) {
    if (window.jqueryExtLoaded) { return; }//在重复加载的情况下不会出错
    window.jqueryExtLoaded = true;

    $.tw = $.tw || {};

    //避免 IE 下调试代码出错
    window.console = window.console || { log: function () { }, dir: function () { } };
    /*对浏览器函数的Hack*/
    window.String.prototype.trim = function () {
        return $.trim(this);
    };

    $.tw.twalert = function () {
        alert("aa")
    }

})(window, $);