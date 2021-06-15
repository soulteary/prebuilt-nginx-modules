# Pre-Built Nginx Modules

A bunch of useful pre-built modules for nginx, can be used directly in docker or Debian/Ubuntu.

## Build Env

- https://github.com/nginx-with-docker/nginx-docker-playground
  - Nginx Development Environment based on official docker image.

## Nginx Images

**Current Nginx program version: 1.21.0 **

<table>
    <thead>
        <tr>
            <th>Module Name</th>
            <th>Author</th>
            <th>Module Description</th>
            <th>Module Version</th>
            <th>Docker Command</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="https://github.com/openresty/array-var-nginx-module">array-var-nginx-module</a></td>
            <td>@openresty</td>
            <td>array-var-nginx-module - Add support for array-typed variables to nginx config files.</td>
            <td>0.05</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:array-var-nginx-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/cubicdaiya/ngx_dynamic_upstream">ngx_dynamic_upstream</a></td>
            <td>@cubicdaiya</td>
            <td>ngx_dynamic_upstream is the module for operating upstreams dynamically with HTTP APIs such as ngx_http_upstream_conf.</td>
            <td>0.1.6</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:dynamic-upstream-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_echo_module">ngx_http_echo_module</a></td>
            <td>@openresty</td>
            <td>ngx_echo - Brings "echo", "sleep", "time", "exec" and more shell-style goodies to Nginx config file.</td>
            <td>0.62</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:echo-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/encrypted-session-nginx-module">encrypted-session-nginx-module</a></td>
            <td>@openresty</td>
            <td>encrypted-session-nginx-module - encrypt and decrypt nginx variable values.</td>
            <td>0.08</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:encrypted-session-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/headers-more-nginx-module">headers-more-nginx-module</a></td>
            <td>@openresty</td>
            <td>ngx_headers_more - Set and clear input and output headers...more than "add"!</td>
            <td>0.33</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:headers-more-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/winshining/nginx-http-flv-module">nginx-http-flv-module</a></td>
            <td>@winshining</td>
            <td>Media streaming server based on nginx-rtmp-module.</td>
            <td>1.2.9</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:http-flv-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://www.nginx.com/resources/wiki/modules/redis/">ngx_http_redis</a></td>
            <td>@Sergey A. Osokin</td>
            <td>You can use this module to perform simple caching.</td>
            <td>0.3.9</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:http-redis-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/memc-nginx-module">memc-nginx-module</a></td>
            <td>@openresty</td>
            <td>An extended version of the standard memcached module that supports set, add, delete, and many more memcached commands.</td>
            <td>0.19</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:memc-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/set-misc-nginx-module">set-misc-nginx-module</a></td>
            <td>@openresty</td>
            <td>ngx_set_misc - Various set_xxx directives added to nginx's rewrite module (md5/sha1, sql/json quoting, and many more).</td>
            <td>0.32</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:set-misc-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/wandenberg/nginx-push-stream-module">nginx-push-stream-module</a></td>
            <td>@wandenberg</td>
            <td>A pure stream http push technology for your Nginx setup. Comet made easy and really scalable.</td>
            <td>1cdc015</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:push-stream-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/redis2-nginx-module">redis2-nginx-module</a></td>
            <td>@openresty</td>
            <td>ngx_redis2 - Nginx upstream module for the Redis 2.0 protocol</td>
            <td>0.15</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:redis2-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/yaoweibin/ngx_http_substitutions_filter_module">ngx_http_substitutions_filter_module</a></td>
            <td>@yaoweibin</td>
            <td>a filter module which can do both regular expression and fixed string substitutions for nginx</td>
            <td>b8a71ea</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:http-substitutions-filter-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/arut/nginx-rtmp-module">redis2-nginx-module</a></td>
            <td>@arut</td>
            <td>NGINX-based Media Streaming Server</td>
            <td>1.2.2</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:rtmp-1.21.0/td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/srcache-nginx-module">srcache-nginx-module</a></td>
            <td>@openresty</td>
            <td>Transparent subrequest-based caching layout for arbitrary nginx locations.</td>
            <td>0.32</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:srcache-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/kyprizel/testcookie-nginx-module">testcookie-nginx-module</a></td>
            <td>@kyprizel</td>
            <td>simple robot mitigation module using cookie based challenge/response technique. Not supported any more.</td>
            <td>5113746</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:testcookie-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/arut/nginx-ts-module">nginx-ts-module</a></td>
            <td>@arut</td>
            <td>NGINX MPEG-TS Live Module.</td>
            <td>ef2f874</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:ts-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/fdintino/nginx-upload-module">nginx-upload-module</a></td>
            <td>@fdintino</td>
            <td>A module for nginx web server for handling file uploads using multipart/form-data encoding (RFC 1867).</td>
            <td>643b4c1</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:upload-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/vozlt/nginx-module-vts">nginx-module-vts</a></td>
            <td>@vozlt</td>
            <td>Nginx virtual host traffic status module.</td>
            <td>0.1.18</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:vts-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/ADD-SP/ngx_waf">ngx_waf</a></td>
            <td>@ADD-SP</td>
            <td>Handy, High performance Nginx firewall module.</td>
            <td>3.1.6</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:waf-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_xss_filter_module">ngx_http_xss_filter_module</a></td>
            <td>@openresty</td>
            <td>xss-nginx-module - Native cross-site scripting support in nginx</td>
            <td>0.06</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:xss-1.21.0</td>
        </tr>
    </tbody>
</table>


For Alpine, you can use image with `-alpine` suffix, eg:

- debian: soulteary/prebuilt-nginx-modules:headers-more-1.21.0
- alpine: soulteary/prebuilt-nginx-modules:headers-more-1.21.0-alpine

## Nginx Versions

Below are other available nginx versions.

- 1.21.0
- 1.20.0
- 1.19.10
- 1.19.9
- 1.19.8
- 1.19.7
