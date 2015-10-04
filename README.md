# Readme

This is an Alpha Prototype of a Bitcoin faucet

Use at your own risk tm.


You'll probably need to fork, if your is an advanced use case, the bitcoin-client library/gem and change, add, tweak some actions, don't worry the library is minimal, it's all in the `api.rb` file 

The concept is, if you are connected to a Bitcoin Core node via a Json Rpc Api you are connected in the best possible available way to the blokchain, and it should be always easy to update (you just download the latest version of bitcoin core from bitcoin.org or from github/bitcoin/bitcoin)

Roda provides a nice API (Ruby) at gread speed! (It's only a thin layer over Rack, efficency of routing-trees and modularity through a good plugin system)

This time I can really say that Routing-Tree frameworks like Roda not only let your app runs faster, but because of routes like 

```rb
# For APIs
#
# plugin :json
# plugin :not_found
# set response status
# params plugin or create a shorter helper

# For UIs
#
# plugin :render
# set session secret

# inside the route, pseudo code (no ends)

r.on ":id" do |id|
  r.is do
    resource = Resource.get id
    
    r.get 
      resource
  
    r.put
      resource.put params
      resource
----

this way you don't have to use before filter

also if you group the specs the same way (lets and before blocks in rspec) you end up with a very flexible structure that lets you quickly but effectively spec your core requirements or to organize a more complete spec suite >80% coverage


# Old readme from 

# BitcoinClient usage example
Simple example on how to start an app using bitcoin-client or similar 1:1 bitcoind api via JSON


### Prereqs

OSX/Linux

- Download bitcoin core (bitcoin-qt or bitcoind) from:

##### http://bitcoin.org

### Bitcoin Core Configuration ( ~/.bitcoin/bitcoin.conf )

```sh
rpcuser=bitcoin
rpcpassword=password

# prevents full blockchain dl
connect=127.0.0.1

# enables deamon in bitcoin-qt
server=1
```

### Running

    rake


### Infos

look at the presentation:

http://bitbath.mkvd.net/#32 (slide 32)


http://bitbath.mkvd.net (from the start)
