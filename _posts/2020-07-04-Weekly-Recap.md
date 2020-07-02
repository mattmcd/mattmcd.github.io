---
layout: default
title: Weekly Recap 2020-07-04
headline: Weekly Recap 2020-07-04
abstract: Log of things seen in week 2020-06-28 to 2020-07-04 (updated mid week)
---

# Blockchain Blockchain Blockchain
Tried out some of the liquidity provision protocols and yield farming.  Currently down about $50 in Coinbase fees and gas fees.

* Deposited 500 DAI in [Compound](https://app.compound.finance/) to test UI and COMP liquidity mining
* Deposited 500 DAI in [Aave Uniswap Market](https://app.aave.com/reserve-overview/UNIDAI-0x6b175474e89094c44da98b954eedeac495271d0f0x7fd53085b9a29d236235d6fc593b47c9c33429f1)
  * Interesting because the deposit is borrowed to provide liquidity to a Uniswap automated market maker 
* Deposited 0.02BTC into [Synthetix BTC Yield Farming pool](https://blog.synthetix.io/btc-yield-farming-pool/)
  * Step 1: [BTC -> renBTC](https://bridge.renproject.io/) - first a transfer of BTC from wallet to RenBridge in a [BTC transaction](https://sochain.com/tx/BTC/fa200a89631deb3698d2a5f8d3c56223a957e15f98a9e274356ac596670cefa4) (this took some time to go through), then an Ethereum contract call to complete the transaction.
  * Step 2: [renBTC -> crvRenWSBTC](https://www.curve.fi/sbtc/deposit) in Curve
  * Step 3: [crvRenWSBTC -> Mintr LP](https://mintr.synthetix.io/)
    * No tokens output so check balance either in Mintr UI or [etherscan](https://etherscan.io/dapp/0x13c1542a468319688b89e323fe9a3be3a90ebb27#readContract)
* [Proof of Pre-Order token](https://twitter.com/mattmcd/status/1278293061148213248) for "The Infinite Machine" by [@CamiRusso](https://twitter.com/CamiRusso)

