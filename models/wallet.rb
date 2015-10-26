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
    amount = "%.8f" % 0.00001
    # amount = 0.000001
    # amount = "0.000001".to_s
    # addresses_w_amounts = addresses.map do |addr|
    #   "#{addr}:#{amount}"
    # end.join ","
    # addresses_w_amounts = "{#{addresses_w_amounts}}"


    amounts = {}
    addresses.each do |addr|
      amounts[addr] = amount
    end

    # bc sendmany "" '{"19e2eU15xKbM9pyDwjFsBJFaSeKoDxp8YT":0.00001}'
    @client.sendmany "", amounts

    # @client.sendtoaddress "19e2eU15xKbM9pyDwjFsBJFaSeKoDxp8YT", 0.00001
  end

end
