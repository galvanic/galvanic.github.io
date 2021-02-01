---
date: "2020-11-17"
title: Uses of caching in MLE
---

Another term for it is memoising.

Useful in production but also for rapid prototyping.

- mapping from some input id to the result
- given a black box model, only useful if there’s an uid mapped to the input
  - eg. at a previous job wrt when i was doing research & often used the same input data
- useful if the model is very big (& therefore slow)
  - useful wherever in the system there’s a bottleneck
    - might be the network being slow & therefore caching locally
