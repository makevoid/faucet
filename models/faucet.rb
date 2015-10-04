require_relative 'wallet'
require 'bigdecimal'

class Numeric
  def to_b
    BigDecimal.new self
  end
end

class Faucet

  attr_reader :address, :addresses
  attr_reader :wallet # temporary

  def initialize
    @address, @addresses = load_config
    @wallet = Wallet.new
  end

  def main_addr
    @address[:btc]
  end
  alias :address_main :main_addr

  def balance
    @wallet.balance
  end

  def addresses_btc
    addresses.map{ |addr| addr.f :btc }
  end

  def amount_to_redistribute
    balance.to_b / 15
  end

  def redistribute
    @wallet.sendmany addresses_btc, amount_to_redistribute
  end

  private

  def load_config
    config = File.read "#{APP_PATH}/config/faucet.psv"
    config = config.strip.split "\n"
    main   = config[0]
    addresses = config[1..-1].map{ |addr| parse addr }
    [parse(main), addresses]
  end

  def parse(address)
    email, btc = address.split "|"
    {
      btc:   btc,
      email: email,
    }
  end

end
