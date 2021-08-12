# Pre-Built Nginx Modules

<svg viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1872" width="128" height="128"><path d="M512 0L68.48 256v512L512 1024l443.52-256V256L512 0z m256 707.84c0 30.08-27.562667 55.04-65.237333 55.04-26.922667 0-57.642667-10.88-76.842667-34.56l-256-304.682667v284.16c0 30.762667-24.32 55.04-54.357333 55.04H312.32c-30.762667 0-55.04-25.6-55.04-55.04V316.16c0-30.08 26.88-55.04 64-55.04 27.562667 0 58.88 10.88 78.08 34.56l254.72 304.682667V316.16c0-30.762667 25.6-55.04 55.04-55.04h3.2c30.72 0 55.04 25.6 55.04 55.04v391.68H768z" fill="#1296db"></path></svg>

A bunch of useful pre-built modules for nginx, can be used directly in docker or Debian/Ubuntu.

## Build Env

- https://github.com/nginx-with-docker/nginx-docker-playground
  - Nginx Development Environment based on official docker image.

## Nginx Modules Images

The modules are compatible with nginx version to 1.21.1

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
            <td><a href="https://github.com/nginx-with-docker/ngx_http_php_module">ngx_http_php_module</a></td>
            <td>@rryqszq4</td>
            <td>8cbb7fb / master</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_array_var_module">ngx_http_array_var_module</a></td>
            <td>@openresty</td>
            <td>0.05</td>
        </tr>
        <tr>
            <td colspan="3">array-var-nginx-module - Add support for array-typed variables to nginx config files.<br /></td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_dynamic_upstream_module">ngx_dynamic_upstream_module</a></td>
            <td>@cubicdaiya</td>
            <td>0.1.6</td>
        </tr>
        <tr>
            <td colspan="3">ngx_dynamic_upstream is the module for operating upstreams dynamically with HTTP APIs such as ngx_http_upstream_conf.<br /></td>
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
            <td><a href="https://github.com/nginx-with-docker/ngx_http_encrypted_session_module">ngx_http_encrypted_session_module</a></td>
            <td>@openresty</td>
            <td>master / 0.08</td>
        </tr>
        <tr>
            <td colspan="3">encrypted-session-nginx-module - encrypt and decrypt nginx variable values.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_headers_more_filter_module">ngx_http_headers_more_filter_module</a></td>
            <td>@openresty</td>
            <td>master / 0.33</td>
        </tr>
        <tr>
            <td colspan="3">ngx_headers_more - Set and clear input and output headers...more than "add"!</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_flv_live_module">ngx_http_flv_live_module</a></td>
            <td>@winshining</td>
            <td>1.2.9</td>
        </tr>
        <tr>
            <td colspan="3">Media streaming server based on nginx-rtmp-module.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_redis_module">ngx_http_redis_module</a></td>
            <td>@Sergey A. Osokin</td>
            <td>0.3.9</td>
        </tr>
        <tr>
            <td colspan="3">You can use this module to perform simple caching.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_memc_module">ngx_http_memc_module</a></td>
            <td>@openresty</td>
            <td>master / 0.19</td>
        </tr>
        <tr>
            <td colspan="3">An extended version of the standard memcached module that supports set, add, delete, and many more memcached commands.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_set_misc_module">ngx_http_set_misc_module</a></td>
            <td>@openresty</td>
            <td>master / 0.32</td>
        </tr>
        <tr>
            <td colspan="3">ngx_set_misc - Various set_xxx directives added to nginx's rewrite module (md5/sha1, sql/json quoting, and many more).</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_push_stream_module">ngx_http_push_stream_module</a></td>
            <td>@wandenberg</td>
            <td>master / 0.5.4</td>
        </tr>
        <tr>
            <td colspan="3">A pure stream http push technology for your Nginx setup. Comet made easy and really scalable.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_redis2_module">ngx_http_redis2_module</a></td>
            <td>@openresty</td>
            <td>master / 0.15</td>
        </tr>
        <tr>
            <td colspan="3">ngx_redis2 - Nginx upstream module for the Redis 2.0 protocol</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_subs_filter_module">ngx_http_subs_filter_module</a></td>
            <td>@yaoweibin</td>
            <td>master</td>
        </tr>
        <tr>
            <td colspan="3">a filter module which can do both regular expression and fixed string substitutions for nginx</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_rtmp_module">ngx_rtmp_module</a></td>
            <td>@arut</td>
            <td>1.2.2 / master</td>
        </tr>
        <tr>
            <td colspan="3">NGINX-based Media Streaming Server</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_srcache_filter_module">ngx_http_srcache_filter_module</a></td>
            <td>@openresty</td>
            <td>master / 0.32</td>
        </tr>
        <tr>
            <td colspan="3">Transparent subrequest-based caching layout for arbitrary nginx locations.</td>
        </tr>
        <tr>
            <td><a href="https://github.com/nginx-with-docker/ngx_http_testcookie_access_module">ngx_http_testcookie_access_module</a></td>
            <td>@kyprizel</td>
            <td>master</td>
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
