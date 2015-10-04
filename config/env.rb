require 'bundler/setup'
Bundler.require :default

path = File.expand_path "../../", __FILE__
APP_PATH = path

RPC_HOST = 'localhost'
RPC_HOST = '188.165.223.5'


conf = "sys.bitcoin.conf"
# conf = "bitcoin.conf"
file = File.read File.expand_path( "~/.bitcoin/#{conf}" )
# grep
password = file.strip.match(/rpcpassword=(.+)/)[1]

RPC_PASSWORD = password


DEBUG = false



# models
require_relative "../models/faucet"


# lib

require_relative "../lib/monkeypatches"
