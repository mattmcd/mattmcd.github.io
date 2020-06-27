---
layout: default
title: Weekly Recap 2020-06-27
headline: Weekly Recap 2020-06-27
abstract: Log of things seen in week 2020-06-21 to 2020-06-27 (updated mid week)
---

## Blockchain blockchain blockchain
* [Getting Started with Bankless](https://bankless.substack.com/p/-guide-1-starting-with-bankless)
* [Getting +100% APR on Curve](https://twitter.com/Darrenlautf/status/1274182004733403139) by [Darren Lau](https://twitter.com/Darrenlautf)
  * [Driven by COMP yield farming](https://twitter.com/Darrenlautf/status/1274411995345719296) - The high return on
    Curve is for liquidity providers supplying stablecoins to the borrowers. Borrowers then lend to Compound to farm COMP tokens.  
* [Curve Pool Registry](https://github.com/curvefi/curve-pool-registry/blob/b17/doc/notebook/playbook.ipynb)
* [How to DeFi](https://landing.coingecko.com/how-to-defi/) (book)
* [A day in the life of an Asset Manager in the summer of 2030…](https://medium.com/melonprotocol/a-day-in-the-life-of-an-asset-manager-in-the-summer-of-2030-4f18009a5020)
  * [Melon protocol](https://melonprotocol.com/) for asset management
  * [Messari](https://messari.io/) for screening
  * [Santiment](https://santiment.net/) for sentiment analysis
  * [The Graph](https://thegraph.com/) for GraphQL Web3 queries for on-chain monitoring
  * [iden3](https://iden3.io/) for identity management and KYC
* [Aquaponic Yield Farming](https://bankless.substack.com/p/aquaponic-yield-farming) via [@delitzer](https://twitter.com/delitzer/status/1275843818202394630)
  * extension of [Superfluid Collateral](https://tokeneconomy.co/superfluid-collateral-in-open-finance-8c3db15efac): liquid collateral would be something like ETH deposited in Compound for cETH, which is then used as collateral to mint DAI (if MCD supported it).  Superfluid collateral would be Uniswap pool tokens used as collateral for minting DAI.
  * "[rehypothecation](https://www.investopedia.com/terms/r/rehypothecation.asp): a lender taking an asset posted as collateral by a borrower, and using that same asset as collateral to take out another loan."
  * "Aquaponic systems combine aquaculture (raising aquatic animals such as fish or crayfish) with hydroponics (growing plants such as tomatoes or lettuce in water rather than soil). The two activities are symbiotic, with the waste from the aquaculture system being broken down into nutrients that feed the hydroponic system, and the cleaned water then being circulated back into the aquaculture system. Combining the two processes yields benefits for both."
  * "Lending and exchange protocols, particularly ones that utilize pooled liquidity and automated market makers, are naturally symbiotic."
* [Polymarket](https://www.poly.market/discover) prediction market
* 
* Tools
  * [ledger-eth-lib](https://github.com/mikeshultz/ledger-eth-lib) python package for using Ledger hardware wallets
  * [ledger-app-eth](https://github.com/LedgerHQ/app-ethereum) "Ethereum wallet application framework for Ledger Blue, Nano S and Nano X"
  * [Brownie](https://eth-brownie.readthedocs.io/en/stable/index.html) "Brownie is a Python-based development and testing framework for smart contracts targeting the Ethereum Virtual Machine."  Basically a python version of [truffle](https://www.trufflesuite.com/) - see [Introducing Brownie](https://medium.com/@iamdefinitelyahuman/introducing-brownie-a763859409ca) blogpost

## AI
* [Responsible AI Licenses (RAIL)](https://www.licenses.ai/ai-licenses/)
  * [OSS License](https://www.licenses.ai/open-source-license)
  * [I tweeted](https://twitter.com/mattmcd/status/1274636736950349824) "Reading Responsible AI License https://licenses.ai/open-source-license I'm not sure that Section 3.4.vii 'restriction on using  metabolic data for crime prediction' allows #COVID19 tracing applications (e.g. Oura),  assuming non-compliance with public health requirements is a criminal violation"
* [Machine Learning on Edge and Mobile Devices](https://qconsf.com/system/files/presentation-slides/daniel_situnayake_-_tensorflow_lite_-_qcon_sf.pdf) (pdf)
* [Tensorflow on edge, or – Building a “smart” security camera with a Raspberry Pi](https://chollinger.com/blog/2019/12/tensorflow-on-edge-or-building-a-smart-security-camera-with-a-raspberry-pi/)  ([HN discussion](https://news.ycombinator.com/item?id=23593439))
* [Discovering Symbolic Models from Deep Learning with Inductive Biases](https://www.youtube.com/watch?v=LMb5tvW-UoQ) on [@ykilcher](https://twitter.com/ykilcher) Papers Explained channel
  * "This paper combines Graph Networks with symbolic regression and shows that the strong inductive biases of these models can be used to derive accurate symbolic equations from observation data."
  * Interesting because once you have some symbolic equations you can do things like take derivatives to get rates of change, integrate to get to future states etc.
* [What a machine learning tool that turns Obama white can (and can’t) tell us about AI bias](https://www.theverge.com/21298762/face-depixelizer-ai-machine-learning-tool-pulse-stylegan-obama-bias)
* [Accelerator Power Hour: How to Compete with GPUs](https://www.kaggle.com/cdeotte/how-to-compete-with-gpus-workshop) with Kaggle grandmaster Chris Deotte
* [Accelerator Power Hour: PyTorch + TPU](https://www.kaggle.com/abhishek/accelerator-power-hour-pytorch-tpu) with Kaggle grandmaster Abhishek Thakur
  * [WTFML: Well That's Fantastic Machine Learning](https://github.com/abhishekkrthakur/wtfml)
  * [Albumentations](https://github.com/albumentations-team/albumentations)
  
## Twitter
* ["How Graph Networks can learn Newtonian Physics and Dark Matter!"](https://twitter.com/ykilcher/status/1276158135258972161) by [@ykilcher](https://twitter.com/ykilcher)
* ["Great way to share http://arxiv.org papers with notes, scribbles and annotations directly in the pdf!"](https://twitter.com/hardmaru/status/1275690178699542529) by [@hardmaru](https://twitter.com/hardmaru)
* ["Self-supervised learning is having a big impact in ML, but can it give agents general propositional knowledge of their environment?"](https://twitter.com/DeepMind/status/1275742787447685126) by [@DeepMind](https://twitter.com/DeepMind)
* ["Things I wish I'd known sooner"](https://twitter.com/QuinnyPig/status/1275623130447265793) by [@QuinnyPig](https://twitter.com/QuinnyPig)
* ["200 tools for developing and deploying Deep Learning models"](https://twitter.com/chipro/status/1275289406748758021) by [@chipro](https://twitter.com/chipro)


## Tools
* [Figma](https://news.ycombinator.com/item?id=23584954)
* [Written Communication is a Remote Work Superpower](https://news.ycombinator.com/item?id=23577228)
* [GitBook](https://www.gitbook.com/) "Document everything!" in git

## Misc
* [A/B Street](https://github.com/dabreegster/abstreet/blob/master/README.md) city simulation

