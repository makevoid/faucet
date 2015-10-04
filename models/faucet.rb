require_relative 'wallet'


class Faucet

  attr_reader :address, :addresses

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
