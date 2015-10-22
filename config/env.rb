require 'bundler/setup'
Bundler.require :default

APP_ENV = ENV["RACK_ENV"] || "development"

path = File.expand_path "../../", __FILE__
APP_PATH = path

RPC_HOST = 'localhost'
# RPC_HOST = '188.165.223.5'
RPC_HOST = '212.47.236.93' # bcc - scaleway


unless APP_ENV == "development"
  file = File.read File.expand_path( "~/.bitcoin/#{bitcoin_conf}" )
  password = file.strip.match(/rpcpassword=(.+)/)[1]
else
  password = File.read( File.expand_path "#{APP_PATH}/.bitcoin_rpc_password" ).strip
end

RPC_PASSWORD = password


DEBUG = false



# models
require_relative "../models/faucet"


# lib

require_relative "../lib/monkeypatches"
