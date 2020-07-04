---
layout: default
title: Weekly Recap 2020-07-04
headline: Weekly Recap 2020-07-04
abstract: Log of things seen in week 2020-06-28 to 2020-07-04 (updated mid week)
---

# Blockchain Blockchain Blockchain
Tried out some of the liquidity provision protocols and yield farming.  Currently down about $50 in Coinbase fees and gas fees.

* Deposited 500 DAI in [Compound](https://app.compound.finance/) to test UI and COMP liquidity mining
  * A couple of days later the [COMP distribution changed](https://compound.finance/governance/proposals/11?target_network=mainnet) so DAI interest rate increased.  Currently getting 3.13% APY
* Deposited 500 DAI in [Aave Uniswap Market](https://app.aave.com/reserve-overview/UNIDAI-0x6b175474e89094c44da98b954eedeac495271d0f0x7fd53085b9a29d236235d6fc593b47c9c33429f1)  Currently getting 8.09% APY
  * Interesting because the deposit is borrowed to provide liquidity to a Uniswap automated market maker 
* Deposited 0.02BTC into [Synthetix BTC Yield Farming pool](https://blog.synthetix.io/btc-yield-farming-pool/)
  * Step 1: [BTC -> renBTC](https://bridge.renproject.io/) - first a transfer of BTC from wallet to RenBridge in a [BTC transaction](https://sochain.com/tx/BTC/fa200a89631deb3698d2a5f8d3c56223a957e15f98a9e274356ac596670cefa4) (this took some time to go through), then an Ethereum contract call to complete the transaction.
  * Step 2: [renBTC -> crvRenWSBTC](https://www.curve.fi/sbtc/deposit) in Curve
  * Step 3: [crvRenWSBTC -> Mintr LP](https://mintr.synthetix.io/) - No tokens output so check balance either in Mintr UI or [etherscan](https://etherscan.io/dapp/0x13c1542a468319688b89e323fe9a3be3a90ebb27#readContract)
* [Proof of Pre-Order token](https://twitter.com/mattmcd/status/1278293061148213248) for "The Infinite Machine" by [@CamiRusso](https://twitter.com/CamiRusso)
* [Actus Liquidity Incentives & DeFi Roadmap](https://blog.auctus.org/auctus-liquidity-incentives-defi-roadmap-61a594b0eb6e) for on-chain options
* [Lien stablecoin](https://medium.com/lien-finance/lien-a-new-crypto-backed-stable-coin-without-over-collateralization-6a145d8fb4a4) splits volatile assests into stable and liquid components
  * [Lien whitepaper](https://lien.finance/pdf/iDOLWP_v1.pdf)
* [DeFi Money Market governance token](https://medium.com/dmm-dao/defi-money-market-dmm-dmg-governance-token-public-sale-b6dd09f90eff)
* [People, Pizzas and Packages: a delivery network for the 21st century](https://medium.com/@toby.simpson/people-pizzas-and-packages-a-delivery-network-for-the-21st-century-50e6218e748f)
* [MCDEX 10x perpetual swaps](https://medium.com/@montecarlodex/mcdex-officially-launches-its-perpetual-contracts-with-up-to-10x-leverage-e9464cfcbc60)
* [DeFi status report: Black Thursday](https://defipulse.com/blog/defi-status-report-black-thursday/)

# AI
* [Lessons from the PULSE Model and Discussion](https://thegradient.pub/pulse-lessons/)
  * [Yann LeCun quits Twitter amid acrimonious exchanges on AI bias](https://news.ycombinator.com/item?id=23696427)
* [Gradient Estimation with Stochastic Softmax Tricks](https://arxiv.org/abs/2006.08063)
* [Neural Relational Inference for Interacting Systems](https://arxiv.org/abs/1802.04687)
* [Discovering Symbolic Models from Deep Learning with Inductive Biases](https://arxiv.org/abs/2006.11287)
* [cvxplayers](https://github.com/cvxgrp/cvxpylayers/) differentiable convex optimization
* [Learning to Cartooonize Using White Box Representations](https://news.ycombinator.com/item?id=23685386)

# Twitter / HN
* [Judea Pearl on the importance of causality for pooling data](https://twitter.com/yudapearl/status/1279289663950213120)
  * [Simpson's paradox in Covid-19 case fatality rates: a mediation analysis of age-related causal effects](https://arxiv.org/abs/2005.07180)
* [ALife on 'MOdeling Life'](https://twitter.com/AlifePapers/status/1279037183014440960)
  * [Modeling Life: The Mathematics of Biological Systems](https://link.springer.com/book/10.1007/978-3-319-59731-7#toc)
* [Recommended Math Books for a Teenager](https://news.ycombinator.com/item?id=23711942)
* [Queues are Databases (1995)](https://news.ycombinator.com/item?id=23727877)
* [People who can't see things in their mind could have memory trouble too: study](https://news.ycombinator.com/item?id=23689667)
* [Deep Chernoff Faces](https://news.ycombinator.com/item?id=23679014)
* [All About Modelica](https://marcobonvini.com/modelica/2020/06/29/all-about-modelica.html) via [HN](https://news.ycombinator.com/item?id=23690788)
* [	Ask HN: After Slate Star Codex, where are the nuanced discussions?](https://news.ycombinator.com/item?id=23719376)
