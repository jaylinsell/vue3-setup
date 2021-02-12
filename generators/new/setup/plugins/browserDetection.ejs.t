---
to: src/plugins/browser-detection.js
---
// Browser detection
// =============================
export default {
    install: () => {
        function getBrowser() {
            var ua = navigator.userAgent;
            var tem = '';
            var M = ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];

            if (/trident/i.test(M[1])) {
                tem = /\brv[ :]+(\d+)/g.exec(ua) || [];
                return { name: 'IE', version: (tem[1] || '') };
            }

            if (M[1] === 'Chrome') {
                tem = ua.match(/\bOPR\/(\d+)/);
                if (tem != null) {
                    return {name: 'Opera', version: tem[1]};
                }
            }

            M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];

            if ((tem = ua.match(/version\/(\d+)/i)) != null) { M.splice(1, 1, tem[1]); }
            return {
              name: M[0],
              version: M[1]
            };
         }

         var browser = getBrowser(); // the function array
         var b = browser.name + browser.version; // call the name and version from the array
         var output = b.replace(" ", "").toLowerCase(); // convert to lowercase string

        // $('html').addClass(output);

        var element = document.getElementsByTagName('html')[0];
        element.className += output;


        // Mobile OS detection
        // =============================
        function getMobileOperatingSystem() {
          var userAgent = navigator.userAgent || navigator.vendor || window.opera;

            // Windows Phone must come first because its UA also contains "Android"
            if (/windows phone/i.test(userAgent)) {
                element.className += ' windows';
            }

            if (/android/i.test(userAgent)) {
                element.className += ' android';
            }

            // iOS detection from: http://stackoverflow.com/a/9039885/177710
            if (/iPad|iPhone|iPod/.test(userAgent) && !window.MSStream) {
                element.className += ' ios';
            }
        }

        getMobileOperatingSystem();

        // Detect ios Chrome
        if (navigator.userAgent.match('CriOS')) {
            element.className += ' iosChrome';

            if (window.innerWidth === 320) {
                alert('Please use Safari for an optimal experience on the iPhone 5');
            }
        }
    }
}
