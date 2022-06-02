# caddyhelper 

A small container with tools helpful for using the [Caddy admin API](https://caddyserver.com) in a Docker Swarm environment. 

This container does nothing important, yet.

## Usage

Start a caddy service with an internal network. This internal network needs to be attachable. 

```
docker run -it --network YOURCADDYADMINNET ghcr.io/multimico/caddyhelper:latest
```

## Included Packages

- curl
- vim-tiny
- jq (for JSON)
- yq (for YAML)
- ping
- git
- openssh-client (to be used with git)
- less
- python3 with pycurl
- caddy (for additional caddy tools)

## Intention

I found these tools extremely helpful to work with the Caddy admin API. I did not want to install all these packages on a vanilla container, so I included them into one package. 

The basic idea is to be able to change the caddy configuration from within a docker swarm. 

## Examples

TO DO

## Templates 

- [ ] Install a new virtual host without configuration
- [ ] Install a new virtual host as file server
- [ ] Install a new reverse proxy route for a path using `handle_path`

## Future work 

While being relatively simple the Caddy admin API is not intuitive. This is because the request paths don't follow JQ query paths and the config.json format is rather complex. 

- [ ] Provide built-in templates for typical tasks that can be changed using `jq` or `yq`.
- [ ] Include  `envsubst`
- [ ] A tool that checks whether a given configuration is already (partially) included and generate an appropriate request path for the configuration. 
