class Wallet

  def initialize
    @client = BitcoinClient::Client.new 'bitcoinrpc', RPC_PASSWORD, host: RPC_HOST, cache: true
  end

  def main_address
    @client.getaccountaddress ""
  end

  def balance
    @client.balance
  end

  def balance_zeroconf
    @client.balance "", 0
  end

  def sendmany(addresses, amount)
    # amount  = (amount / addresses.size).to_f
    # amount = "%.8f" % amount
    amount = "%.8f" % 0.00001 # TODO: this is a test amount, switch to the real thing

    amounts = {}
    addresses.each do |addr|
      amounts[addr] = amount
    end

    @client.sendmany "", amounts
  end

end
