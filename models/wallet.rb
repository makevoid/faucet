class Wallet

  def initialize
    @client = BitcoinClient::Client.new 'bitcoinrpc', RPC_PASSWORD, host: RPC_HOST, cache: true
  end

  def address
    @client.getaccountaddress ""
  end

  def balance
    @client.balance
  end

  def balance_zeroconf
    @client.balance "", 0
  end

  def send(to, amount)
    @client.sendtoaddress to, amount
  end
end
