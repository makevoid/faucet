class Wallet
  def initialize
    @client = BitcoinClient::Client.new 'bitcoin', RPC_PASSWORD
  end

  def balance
    @client.balance
  end
end
