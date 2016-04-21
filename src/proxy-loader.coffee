# Description
#   A hubot script to load proxy setting
#
# Configuration:
#   http_proxy, HTTP_PROXY
#   https_proxy, HTTPS_PROXY
#
# Author:
#   notok <noto.kazufumi@gmail.com>
proxy = require 'proxy-agent'

is_blank = (s) -> !s?.trim()

config =
  http_proxy:  process.env.http_proxy  ? process.env.HTTP_PROXY
  https_proxy: process.env.https_proxy ? process.env.HTTPS_PROXY

module.exports = (robot) ->
  if not is_blank(config.http_proxy)
    robot.globalHttpOptions.httpAgent  = proxy(config.http_proxy, false)
  if not is_blank(config.https_proxy)
    robot.globalHttpOptions.httpsAgent = proxy(config.https_proxy, true)
