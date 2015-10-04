# Readme

This is an Alpha Prototype of a Bitcoin faucet

Use at your own risk tm.




----

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
