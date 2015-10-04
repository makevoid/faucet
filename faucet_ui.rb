require_relative 'config/env'

class FaucetUI < Roda

  # plugin :assets, :css => 'some_file.scss', :js => 'some_file.coffee'
  # plugin :render, engine: :haml # TODO: PR to Roda to accept hashes
  plugin :render, engine: "haml"
  plugin :not_found

  route do |r|

    FC = Faucet.new

    r.on "register" do
      r.is do
        r.get do
          view "register"
        end
      end
    end

    r.on "activate" do
      r.is do
        r.get do
          view "activate"
        end
      end
    end

    r.on "status" do
      r.is do
        r.get do
          view "status"
        end
      end
    end

    not_found do
      view "not_found"
    end

    r.assets
  end
end
