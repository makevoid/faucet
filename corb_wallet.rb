require_relative 'config/env'


class CorbWallet < Roda

  plugin(:assets,
    js: ["vendor/underscore.js", "vendor/qrcode.js"],
  )

  # plugin :render, engine: :haml # TODO: PR to Roda to accept hashes
  plugin :render, engine: "haml"
  plugin :partials
  plugin :not_found

  def json_route
    response['Content-Type'] = 'application/json'
  end

  route do |r|

    W = Wallet.new

    r.root do
      r.redirect "/receive"
    end

    r.on "receive" do
      r.is do
        r.get do
          view "receive"
        end
      end
    end

    r.on "send" do
      r.is do
        r.get do
          view "send"
        end

        r.post do
          W.send params[:to], params[:amount]
        end
      end
    end

    r.assets
  end

  not_found do
    view "not_found"
  end
end
