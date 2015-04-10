Introduction
==============

_In <140 characters: Maximizing data quality in using paid crowds for objective and subjective encoding tasks_

## Intro

The internet is growing increasingly interactive as it matures.
Rather than merely transmitting information to readers, web pages allow their audience to react and interact with their information.
The products of these interactions are a trove of qualitative judgments, valuable to modeling information objects.
In recent years, this form of creation through collaboration has been studied as _crowdsourcing_.

There are many circumstances where access to human encoding and human judgments is invaluable to information science, such as in transcribing scanned material, organizing or judging the quality of documents within a collection, building evaluation datasets for information retrieval, or preparing training data for better inferential algorithms.
People can provide latent information about documents that would not be possible to ascertain computationally, such as quality judgments or higher-level thematic description.
They are also adept at critical actions such as correcting, describing in different language, or inferring relationships with other documents.
Most importantly, crowdsourcing looks at human contribution at scales that are difficult to attain in alternate ways.

<!-- Broad Research Question -->
However, humans have predictable and unpredictable biases that make it difficult to systematically adopt their contributions in an information system.
How do we control and interpret qualitative user contributions in an inherently quantitative system?

This work focuses on understanding the characteristics of data collected through crowdsourcing, toward two ends: awareness and data quality.
As will be demonstrated, crowdsourcing research is sensitive to various circumstances of instrumentation, context, and community.
In the space of awareness, this work seeks to _understand_ the intricacies of these biases: looking at how tasks are completed when they are more or less engaging, restrictive, or subjective.
Valid research needs to be aware of how circumstance affects crowds, as well as know what information is important to report for reproducibility.
Understanding leads to practical recommendations for maximizing data quality in crowdsourced data, and this study focuses on a priori instrumentation choices and posterior data normalization for improving how both subjective and objective tasks are collected.

<!-- Scoping -->

Crowdsourcing is a sprawling space.
This study necessarily focuses on a particular setting, microtasks in paid crowd platforms.
It is important to stay aware of the broader space of crowdsourcing and how characteristics of paid microtasks generalize to it.
However, in the interest of economy, discussion of broader generalization follows from secondary sources, while original research is conducted in paid microtasks spaces and speaks foremost to those spaces.

Chapter XX<!--TODO--> supplies a language for positioning this scope through a detailed Information Science-centric crowdsourcing typology.


# Scoping in Detail

- Reactive
- Paid
- Subjective and Objective
- Microtasks
   - In Recommendation and retrieval space


<!-- In particular, this study looks at the issue of recoverable error in human-contributed data, alternately viewed as intercoder reliability when studied from the data end.
Can error in descriptive crowdsourcing be accounted for, either at the time of data collection or afterward, in a manner that maximizes the intercoder reliability of contributions and subsequently the usefulness for information retrieval? -->

<!--### Hypothesis-->
I argue that the reliability of crowdsourced data can be improved by making an assumption that crowd contributors are honest-but-biased[^language]. This is an assumption supported by prior work and not uncommon in research on classification, such as the literature on intercoder reliability, but is understudied in crowd research.
The proposed study follows the hypothesis that such an assumption leads to
a) more algorithmically valuable crowdsourced description and
b) a greater proportion of useful contributions.


## Problem
### Research Questions
### Scope
## Relevance
## Chapter Outline

The following dissertation is organized into seven chapters:
  three chapters contextualizing this dissertation and crowdsourcing in general,
  three chapters contributing original research,
  and a summative conclusion chapter.

After the current introduction chapter, which discusses this project's research questions, scoping, rationale, and relevance, __Chapter 2__ provides a general overview of crowdsourcing.
Here, a reader less familiar with the history and significant general research in the area will be introduced to them.
  Chapter 2 presents, essentially, what the first few weeks of an introduction to crowdsourcing course would offer.
  _Chapter 3_ subsequently provides a typology of crowdsourcing, tailored to understanding the breadth of online crowd systems through an information science lens.
  As in the previous chapter, the typology is general, intended to provide a language for speaking about crowdsourcing in the reset of the dissertation.

_Chapter 4_ delves into the design of objective or normative tasks for paid crowdsourcing.
This is one of the most common uses of crowds, to collect or encode information with a ground truth or deriving a summative consensus.
Designing tasks that adequately motivate contributors and which collect the information that a requester thinks that are collecting is an important but often overlooked part of crowdsourcing. Presented in this project are three studies that ask, _how does crowdsourcing task design affect the resulting data?_ First, a small study tracks the differences in product rating habits by users of two differently designed systems. In that given example, the distribution of ratings shifts between the two systems, and the possible design reasons for this difference are discussed. Second, a study of paid music similarity judgments is presented, which finds systematic problems in the consistency of ground truth for a task of the Music Information Retrieval Exchange attributable to task design concerns. Finally, a new set of experiments directly compares the effect of design manipulations in a paid crowdsourcing platform. The same two tasks - an image retrieval relevance task and an image tagging task - are presented in drastically different ways, the designs motivated by incomplete or peripheral observations of past studies.

_Chapter 5_ looks into the interpretation of already collected objective or normative data from paid crowd tasks.
Particularly, this chapter focuses on methods to remove data variance and user noise. Post-hoc data corrections and problem contributor identification has been studied from numerous angles, so Chapter 5 is careful to present past work. In addition, a study on the sources of error in crowdsourced information retrieval relevance judgments is presented, looking at the problem from the contexts of agreement, experience, and temporality.

Finally, while paid crowdsourcing is often applied to objective or normative goals, _Chapter 6_ introduces a focus on subjective crowdsourcing, where the task goals are conditioned on a specific person's tastes or needs.
Building on work developed in <!--TODO cite-->, we present methods to perform subjective crowdsourcing for on-demand personalization, showing it to be feasible for our evaluated settings. Following from the earlier study on the effect of design manipulations for objective tasks, this chapter also studies the influence of task design changes in how crowds contribute using one of our subjective crowdsourcing protocols, taste-grokking.

## Summary of Findings

TODO

-------

# Notes

 Chapter outline:

- CHAPTER 1: Introduction
  - Overview
  - Scope: Maximizing ("understanding"?) data quality of information collected through crowdsourcing
  - Research questions
  - brief summary of findings
- CHAPTER 2: Brief Overview of Crowdsourcing (not dissertation specific, think of it as the first two classes of a course on Crowdsourcing)
- CHAPTER 3: Typology of Crowdsourcing in Information Science (iConference 2015)
  - Incidental crowdsourcing (rework DH paper)
  - Low-effort crowdsourcing (short reference to HCOMP poster)
  - (talk about paid vs. volunteered)
- CHAPTER 4: Designing Objective/Normative Tasks for Paid Crowdsourcing (Effect of design manipulations on data)
  - Literature review (introduce past in a way that my new research naturally follows. It should be clear 'why')
  - 4.1 Difference in rating distributions between differently designed Google and Amazon app stores (DH 2012, brief)
  - Image relevance judgments (new work)
  - 4.2: Recovering error from music similarity judgments (writing for JCDL)
  - 4.3: Design manipulations for tagging Pinterest (new work)
- CHAPTER 5: Interpreting Objective/Normative Tasks for Paid Crowdsourcing (how do you find and account for quality problems?)
  - Literature review
  - 5.1: Recovering error from relevant judgments (ASIS&T 2012)
  - 5.2: Relevant section of MIR study?
- CHAPTER 6: Subjective Tasks in Paid Crowdsourcing
  - 6.1 Literature review
  - 6.2 Personalized crowdsourcing (HCOMP, working on journal paper for JAIR awards special issue)
  - 6.3 Design manipulations for taste-grokking (new work)
- CHAPTER 7: Conclusions
  - RQs
  - Summary of findings (bold headings, easy to read: this should be the skimmable chapter of the dissertation)
