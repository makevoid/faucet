require_relative "./config/env"

# basic faucet

BC = BitcoinClient::Client.new 'bitcoin', RPC_PASSWORD
puts BC.balance
# gets you the balance


# redistributes the funds to all the donors


# simple faucet
#
# Faucet.config (
#   share: "0.05" 1/20th of the donations present
# )


# protip faucet
#
# Faucet.config(
#   treshold: "10",
#   share: "0.1" # 1/10th
# )

#

BC.redistribute
# unlocks faucet
# redistribute_funds

def redistribute_funds
  BC.balance
end

#

BC.redistribute_multisig(multisig)
# signs multisig transaction



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
