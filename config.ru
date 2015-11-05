require_relative 'faucet_ui'
# require 'rack/urlmap'

run Rack::URLMap.new({
  "/"      => FaucetUI,
  "/admin" => FaucetAdminUI,
})
