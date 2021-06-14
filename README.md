# Pre-Built Nginx Modules

Some useful pre-built dynamic modules for nginx.

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
            <td><a href="https://github.com/openresty/echo-nginx-module">echo-nginx-module</a></td>
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
            <td><a href="https://www.nginx.com/resources/wiki/modules/redis/">ngx_http_redis</a></td>
            <td>@Sergey A. Osokin</td>
            <td>You can use this module to perform simple caching.</td>
            <td>0.3.9</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:http-redis-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/memc-nginx-module">memc-nginx-module</a></td>
            <td>openresty</td>
            <td>An extended version of the standard memcached module that supports set, add, delete, and many more memcached commands.</td>
            <td>0.19</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:memc-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/set-misc-nginx-module">set-misc-nginx-module</a></td>
            <td>openresty</td>
            <td>ngx_set_misc - Various set_xxx directives added to nginx's rewrite module (md5/sha1, sql/json quoting, and many more).</td>
            <td>0.32</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:set-misc-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/redis2-nginx-module">redis2-nginx-module</a></td>
            <td>openresty</td>
            <td>ngx_redis2 - Nginx upstream module for the Redis 2.0 protocol</td>
            <td>0.15</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:redis2-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/srcache-nginx-module">srcache-nginx-module</a></td>
            <td>openresty</td>
            <td>Transparent subrequest-based caching layout for arbitrary nginx locations.</td>
            <td>0.32</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:srcache-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/ADD-SP/ngx_waf">ngx_waf</a></td>
            <td>ADD-SP</td>
            <td>Handy, High performance Nginx firewall module.</td>
            <td>3.1.6</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:waf-1.21.0</td>
        </tr>
        <tr>
            <td><a href="https://github.com/openresty/xss-nginx-module">xss-nginx-module</a></td>
            <td>openresty</td>
            <td>xss-nginx-module - Native cross-site scripting support in nginx</td>
            <td>0.06</td>
            <td>docker pull soulteary/prebuilt-nginx-modules:xss-nginx-1.21.0</td>
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
