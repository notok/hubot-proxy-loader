# hubot-proxy-loader

A hubot script to load proxy setting

See [`src/proxy-loader.coffee`](src/proxy-loader.coffee) for full documentation.

This script provides no commands, but loads proxy settings from envirinmental variable
(`http_proxy` or `HTTP_PROXY`, and `https_proxy` or `HTTPS_PROXY`) and configure it
in hubot's manner.

(see https://hubot.github.com/docs/patterns/#forwarding-all-http-requests-through-a-proxy)

## Installation

In hubot project repo, run:

`npm install hubot-proxy-loader --save`

Then add **hubot-proxy-loader** to your `external-scripts.json`:

```json
[
  "hubot-proxy-loader"
]
```
