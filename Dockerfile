FROM alpine:3.3

run apk add --update darkhttpd && rm -rf /var/cache/apk/*

ADD index.html /var/www/localhost/htdocs/index.html
ADD entrypoint.sh /entrypoint.sh

ADD Build/testProject.data.unityweb /var/www/localhost/htdocs/Build/testProject.data.unityweb
ADD Build/testProject.json /var/www/localhost/htdocs/Build/testProject.json
ADD Build/testProject.wasm.code.unityweb /var/www/localhost/htdocs/Build/testProject.wasm.code.unityweb
ADD Build/testProject.wasm.framework.unityweb /var/www/localhost/htdocs/Build/testProject.wasm.framework.unityweb
ADD Build/UnityLoader.js /var/www/localhost/htdocs/Build/UnityLoader.js

ADD TemplateData/UnityProgress.js /var/www/localhost/htdocs/TemplateData/UnityProgress.js
ADD TemplateData/style.css /var/www/localhost/htdocs/TemplateData/style.css
ADD TemplateData/favicon.ico /var/www/localhost/htdocs/TemplateData/favicon.ico
ADD TemplateData/fullscreen.png /var/www/localhost/htdocs/TemplateData/fullscreen.png
ADD TemplateData/progressEmpty.Dark.png /var/www/localhost/htdocs/TemplateData/progressEmpty.Dark.png
ADD TemplateData/progressEmpty.Light.png /var/www/localhost/htdocs/TemplateData/progressEmpty.Light.png
ADD TemplateData/progressFull.Dark.png /var/www/localhost/htdocs/TemplateData/progressFull.Dark.png
ADD TemplateData/progressFull.Light.png /var/www/localhost/htdocs/TemplateData/progressFull.Light.png
ADD TemplateData/progressLogo.Dark.png /var/www/localhost/htdocs/TemplateData/progressLogo.Dark.png
ADD TemplateData/progressLogo.Light.png /var/www/localhost/htdocs/TemplateData/progressLogo.Light.png
ADD TemplateData/webgl-logo.png /var/www/localhost/htdocs/TemplateData/webgl-logo.png

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
