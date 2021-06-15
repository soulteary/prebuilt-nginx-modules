# Pre-Built Nginx Modules

A bunch of useful pre-built modules for nginx, can be used directly in docker or Debian/Ubuntu.

## Build Env

- https://github.com/nginx-with-docker/nginx-docker-playground
  - Nginx Development Environment based on official docker image.

## Nginx Images

The modules are compatible with nginx version to 1.21.0

<table>
    <thead>
        <tr>
            <th>Module Name</th>
            <th>Author</th>
            <th>Module Version</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_array_var_module">ngx_http_array_var_module</a></td>
            <td>@openresty</td>
            <td>0.05</td>
        </tr>
        <tr>
            <td colspan="3">array-var-nginx-module - Add support for array-typed variables to nginx config files.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/cubicdaiya/ngx_dynamic_upstream">ngx_dynamic_upstream</a></td>
            <td>@cubicdaiya</td>
            <td>0.1.6</td>
        </tr>
        <tr>
            <td colspan="3">ngx_dynamic_upstream is the module for operating upstreams dynamically with HTTP APIs such as ngx_http_upstream_conf.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_echo_module">ngx_http_echo_module</a></td>
            <td>@openresty</td>
            <td>0.62</td>
        </tr>
        <tr>
            <td colspan="3">ngx_echo - Brings "echo", "sleep", "time", "exec" and more shell-style goodies to Nginx config file.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/encrypted-session-nginx-module">encrypted-session-nginx-module</a></td>
            <td>@openresty</td>
            <td>0.08</td>
        </tr>
        <tr>
            <td colspan="3">encrypted-session-nginx-module - encrypt and decrypt nginx variable values.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/headers-more-nginx-module">headers-more-nginx-module</a></td>
            <td>@openresty</td>
            <td>0.33</td>
        </tr>
        <tr>
            <td colspan="3">ngx_headers_more - Set and clear input and output headers...more than "add"!</td>
        </tr>
        <tr>
            <td><a href="https://github.com/winshining/nginx-http-flv-module">nginx-http-flv-module</a></td>
            <td>@winshining</td>
            <td>1.2.9</td>
        </tr>
        <tr>
            <td colspan="3">Media streaming server based on nginx-rtmp-module.</td>
        </tr>
        <tr>
            <td><a href="https://www.nginx.com/resources/wiki/modules/redis/">ngx_http_redis</a></td>
            <td>@Sergey A. Osokin</td>
            <td>0.3.9</td>
        </tr>
        <tr>
            <td colspan="3">You can use this module to perform simple caching.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/memc-nginx-module">memc-nginx-module</a></td>
            <td>@openresty</td>
            <td>0.19</td>
        </tr>
        <tr>
            <td colspan="3">An extended version of the standard memcached module that supports set, add, delete, and many more memcached commands.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/set-misc-nginx-module">set-misc-nginx-module</a></td>
            <td>@openresty</td>
            <td>0.32</td>
        </tr>
        <tr>
            <td colspan="3">ngx_set_misc - Various set_xxx directives added to nginx's rewrite module (md5/sha1, sql/json quoting, and many more).</td>
        </tr>
        <tr>
            <td><a href="https://github.com/wandenberg/nginx-push-stream-module">nginx-push-stream-module</a></td>
            <td>@wandenberg</td>
            <td>1cdc015</td>
        </tr>
        <tr>
            <td colspan="3">A pure stream http push technology for your Nginx setup. Comet made easy and really scalable.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/redis2-nginx-module">redis2-nginx-module</a></td>
            <td>@openresty</td>
            <td>0.15</td>
        </tr>
        <tr>
            <td colspan="3">ngx_redis2 - Nginx upstream module for the Redis 2.0 protocol</td>
        </tr>
        <tr>
            <td><a href="https://github.com/yaoweibin/ngx_http_substitutions_filter_module">ngx_http_substitutions_filter_module</a></td>
            <td>@yaoweibin</td>
            <td>b8a71ea</td>
        </tr>
        <tr>
            <td colspan="3">a filter module which can do both regular expression and fixed string substitutions for nginx</td>
        </tr>
        <tr>
            <td><a href="https://github.com/arut/nginx-rtmp-module">redis2-nginx-module</a></td>
            <td>@arut</td>
            <td>1.2.2</td>
        </tr>
        <tr>
            <td colspan="3">NGINX-based Media Streaming Server</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/srcache-nginx-module">srcache-nginx-module</a></td>
            <td>@openresty</td>
            <td>0.32</td>
        </tr>
        <tr>
            <td colspan="3">Transparent subrequest-based caching layout for arbitrary nginx locations.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/kyprizel/testcookie-nginx-module">testcookie-nginx-module</a></td>
            <td>@kyprizel</td>
            <td>5113746</td>
        </tr>
        <tr>
            <td colspan="3">simple robot mitigation module using cookie based challenge/response technique. Not supported any more.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_ts_module">ngx_http_ts_module</a></td>
            <td>@arut</td>
            <td>1.0.1 / master / custom</td>
        </tr>
        <tr>
            <td colspan="3">NGINX MPEG-TS Live Module.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_upload_module">ngx_http_upload_module</a></td>
            <td>@fdintino</td>
            <td>master / 2.3.0</td>
        </tr>
        <tr>
            <td colspan="3">A module for nginx web server for handling file uploads using multipart/form-data encoding (RFC 1867).</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_vhost_traffic_status_module">ngx_http_vhost_traffic_status_module</a></td>
            <td>@vozlt</td>
            <td>0.1.18 / master</td>
        </tr>
        <tr>
            <td colspan="3">Nginx virtual host traffic status module.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_waf_module">ngx_http_waf_module</a></td>
            <td>@ADD-SP</td>
            <td>5.4.1-5.4.2 / 3.1.6</td>
        </tr>
        <tr>
            <td colspan="3">Handy, High performance Nginx firewall module.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_xss_filter_module">ngx_http_xss_filter_module</a></td>
            <td>@openresty</td>
            <td>0.06</td>
        </tr>
        <tr>
            <td colspan="3">xss-nginx-module - Native cross-site scripting support in nginx</td>
        </tr>
    </tbody>
</table>
