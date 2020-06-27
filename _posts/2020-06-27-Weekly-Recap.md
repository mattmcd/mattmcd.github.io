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
* [Synthetix BTC yield farming pool](https://blog.synthetix.io/btc-yield-farming-pool/)
* [Synthetix: The Past Present and Future interview (Feb 2020)](https://blog.synthetix.io/nocturnalsheet-interview-kain/)
* [Strike protocol](https://medium.com/@strikeprotocol/monthly-update-may-2020-9c3bc698f161) - "Decentralized Perpetual Swaps for any Asset"
* [Amplified Liquidity: Designing Capital Efficient Automated Market Makers in Bancor V2](https://blog.bancor.network/amplified-liquidity-designing-capital-efficient-automated-market-makers-in-bancor-v2-3cec8891c3a1)
* [Intro to Celo](https://medium.com/celoorg/an-introductory-guide-to-celo-b185c62d3067) - mobile first blockchain for anyone with a basic smartphone
* Lots of Liquidity Mining / Yield Farming articles after the Compound COMP token release last week and price spike
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
* [Kaggle TPUs YouTube Playlist](https://www.youtube.com/playlist?list=PLqFaTIg4myu-1c3ygYzakW8-hNzQG59-5)
  
## Twitter
* ["How Graph Networks can learn Newtonian Physics and Dark Matter!"](https://twitter.com/ykilcher/status/1276158135258972161) by [@ykilcher](https://twitter.com/ykilcher)
* ["Great way to share http://arxiv.org papers with notes, scribbles and annotations directly in the pdf!"](https://twitter.com/hardmaru/status/1275690178699542529) by [@hardmaru](https://twitter.com/hardmaru)
* ["Self-supervised learning is having a big impact in ML, but can it give agents general propositional knowledge of their environment?"](https://twitter.com/DeepMind/status/1275742787447685126) by [@DeepMind](https://twitter.com/DeepMind)
* ["Things I wish I'd known sooner"](https://twitter.com/QuinnyPig/status/1275623130447265793) by [@QuinnyPig](https://twitter.com/QuinnyPig)
* ["200 tools for developing and deploying Deep Learning models"](https://twitter.com/chipro/status/1275289406748758021) by [@chipro](https://twitter.com/chipro)
* [Kieron Gillan is doing a WH40K comic](https://twitter.com/kierongillen/status/1276159689332609027)
* [Depth sensing without a depth sensor using AI on Android](https://twitter.com/claybavor/status/1276208535039168512) by [@claybavor](https://twitter.com/claybavor)
* [Machine Learning Design Patterns book](https://twitter.com/SRobTweets/status/1276279118255054848) by [@SRobTweets](https://twitter.com/SRobTweets)
* [TensorFlow Lite and Firebase](https://twitter.com/TensorFlow/status/1276561174620893184)
* 

## Tools
* [Figma](https://news.ycombinator.com/item?id=23584954)
* [Written Communication is a Remote Work Superpower](https://news.ycombinator.com/item?id=23577228)
* [GitBook](https://www.gitbook.com/) "Document everything!" in git
* [ML Ops on GitHub](http://mlops-github.com/)
* [Martin Fowler on branching patterns](https://martinfowler.com/articles/branching-patterns.html) via [The problem with GitFlow (HN)](https://news.ycombinator.com/item?id=23622071)
* [Netlify: deploy React apps in 30 seconds](https://www.netlify.com/blog/2016/07/22/deploy-react-apps-in-less-than-30-seconds/)
  * 30 seconds does not include setting up GitHub permissions if you want to do CI/CD, nor domain names for CORS 
* [Amazon Honeycode](https://aws.amazon.com/blogs/aws/introducing-amazon-honeycode-build-web-mobile-apps-without-writing-code/) "build mobile apps without writing code"
* [The Hitchhiker's Guide to PlantUML](https://crashedmind.github.io/PlantUMLHitchhikersGuide/)


## Misc
* [A/B Street](https://github.com/dabreegster/abstreet/blob/master/README.md) city simulation
* [Narrative Collapse](https://theconvivialsociety.substack.com/p/narrative-collapse)
  * Narratives as a technology to make sense of of our environment - who am I, what am I doing
  * "stories shape our identity, grant to us a sense of direction, and play an important role in our interpretation of the world"
  * "Digital media introduced a new scale, pace, and pattern to human communication, and, in this way, altered how the world is perceived."
  * "with regards to pattern, we encounter it both in novel social contexts and in a form that bears greater resemblance to a database than a story."
  * Narrative Collapse = more of our information is coming from database type access as information points from competing narratives with no overarching framing of the story.  We are left to create our own stories.
* [The Kawaiisation of Product Design (HN)](https://news.ycombinator.com/item?id=23243646)
* [React Kawaii (HN)](https://news.ycombinator.com/item?id=18756926)
* [Exploration of Generative Art (HN)](https://news.ycombinator.com/item?id=23621022)
* [Teaching Physics to Neural Networks removes 'chaos blindness' (HN)](https://news.ycombinator.com/item?id=23597426)
* [Occulus Go being sunsetted, easier app distribution of Occulus Quest](https://news.ycombinator.com/item?id=23617822)
* [Cynefin - can Vige make sense in different domain?](https://www.vige.se/blog/2020/6/20/cynefinvige) - cute comic on Cynefin
* [Don't go back to normal](https://dontgobacktonormal.uk/) - "We must re-imagine every corner of society, from food systems to education to how we use technology, how we do waste, how we generate energy, and the rhythms and behaviours with which we live our lives"
* [Terence McGhee: Tech's Most Dangerous Blog](https://terencemcghee.com/)
* [Tatiana Mac](https://tatianamac.com/) "is an American engineer who builds inclusive, accessible, and ethical products with thoughtful practices."
