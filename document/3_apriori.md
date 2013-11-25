A Priori Corrections for Bias
==============================

## Introduction

Humans don't operate with the formality of computers.
Many of the benefits of crowdsourcing follow from that fact: human contributions are valuable specifically because they are not easily automated.
However, when using crowd contributions to inform an algorithmic system, such as in information retrieval, the inconsistencies of human work present a challenge.
<!-- This text might be better in the intro --> 

In the first of two research chapters, the proposed dissertation will investigate how studies 

## Outline

This section of the dissertation proposal serves as a skeleton for the dissertation chapter.
Below, I 
 outline the problem of collecting less biased data from human workers,
 discuss some of my previous research on the topic,
 and present the 
  scope,
  methodology,
  data,
  and evaluation
 for proposed new research.

## Problem

#### Work up to now

##### ASIS&T Paper

In <!--TODO:cite ASIS&T paper-->, we found that workers 

##### Incidental Crowdsourcing

In <!--TODO: cite incidental crowdsourcing paper -->, I looked at a facet of crowdsourcing that I called _incidental crowdsourcing_ (IC).

Incidental crowdsourcing refers to crowdsourcing in the periphery.
These are elements that are unobtrusive and non-critical to the user or the system.
They generally
 describe existing information,
 collect contributions in low-granularity mechanisms,
 and favor interface choices over statements.
An example an incidental crowdsourcing mechanic mike be a 'thumbs-up' voting button on a video-sharing website or tagging functionality on an image-sharing website that does not force itself upon users.

By not taking users hostage or asking users for overly attentive or time-consuming contributions, incidental crowdsourcing contributions result in greater numbers of contributions, even if individual contributions are less frequent.
They also tend toward different patterns of contribution.

This was clear in a small example study <!--CITE IC DH --> comparing a crowdsourcing element on two systems: one that was designed more 'incidental' while another put up more hurdles for contributing quality.
In the systems, I compared the ratings of identical product on two application marketplaces for the Android smartphone operating system: Amazon's Appstore and Google Play.
Users on both systems are able to rate applications on a five-point scale;
however, while Google's store allows them to offer this rating quickly and without any other guidelines, Amazon's store requires an accompanying review with a minimum word length, and also has a codebook that reviewers must abide by.

The difference between rating 

While there are other potential factors affecting differences between the systems, this cursory comparison suggests that the attentiveness and introspection required of a crowdsourcing contribution affects what that contribution will look like.

##### System 1 vs System 2

More evidence for this was encountered in a peripheral finding while conducting \cite{}<!-- TODO cite human computation? Or just unpublished?  -->.
In this case, we were again looking at opinion ratings on a five-point scale, this time on Mechanical Turk. 
Workers were asked to provide their personal opinions on whether they liked the style of each of 100 saltshakers.
In one group of workers, this is all they were asked.
In another group, we also asked workers to explain why they gave that rating.
Alongside their rating of the item, they would provide a short explanation, such as <!--TODO-->.
In most other regards the ratings were collected in the same way:
 on Mechanical Turk during the US work day,
 in an interface designed identically -- besides the additional text input boxes for the latter formulation --
 and with the same restrictions on workers.
<!-- To clarify the restrictions? -->
<!--The payment for the task was scaled to account for the extra time necessary for completion: in the first set of tasks, workers averaged XXX/hr, on the latter, they averaged XXX/hr ... TODO: what _did_ we do for the money? -->

Figure XXX <!-- TODO --> shows the distribution of workers by their average rating.
In the first set, where workers rated quickly (<!--(TODO: time)-->), the workers' average ratings were across the board.
There were very positive workers, very negative workers, and everything in between.
While the average worker gave a rating of <!--TODO-->, the standard deviation was <!--TODO-->.

In contrast, the workers that were asked to explain their rating tempered their opinions more.
The distribution of average ratings of individuals was normal (<!--TODO normality test results-->) about a mean of <!--TODO--> with a standard deviation of <!-- TODO -->.

[] <!-- TODO: Image -->
<!-- TODO: Figure XXX: Comparison of worker rating distributions for preferences in salt shakers.
In the basic set, workers were asked only for a rating.
In the detailed set, workers were asked for a rating and an brief explanation of why they chose that rating.
-Unpublished research, (TODO: text to make clear that it is Microsoft IP, not University's ) -->

It is clear that workers in the set with more introspection 
Howe


Figure YYY also shows the distribution of rating values overall.   






### How this fits in the dissertation

## Scope

### Paid Crowdsourcing
In looking at the design of contribution tasks, I hope to concentrate on paid crowdsourcing.
For the scope of this study, it would be intractable to look at at the design of both paid and volunteer crowdsourcing, so I will pursue the facet more pertinent to information retrieval.
<!--'More pertinent': Is this true? TODO: Rewrite-->
Paying workers is only one part of crowdsourcing, and one that arguably tethers the scalability of a task by anchoring it
to financial means.
However, it is easier to control for by removing much of the complexities of motivation.
Information retrieval researchers are also using the predictability of paid crowd markets like Amazon's Mechanical Turk to generate on-demand data, making design for those systems important.
<!--Add citations?-->

More importantly, much information retrieval research occurs parallel to the system of content
<!--Users on Flickr, for example, contribute semantic tags-->
 information retrieval systems 

### Literature


#### Prior Work 

## Proposed Research

In new research for this chapter, I will investigate the effect of different parameterizations of the task, 

#### Data

#### Parameterization

#### Evaluation

<!--Talk about Mechanical Turk. -->
<!--Talk about the the real world use of crowdsourcing. Google has internal systems, so does MS. Researchers are using it for on-demand data -->

##### Baselines
