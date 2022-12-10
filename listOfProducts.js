function onChanging(value) {
    if (window.location.href.indexOf("x=1") > -1) {
        js1Function(value);
    } else if (window.location.href.indexOf("x=2") > -1) {
        js2Function(value);
    } else if (window.location.href.indexOf("x=3") > -1) {
        js3Function(value);
    } else
        js4Function(value);
}