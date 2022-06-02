# caddyhelper 

A small container with tools helpful for using the [Caddy admin API](https://caddyserver.com)

This container does nothing important, yet. 

It simply provides a bunch of helpful tools for working with Caddy's admin API. 

## Included Packages

- curl
- vim-tiny
- jq
- ping
- git
- openssh-client (to be used with git)
- less
- python3 with pycurl
- caddy (for debugging tools)

## Intention

I found these tools extremely helpful to work with the Caddy admin API. I did not want to install all these packages on a vanilla container, so I included them into one package

## Future work 

While being relatively simple the Caddy admin API is not intuitive. This is because the request paths don't follow JQ query paths and the config.json format is rather complex. 

It would be nice to include a tool which checks whether a given configuration is already (partially) included and generate an appropriate request path for it. 
