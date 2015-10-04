require 'bundler/setup'
Bundler.require :default

path = File.expand_path "../../", __FILE__
APP_PATH = path

file = File.read File.expand_path( "~/.bitcoin/bitcoin.conf" )

# grep
password = file.strip.match(/rpcpassword=(.+)/)[1]

RPC_PASSWORD = password


DEBUG = false



# models
require_relative "../models/faucet"


# lib

require_relative "../lib/monkeypatches"
