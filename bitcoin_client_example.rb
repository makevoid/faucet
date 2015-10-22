require_relative "./config/env"



BC = BitcoinClient::Client.new 'bitcoin', RPC_PASSWORD
puts BC.balance


puts "see #{url = 'https://en.bitcoin.it/wiki/Original_Bitcoin_client/API_calls_list'}"


# Check Balance (of a label, or of an address)
#
# BC.balance "label|address"


# Generate new address
#
# BC.generatenewaddress() # => "1..." (returns an address)




# Basic security
#
# dumpprivker (manually CLI)
# import hd private key seed


# Checks locally, no api calls, response accurate and very quick



### Send

# BC.sendtoaddress "1MjTBm2TeHPAaXJnNGu6MyFqFnVm8g7Ys7", 0.001 # => "a2a2eb18cb051b5fe896a32b1cb20b179d981554b6bd7c5a956e56a0eecb04f1"
#
# # that is the transaction hash



### secure the wallet with (optional but good, it's like putting a lock pin, except that to make it clientside, you should put a wrong password and adds a timed access/log-in in to your app, bitcoind in this case, to release the funds)

# walletlock

# and

# walletpassphrase | walletpassphrasechange
