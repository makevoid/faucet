require_relative "./config/env"



BC = BitcoinClient::Client.new 'bitcoin', RPC_PASSWORD
puts BC.balance




# registration page

# email
# btc address
# recaptcha oneclick


# -----

# page to activate the faucet


# page to audit


# connect to bitcoin-core
# unlock wallet
# create multisig transaction with all the output in the database


# file database:
#
# email|address|B


# multisig
#
# sign every week
