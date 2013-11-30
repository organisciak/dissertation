INTRODUCTION
=============

> In these democratic days, any investigation in the trustworthiness and peculiarities of popular judgments is of interest
> -- Francis Gaston, 1907
<!--TODO: Add citation to refs-->

## Notes

## Introduction

Effective information retrieval depends on reliable, detailed information to index.
The broad phenomenon of crowdsourcing has the potential to improve retrieval over web documents by producing descriptive metadata about documents.
Since crowdsourcing considers humans at large-scales, it can be used for qualitative and subjective information at scales useful to retrieval.
<!--Written roughly to dump, TODO wordsmith-->

<!-- Old text
The internet is growing increasingly interactive as it matures.
Rather than simply transmitting information to readers, web pages allow their audience to react and interact with their information.
The products of these interactions are a trove of qualitative judgements, valuable to understanding information objects.
-->

### Broad Research Question

However, humans have predictable and unpredictable biases that make it difficult to systematically adopt their contributions in an information system.
How do we interpret qualitative user contributions in an inherently quantitative system?
This study looks at the effect of human biases on crowdsourcing in information retrieval and how they affects the product of human contributions.

### Specific Research Question

Specifically: can bias in _descriptive crowdsourcing_ be accounted for in a manner that improves the information-theoretic quality of the contribution, either at the time of data collection or afterward?
<!--
 (TODO: lowers entropy?) of the contribution. ( for use in ranked retrieval?)
-->

### Hypothesis

The proposed study makes an assumption that crowd contributors are honest but inherently biased, with the hypothesis that such a assumption leads to 
a) more algorithmically valuable crowdsourced description and 
b) a greater proportion of useful contributions.

### Approach

This hypothesis will be applied in two different sites of crowdsourcing:

 * in the design of contribution tasks in order to minimize bias, and

 * in the normalization of contributions after they have already been collected.

Doing so will both adopt work that I have performed during my doctoral studies and contribute new research.

### Take Away

A reader of the proposed dissertation will understand:

 * the issues related to using crowdsourcing contributions for information retrieval indexing,

 * the effect of designing 'quicker' or 'slower' collection tasks on a paid crowdsourcing platform,
 with a sense of how this information generalizes to different tasks or collection spaces,

 * corrective measures for human bias in already-collected descriptive metadata,
    particularly compus-based methods for online review normalization and
    error-reducing voting techniques for crowdsourced relevance judgments,
and

 * the tractability of making an assumption of honest-but-biased contributors

## Crowdsourcing
 
<!-- From earlier draft -->
Crowdsourcing is the distributed, large-scale collaboration of users contributing to a common product.
Significantly, the term is a verb, describing an act as seen from the system-end.
Users do not necessarily collaborate directly with each other -- though they can -- so the crowd refers broadly to the collective users of the system.
Sourcing describes the act of soliciting user contribution, regardless of whether it is successfully executed or not.
Crowdsourcing is an umbrella term preceded by a number of more narrowly scoped concepts, such as 
commons-based peer production \cite{benkler_wealth_2006},
open source software development \cite{raymond_cathedral_1999, lakhani_how_2003},
and human computation \cite{von_ahn_games_2006, law_human_2011}. <--_ -->

Surowiecki discussed aggregate crowd intelligence as the ‘wisdom of the crowds’ \cite{surowiecki_wisdom_2004}; one way to interpret crowdsourcing is the process of trying to utilize that wisdom.

## Problem

### Assumption of Honesty

Much crowdsourcing research makes an adversarial assumption.
<!-- TODO: Research this statement and back it up. -->

<!--
### Notes

* Crowdsourcing aggregates contributions from human participants/workers. While such contributions are helpful for understanding the content in an information system, they are 

Why standardize crowdsourcing collection?
- With large enough numbers, it doesn't matter.
- However, a cleaner input makes you reliant on less workers, which is good.
-->

### Text

## Relevance

### Practical application
The contribution of this work is the application of human corrective techniques to the encoding of metadata about existing information object, and the broader understanding of the nature of such contributions.

<!--TODO: crowdsourcing for encoding existing information with more informative metadata, with a goal of improving information retrieval systems. By focusing on a mix -->

### Relevance in Information Science
Information science deals with many information objects, giving crowdsourcing considerable potential as a tool for item description.
By collecting human judgments about the quality of information...

## Collection time

## Methodology

### Definitions

Before proceeding, the terminology of this study should be established. As this work spans multiple domains, and makes reference to recently introduced concepts, it is important to establish a shared understanding of language within these pages.

Note that the treatment here is cursory; a more in-depth look can be found in Chapter 2. (TODO better reference)

#### Crowdsourcing

#### Descriptive crowdsourcing

#### Human computation

#### Worker (paid)

#### Volunteer, contributor

#### Human bias?

### Posterior Corrections of Bias

## Chapter Outline

The proposed dissertation will follow the following structure, delineated by chapters.

#### Introduction

The first chapter will introduce the problem of human bias in crowdsourcing and how it affects computational uses of contributed data. Subsequently, the assumption of honest but biased contributors will be outlined, and the hypothesis on this assumption will be outlined along with the study that will be pursued to test it.

#### Literature Review

<!-- TODO look up text previously written about this -->

#### A Priori Corrections for Bias

#### Posterior Corrections for Bias

