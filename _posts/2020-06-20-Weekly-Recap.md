---
layout: default
title: Weekly Recap 2020-06-20
headline: Weekly Recap 2020-06-20
abstract: Log of things seen in week 2020-06-14 to 2020-06-20 (updated mid week)
---

# 2020-06-14 Sunday

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

## [You Should Have Asked](https://english.emmaclit.com/2017/05/20/you-shouldve-asked/comment-page-9/)
On sharing the mental load in a relationship

# 2020-06-15 Monday
Retail shops in England reopen.

## [	Free Textbooks from Springer, Categorised](https://hnarayanan.github.io/springer-books/)
* [HN discussion](https://news.ycombinator.com/item?id=23520545) with suggestions of good books
* [Proofs from The Book](https://link.springer.com/book/10.1007%2F978-3-662-57265-8)
* [Principles of Quantum Mechanics, Shankar](https://link.springer.com/book/10.1007%2F978-1-4757-0576-8) was one of my undergraduate texts

## [Questions to help people decide what to learn](https://jvns.ca/blog/2020/06/14/questions-to-help-you-learn/)
* [Julia Evans](https://twitter.com/b0rk) on "a way to help people evaluate their own learning & figure out what to learn next"
* [Side-by-side question and answer format](https://questions.wizardzines.com/) similar to The Little Schemer

# 2020-06-16 Tuesday

## [HN: How many of you know that the team is working on something that no-one wants? (iism.org)](https://news.ycombinator.com/item?id=23524605)
* "we all know the project will fail unless someone develops well-perfoming, human-level AGI before Q4/2020"
* Did not read the article

## [Shadows of Stained Glass](https://nibnalin.me/dust-nib/shadows-of-stained-glass.html)
* "\[Paper\] analysing the films Akira and Ghost in the Shell \[using\] data analysis tools to make observations about “macro” trends in the films, and \[trying\] to rationalise these observations using scenes and clips."
* [HN discussion](https://news.ycombinator.com/item?id=23533283)
* Color analysis and chord diagrams, data visualization

## [Feynman Lectures on the Strong Interactions](https://www.math.columbia.edu/~woit/wordpress/?p=11782)
* [Feynman Lectures on the Strong Interactions notes on arXiv](https://arxiv.org/abs/2006.08594)
* [I tweeted](https://twitter.com/mattmcd/status/1272769162725687300)

## [The Sun seen through the Earth using neutrino light (2007)](http://strangepaths.com/the-sun-seen-through-the-earth-in-neutrino-light/2007/01/06/en/)
* [HN discussion](https://news.ycombinator.com/item?id=23528080)
  * [Comment links to Destruction of Nuclear Bombs Using Ultra-High Energy Neutrino Beam (2003) discussion](https://news.ycombinator.com/item?id=23528970)
  * [Destruction of Nuclear Bombs Using Ultra-High Energy Neutrino Beam (arXiv)](https://arxiv.org/abs/hep-ph/0305062)
  
## [Gated Linear Networks](https://arxiv.org/abs/1910.01526)
* "\[A\] new family of backpropagation-free neural architectures ... What distinguishes GLNs from contemporary neural networks is the distributed and local nature of their credit assignment mechanism; each neuron directly predicts the target, forgoing the ability to learn feature representations in favor of rapid online learning. Individual neurons can model nonlinear functions via the use of data-dependent gating in conjunction with online convex optimization."
* [DeepMind twitter thread on GLNs](https://twitter.com/DeepMind/status/1272460017153855489)
  * [Online Learning in Contextual Bandits using Gated Linear Networks](https://arxiv.org/abs/2002.11611) "GLNs are universal learners due to their use of data-dependent gating. This can also be exploited to drive exploration, which we demonstrate by achieving SOTA performance vs deep learning methods on a suite of contextual bandits tasks"
  * [Gaussian Gated Linear Networks](https://arxiv.org/abs/2006.05964) "GLNs are a meta-algorithm that can be instantiated with any Exponential Family distribution. We derive a multivariate Gaussian GLN & demonstrate competitive performance on regression challenges & application to denoising based density modelling."
* [HN discussion](https://news.ycombinator.com/item?id=23528247)

[Joel (one of the authors) responds in thread](https://news.ycombinator.com/item?id=23532072):
> 1) Indeed, GLNs don't learn features... but I would claim they do learn some notion of an intermediate representation, it's just different from the DL mainstream -- in particular its closely related to the inverse Radon transform in medical imaging.
> 2) Inputs which are similar in terms of cosine similarity will map to similar (data dependent) products of weight matrices, and thus behave similarly, which of course can affect performance in both good and bad ways. With the results we show on permuted MNIST, its well... just not particularly likely that they will interfere. This is a good thing -- why should completely different data distributions interfere with one another? The point is the method is resiliant to catastrophic forgetting when the cosine similarity between data items from different tasks is small. This highlights the different kind of inductive bias a halfspace gated GLN has compared to a Deep ReLu network.
> 3) Re bird example, that's slightly unfair. I am sure one could easily make use of the pre-trained resnet to provide informative features to a GLN -- it's early days for this method, hybrid systems haven't been investigated, so I don't know whether it would work better than current SOTA methods for image classification. But I would be pretty confident that some simple combination would work better than chopping the head off a pretrained network and fitting an SVM on top. This is all speculation on my part though. :)

## [Kaggle Halite by Two Sigma challenge](https://www.kaggle.com/c/halite/overview)
* Reinforcement learning game challenge
* [Intro to Game AI and Reinforcement Learning](https://www.kaggle.com/learn/intro-to-game-ai-and-reinforcement-learning)

## [Coronavirus: Dexamethasone proves first life-saving drug](https://www.bbc.co.uk/news/health-53061281)
* Good news on the COVID-19 front
* [HN discussion](https://news.ycombinator.com/item?id=23538131)
* [In The Pipeline Discussion (waiting)](https://blogs.sciencemag.org/pipeline/)

# 2020-06-17 Wednesday

## Releases
* [Bootstrap v5 alpha](https://blog.getbootstrap.com/2020/06/16/bootstrap-5-alpha/) - "Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit"
  * "Bootstrap no longer depends on jQuery and we’ve dropped support for Internet Explorer."
  * [HN discussion](https://news.ycombinator.com/item?id=23543277)
* [FFmpeg 4.3 (HN discussion)](https://news.ycombinator.com/item?id=23540704)

## [AWS Lambda can now use EFS](https://aws.amazon.com/blogs/aws/new-a-shared-file-system-for-your-lambda-functions/) 
  * shared filesystem for serverless 
  * Need to compare to existing approaches: S3, DynamoDB
  * [HN discussion](https://news.ycombinator.com/item?id=23543554)
  * [tl;dr: Cool! ... But, how does this handle NFS locking?](https://news.ycombinator.com/item?id=23547654)
  
## Blockchain Blockchain Blockchain
* [Binance launching crypto exchange in the UK](https://www.coindesk.com/binances-uk-exchange-institutions-regulated-crypto)
* [Interest-Bearing Stablecoin Pools Without Impermanent Loss](https://medium.com/balancer-protocol/zero-impermanent-loss-stablecoin-pool-with-lending-interests-a3da6d8bb782) - Balancer blog post from October 2019
* [rDAI](https://rdai.money/index.html) - stablecoin that splits principal and interest 
* [Ubisoft launches Rabbids Token crypto game to benefit UNICEF](https://decrypt.co/32654/ubisoft-launches-rabbids-token-crypto-game-benefit-unicef)

## Complex Adaptive Systems
* "Which are dispositional not causal" 
* [Cognitive Edge](https://cognitive-edge.com/): "Making sense of complexity in order to act" - Dave Snowden's company website
* [Cynefin framework](https://en.wikipedia.org/wiki/Cynefin_framework)
* [Thinking in Circles: An Essay on Ring Composition](https://www.amazon.co.uk/Thinking-Circles-Essay-Composition-Lectures/dp/0300167857) - one of the resources mentioned (haven't read)
* [Chiastic structure](https://en.wikipedia.org/wiki/Chiastic_structure) - as seen in 'Use of Weapons'

## [Announcing the Malleus Monstrorum Cthulhu Mythos Bestiary](https://mailchi.mp/636349ec4398/ab-chaos-the-chaosium-newsletter-563058)

## [Dark matter hunt yields unexplained signal](https://www.bbc.co.uk/news/science-environment-53085260)
