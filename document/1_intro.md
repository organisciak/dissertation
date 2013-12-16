INTRODUCTION
=============
_ _
> In these democratic days, any investigation in the trustworthiness and peculiarities of popular judgments is of interest
> -- Francis Gaston, 1907
<!--TODO: Add citation to refs-->

## Introduction

Effective information retrieval depends on reliable, detailed information to index.
The broad phenomenon of crowdsourcing has the potential to improve retrieval over web documents by producing descriptive metadata about documents.
Since crowdsourcing considers humans at large-scales, it can be used for qualitative and subjective information at scales useful to retrieval.

The internet is growing increasingly interactive as it matures.
Rather than simply transmitting information to readers, web pages allow their audience to react and interact with their information.
The products of these interactions are a trove of qualitative judgements, valuable to understanding information objects.

### Broad Research Question

However, humans have predictable and unpredictable biases that make it difficult to systematically adopt their contributions in an information system.
How do we interpret qualitative user contributions in an inherently quantitative system?
This study looks at the effect of human biases on crowdsourcing in information retrieval and how they affects the product of human contributions.

### Specific Research Question

Specifically: can human bias in _descriptive crowdsourcing_ be accounted, either at the time of data collection or afterward, in a manner that maximizes the information gain for information retrieval?

### Hypothesis

The proposed study makes an assumption that crowd contributors are honest but inherently biased, with the hypothesis that such a assumption leads to 
a) more algorithmically valuable crowdsourced description and 
b) a greater proportion of useful contributions.

### Approach

This hypothesis will be applied in two different sites of crowdsourcing:

 * in the design of contribution tasks in order to minimize bias, and
 * in the normalization of contributions after they have already been collected.

Doing so will both adopt work that I have performed during my doctoral studies and contribute new research.

Importantly, this study cannot account for all possible situations and methods for accounting for human bias before and after crowdsourcing collection.
Instead, each chapter will focus on a more narrowly scoped sub-problem in the area, to give this study grounding for a thorough exploration of the larger problem space.

### Take Away

A reader of the proposed dissertation will understand:

 * the issues related to using crowdsourcing contributions for information retrieval indexing,
 * the effect of designing 'quicker' or 'slower' collection tasks on a paid crowdsourcing platform,
    with a sense of how this information generalizes to different tasks or collection spaces,
 * corrective measures for human bias in already-collected descriptive metadata,
    particularly corpus-based methods for online review normalization and
    error-reducing voting techniques for crowdsourced relevance judgments,
   and
 * the tractability of making an assumption of honest-but-biased contributors.

## Crowdsourcing
 
Crowdsourcing is the distributed, large-scale collaboration of users contributing to a common product.
Significantly, the term describes the _act_ of a system opening up for contributions from distributed users.
Users do not necessarily collaborate directly with each other -- though they can -- so the crowd in the term refers broadly to the collective users of the system.
Sourcing describes the act of soliciting user contribution, regardless of whether it is successfully executed or not.

Crowdsourcing is an umbrella term preceded by a number of more narrowly scoped concepts, such as 
commons-based peer production [@benkler_wealth_2006],
open source software development [@raymond_cathedral_1999; @lakhani_how_2003],
and human computation [@von_ahn_games_2006; @law_human_2011] <!--_-->

Surowiecki discussed aggregate crowd intelligence as the ‘wisdom of the crowds’ [@surowiecki_wisdom_2004]; one way to interpret crowdsourcing is the process of trying to utilize that wisdom.

## Problem

Many of the benefits of crowdsourcing follow from the fact that humans approach tasks in qualitative and abstract ways that are difficult to emulate algorithmically.
A human can respond to complex questions on a Q&A website, judge the quality of a restaurant/product/film, or decipher a sloppy piece of handwriting.

Since many information systems are intended to serve an information-seeking user, the information that crowdsourcing collects can also better embody the needs of user.
For example, a user-tagged image in a museum collection can fill in colloquial terms that the more formal vocabulary employed by a cataloguer [@springer_for_2008; trant_investigating_2006].

While the complex qualitative actions of human contributions are the cornerstone of such contributions' usefulness, they present a challenge for algorithmic use, because they can be highly variable.

### Assumption of Honesty

Much crowdsourcing research makes an adversarial assumption, focusing on removing variability by detecting or smoothing over cheaters.
<!-- TODO: Research this statement and back it up. -->

For example, Eickhoff et al. note that a notable proportion of Mechanical Turk workers sacrifice correctness for speed, in order to maximise their profits <!-- TODO cite -->.

However, this behaviour is not generalizable. While observable in some cases [<!--TODO cite-->], including suspicious user analysis that we observed during <!--TODO cite MSR--><!-- TODO FIGURE-->, other studies on contribution conflict it.
In @organisciak_evaluating_2012, we found that the fastest workers generally did not contribute worse labor, except for one case: when workers spent less time on the instructions and first task.
The fact that time was only significant in this one case suggests that the effect for this particular dataset was not a result of 'cheaters' as much as workers that did not interpret the instructions close enough.
Similarly, during the research for <!--TODO cite MSR--> we found that slowing workers down resulted in lower quality contributions, both in terms of internal consistency by workers and algorithmic quality of the data.

Following from the mixed signals accounting for low-quality results, this research assumes that the quality of a contribution is not only affected by the objective quality of the worker, but also due to subjective differences in the worker's perception of the task.

\begin{equation}
Contribution = truth + \text{quality bias} + \text{perception bias}
\end{equation}

This simplifying assumption underlies this proposal.
While keeping the possibility of variance from good or bad quality contributors on the radar, it is pursuing an understanding of that second bias: when contributors introduce variance that is stimulated by differing interpretations of task, ones that deviate from the instructive or normative ways to approach the task.

### Biases

<!-- TODO: More details on biases -->

### Benefits of Recovering Error from Human Biases 

Why standardize crowdsourcing collection?
With large enough numbers, it doesn't matter.
Problems of user quality get smoothed over when enough honest people collaborate, while problems stemming from perception biases in many cases will converge <!-- TODO: pickup where I left off -->
However, a cleaner input makes you reliant on less workers, which is good.


## Relevance

### Practical application
The contribution of this work is the application of human corrective techniques to the encoding of metadata about existing information object, and the broader understanding of the nature of such contributions.

<!--TODO: crowdsourcing for encoding existing information with more informative metadata, with a goal of improving information retrieval systems. By focusing on a mix -->

### Relevance in Information Science
Information science deals with many information objects, giving crowdsourcing considerable potential as a tool for item description.
By collecting human judgments about the quality of information...

## Collection time

## Methodology

## Definitions and important distinctions

Before proceeding, the terminology of this study should be established. As this work spans multiple domains, and makes reference to recently introduced concepts, it is important to establish a shared understanding of language within these pages.

Note that the treatment here is cursory; a more in-depth look can be found in Chapter 2. (TODO better reference)

### Crowdsourcing

#### Descriptive crowdsourcing

This paper focuses on crowdsourcing for descriptive metadata.

The distinction here is that the human contributions are reactive.
There is an information object that already exists, and crowdsourcing workers add information about it.
The response can be subjective, such as ratings or interpretations, or objective, such as descriptions or corrections.

Crowdsourcing descriptive metadata stands in contrast to crowdsourcing that _creates_, introducing new information objects into the world. One example of this is T-shirt design contests on Threadless[^1]. 

[^1]: http://www.threadless.com

This approach to crowdsourcing was looked at in  @organisciak_incidental_2013 when defining the concept of _incidental crowdsourcing_.
Incidental crowdsourcing is an approach to crowdsourcing that is unobtrusive and non-critical.
This form of peripheral collection of data was noted to favour descriptive activities. 

##### Types of Tasks

### Human computation

### Worker (paid)

### Volunteer, contributor

### Human bias?

### Posterior Corrections of Bias

## Chapter Outline

The proposed dissertation will follow the following structure, delineated by chapters.

#### Introduction

The first chapter will introduce the problem of human bias in crowdsourcing and how it affects computational uses of contributed data. Subsequently, the assumption of honest but biased contributors will be outlined, and the hypothesis on this assumption will be outlined along with the study that will be pursued to test it.

#### Literature Review

<!-- TODO look up text previously written about this -->

#### A Priori Corrections for Bias

#### Posterior Corrections for Bias

