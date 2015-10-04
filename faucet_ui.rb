require_relative 'config/env'


class FaucetUI < Roda

  plugin(:assets,
    js: ["vendor/underscore.js", "vendor/qrcode.js"],
    # js: ["vendor/underscore.js", "vendor/qrcode.js"],
    # img: "btn_donate.gif",
  )

  # plugin(:assets,
  #   js: {
  #     vendor: ["underscore.js", "qrcode.js"],
  #   },
  #   img: "btn_donate.gif",
  # )
  #  ['/js/vendor/qrcode.js'], img: ["btn_donate.gif"]
  # plugin :render, engine: :haml # TODO: PR to Roda to accept hashes
  plugin :render, engine: "haml"
  plugin :partials
  plugin :not_found

  def json_route
    response['Content-Type'] = 'application/json'
  end

  route do |r|

    FC = Faucet.new

    r.on "register" do
      r.is do
        r.get do
          view "register"
        end
      end
    end

    r.on "redistribute" do
      r.is do
        r.get do
          view "redistribute"
        end

        # debug
        if APP_ENV == "development"
          r.post do
            json_route
            output = FC.redistribute
            { output: output }.to_json
          end
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

    r.on "donate" do
      r.is do
        r.get do
          view "donate"
        end
      end
    end

    r.on "admin" do
      r.is do
        r.get do
          view "admin"
        end
      end
    end


    r.assets
  end

  not_found do
    view "not_found"
  end
end
