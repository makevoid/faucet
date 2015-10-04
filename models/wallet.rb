class Wallet

  def initialize
    @client = BitcoinClient::Client.new 'bitcoinrpc', RPC_PASSWORD, host: RPC_HOST
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
    addresses_w_amounts = addresses.map do |addr|
      "#{addr}:#{amount}"
    end
    @client.sendmany addresses_w_amounts.join ""
  end

end
