---
layout: default
title: Weekly Recap 2020-06-20
headline: Weekly Recap 2020-06-20
abstract: Cleaning up open Chrome tabs by bookmarking and documenting
---

# 2020-06-13

## [The rise of embarrassingly parallel serverless compute](https://davidwells.io/blog/rise-of-embarrassingly-parallel-serverless-compute)
* Run thousands of computations in parallel using AWS Lambda
* [HN discussion](https://news.ycombinator.com/item?id=23506637)
* [PyWren lets you run your existing python code at massive scale via AWS Lambda](http://pywren.io/)
* [Occupy the Cloud: Distributed Computing for the 99% (arXiv)](https://arxiv.org/abs/1702.04024)
* [I tweeted](https://twitter.com/mattmcd/status/1272140985556971520)

## [SQLite As An Application File Format](https://sqlite.org/appfileformat.html)
* "An SQLite database file with a defined schema often makes an excellent application file format."
* [HN discussion](https://news.ycombinator.com/item?id=23508923)

## [Rise of the Liquidity Robots: How Automated Market Makers work & the differences between them](https://bankless.substack.com/p/rise-of-the-liquidity-robots-)
Copy of points from article:
* Bancor - 2017
  * First major smart contract AMM out in the wild
* [Uniswap](https://uniswap.org/) - 2018
  * Main goal: a decentralized protocol for token liquidity
  * Simpler bonding curve than Bancor
  * Used Ether as a hub currency
  * Very gas efficient
  * Not very capital efficient
* [Curve](https://curve.fi/) (aka Stableswap) - 2020
  * Main goal: low slippage, stablecoin-to-stablecoin trades
  * Extremely capital efficient => very low slippage
  * Multidimensional bonding surface, like Balancer
  * Works very well for stablecoins, does not work well for non-stablecoins
  * Relatively risky bonding curve
* [Balancer](https://balancer.finance/) - 2020
  * Main goal: decentralized Vanguard
  * Generalizes Uniswap’s bonding curve to a multi-dimensional surface 
  * + Portfolio model 2x more capital efficient than hub-spoke
  * - Portfolio model can fragment liquidity
* [Shell Protocol](http://shellprotocol.io/) - ETA 2020 
  * Low slippage trades
  * High liquidity provider profits
  * Weighted, multi-dimensional pools
  * Support any flavor of stablecoin (e.g. Dai, cDai and Chai)
  * Granular customization of AMM behavior
* "They differ in subtle but profound ways: their primary currency pair, the design of their bonding curves, and reward structures for liquidity providers are different for each. Some are even adding the ability to create pools containing multiple assets—a sophistication which could bring ETF-like functionality to AMMs."
