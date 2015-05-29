Introduction
==============

_In <140 characters: Maximizing data quality in using paid crowds for objective and subjective encoding tasks_

## Intro

\newthought{The internet} is growing increasingly interactive as it matures.
Rather than merely transmitting information to readers, web pages allow their audience to react and interact with their information.
The products of these interactions are a trove of qualitative judgments, valuable to modeling information objects.
In recent years, this form of creation through collaboration has been studied as _crowdsourcing_.

There are many circumstances where access to human encoding and human judgments is invaluable to information science, such as in transcribing scanned material, organizing or judging the quality of documents within a collection, building evaluation datasets for information retrieval, or preparing training data for better inferential algorithms.
People can provide latent information about documents that would not be possible to ascertain computationally, such as quality judgments or higher-level thematic description.
They are also adept at critical actions such as correcting, describing in different language, or inferring relationships with other documents.
Most importantly, crowdsourcing looks at human contribution at scales that are difficult to attain in alternate ways.

<!-- Broad Research Question -->
\newthought{However}, humans have predictable and unpredictable biases that make it difficult to systematically adopt their contributions in an information system.
How do we control and interpret qualitative user contributions in an inherently quantitative system?

This work focuses on understanding the characteristics of data collected through crowdsourcing, toward two ends: awareness and data quality.
As will be demonstrated, crowdsourcing research is sensitive to various circumstances of instrumentation, context, and community.
In the space of awareness, this work seeks to _understand_ the intricacies of these biases: looking at how tasks are completed when they are more or less engaging, restrictive, or subjective.
Valid research needs to be aware of how circumstance affects crowds, as well as know what information is important to report for reproducibility.
Understanding leads to practical recommendations for maximizing data quality in crowdsourced data, and this study focuses on a priori instrumentation choices and posterior data normalization for improving how both subjective and objective tasks are collected.

<!-- Scoping -->

\newthought{This work focuses on} a particular type of crowd production -- metadata about existing information objects -- and a particular form of collection: microtasks in paid crowd platforms.
It does look at both subjective and objective types of tasks however.

It is important to stay aware of the broader space of crowdsourcing and how characteristics of paid microtasks generalize to it.
However, as the typology presented in Chapter 3 makes clear, crowdsourcing is an overly broad space; the treatment here is controlled a subset pertinent to information science research.

Details of each part of this scope will follow -- crowdsourcing metadata, microtasks, paid crowd platforms, and subjective/objective crowdsourcing -- but it is important to lay the tracks first.

## Overview

### Take Away

A reader of the proposed dissertation will understand how online crowds can reliably generate metadata about information system objects, both for subjective or objective ends.
The main contribution of this study is _methodological_: understanding issues related to proper -- or improper -- crowdsourcing in information sciences.
It is written in the service of uncovering issues and answering them in a thorough manner, where a reader may develop realistic expectations or hypotheses for tasks beyond the tasks used for this study's experiments.

A reader of this work will understand:

 * the issues related to using crowdsourcing contributions for improving document metadata, particularly for information retrieval indexing and evaluation, and user-based filtering or recommendation;
 * the effect of different designs of crowdsourcing collection tasks on the resulting reliability and consistency of the collected data, particularly designs that train workers, give them feedback, or hurry them;
 * sources of contributor-specific error in information retrieval evaluation tasks; and
 * how these findings may assist future working in information science and cultural heritage.

### Methodology

## Information Science

Biases and ...

## Methodology

Outline each chapter

## Crowdsourcing

Crowdsourcing is the distributed, large-scale collaboration of users contributing to a common product.
Significantly, the term describes the _act_ of a system opening up for contributions from distributed users.
Users do not necessarily collaborate directly with each other -- though they can -- so the crowd in the term refers broadly to the collective users of the system.
Sourcing describes the act of soliciting user contribution, regardless of whether it is successfully executed or not.

Crowdsourcing is an umbrella term preceded by a number of more narrowly scoped concepts, such as
commons-based peer production [@benkler_wealth_2006],
open source software development [@raymond_cathedral_1999; @lakhani_how_2003],
and human computation [@von_ahn_games_2006; @law_human_2011].<!--_-->

Surowiecki discussed aggregate crowd intelligence as the ‘wisdom of the crowds’ [@surowiecki_wisdom_2004]; one way to interpret crowdsourcing is the process of trying to utilize that wisdom.

## Scoping in Detail

- Reactive
- Paid
- Subjective and Objective
- Microtasks
   - In Recommendation and retrieval space

METADATA

MICROTASKS

PAID CROWD PLATFORMS

SUBJECTIVE/OBJECTIVE


, discussion of broader generalization follows from secondary sources, while original research is conducted in paid microtasks spaces and speaks foremost to those spaces.

Chapter 3 supplies a language for positioning this scope through a detailed Information Science-centric crowdsourcing typology.


<!-- In particular, this study looks at the issue of recoverable error in human-contributed data, alternately viewed as intercoder reliability when studied from the data end.
Can error in descriptive crowdsourcing be accounted for, either at the time of data collection or afterward, in a manner that maximizes the intercoder reliability of contributions and subsequently the usefulness for information retrieval? -->

<!--### Hypothesis-->
I argue that the reliability of crowdsourced data can be improved by making an assumption that crowd contributors are honest-but-biased[^language]. This is an assumption supported by prior work and not uncommon in research on classification, such as the literature on intercoder reliability, but is understudied in crowd research.
The proposed study follows the hypothesis that such an assumption leads to
a) more algorithmically valuable crowdsourced description and
b) a greater proportion of useful contributions.


## Problem

The growth of digital collections has outpaced the ability to comprehensively clean, transcribe, and annotate the data.
Similar roadblocks are affecting born-digital information, where the rapid creation of documents often follows from passive or unrestricted forms of production.
The lack of strong descriptive metadata poses an obstacle for information retrieval, which must infer the aboutness of a document in order to surface it for an interested user.
Crowdsourcing is increasingly being used to address this problem.

Many of the benefits of crowdsourcing follow from the fact that humans approach tasks in qualitative and abstract ways that are difficult to emulate algorithmically.
A human can respond to complex questions on a Q&A website, judge the quality of a restaurant/product/film, or decipher a sloppy piece of handwriting.

Since many information systems are intended to serve an information-seeking user, the information that crowdsourcing collects can better reflect the needs of users.
For example, a user-tagged image in a museum collection can fill in terms that are more colloquial than the formal vocabulary employed by a cataloguer [@springer_for_2008; trant_investigating_2006].
Such information is invaluable in indexing items for information retrieval, where the goal is commonly to infer what a user is searching from their textual attempt to describe it in a query.

Similarly, other uses of crowdsourcing capitalize on humans' abilities to spot when algorithmic attempts at understanding an information object have failed.
ReCaptcha uses human contributions to transcribe transcriptions of OCR problem text from Google Books and the New York Times [@_what_]
The National Library of Australia's Trove also crowdsources corrections of scanned text, by allowing readers of their scanned newspapers to edit transcribed text when they come across problems [@holley_many_2009].

Humans are also being used to encode parseable text descriptions for non-text materials or higher-level latent concepts.
In libraries, this approach is being adopted with crowd transcription of materials which are too difficult for computer vision, such as digitized letters.
For example, the Bentham Project at University College London has a pilot project for crowdsourcing the transcription of Jeremy Bentham’s letters [@moyle_manuscript_2010; @causer_transcription_2012].

More than typical description, additional useful information can be reactionary or critical.
Indexing human judgments of a document's quality, for example, can enable an information retrieval system to rank the best version of multiple similarly relevant documents.

While the complex qualitative actions of human contributions are the cornerstone of such contributions' usefulness, they present a challenge for algorithmic use because they can be highly variable.

A task becomes more open to interpretation the more complex it becomes.
Some projects revel in the broad interpretive nature of complex tasks.
We see large art projects like Star Wars Uncut<!--TODO sidenote--> embrace the quirkiness of humans, where hundred of people re-filmed small snippets of Star Wars in a charming hodgepodge of styles.
Coding challenges, like those seen on TopCoder<!--TODO sidenote-->, also are interesting for the widely varying ways that a programming language allows you to express a problem.
However, in cases where there is a goal to find either an objective truth, manifest or latent, or to gauge the subjective approaches and opinions of people in a comparable way, the breadth of interpretations possible for a task presents a problem for reliably understanding it in aggregate.

The variability seen in human interpretations of complex tasks is not a novel issue.
It is a problem that we call low _intercoder reliability_, and can result from a variety of issues.
Four 'threats to reliability' that @neuendorf_content_2002 lists echo issues in crowdsourcing document description:

- an insufficient coding scheme,
- inadequate training,
- fatigue, and
- problem coders.

\newthought{How do you account} for the variability of human contributions in leveraging online crowds? This study looks to understand the threats to reliability in the context of paid crowdsourcing, in three spaces: error introduced by contributors (e.g. problem coders), error owing to the external factors (e.g. an insufficient coding scheme, inadequate training), and error owing to the task (i.e. subjective or non-normative tasks treated objectively).

### Research Questions

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
  - Scope: Maximizing "understanding" data quality of information collected through paid crowdsourcing
  - Research questions
  - brief summary of findings
- CHAPTER 2: Brief Overview of Crowdsourcing (not dissertation specific, think of it as the first two classes of a course on Crowdsourcing)
- CHAPTER 3: Typology of Crowdsourcing in Information Science (iConference 2015)
  - Incidental crowdsourcing (rework DH paper)
  - Low-effort crowdsourcing (short reference to HCOMP poster)
- CHAPTER 4: Designing Objective/Normative Tasks for Paid Crowdsourcing (Effect of design manipulations on data)
  - Literature review (introduce past in a way that my new research naturally follows. It should be clear 'why')
  - 4.1 Difference in rating distributions between differently designed Google and Amazon app stores (DH 2012, brief)
  - Image relevance judgments (new work)
  - 4.2: Recovering error from music similarity judgments (JCDL 2015)
  - 4.3: Design manipulations for tagging Pinterest (new work)
- CHAPTER 5: Interpreting Objective/Normative Tasks for Paid Crowdsourcing (how do you find and account for quality problems?)
  - 5.1: Literature review
  - 5.2: Recovering error from relevant judgments (ASIS&T 2012)
  - 5.3: Normalization section of MIR study
- CHAPTER 6: Subjective Tasks in Paid Crowdsourcing (writing as a JAIR article)
  - 6.1 Literature review
  - 6.2 Personalized crowdsourcing
  - 6.3 Design manipulations for taste-grokking (new work)
- CHAPTER 7: Conclusions
  - RQs
  - Summary of findings (bold headings, easy to read: this should be the skimmable chapter of the dissertation)
