Literature Review
===================

## Intro

## General overview

## Definitions and History

### Crowdsourcing

Crowdsourcing refers to "groups of disparate people, connected through technology, contributing to a common product" [@organisciak_why_2010].
It is an umbrella term that broadly captures the abilities of the internet, as a communications medium, to efficient connect people.

Nothing about crowdsourcing is fundamentally tied to the internet.
It is entirely possible to bring together large groups of people in different ways, but the access and efficiency of the internet is both
what made the concept seem so novel in the 20th century and what gave it value in the various realms where it was applied.

Whereas crowds have been long maligned for their collective simplicity \cite{<!--TODO: CMST101-->},
irrationality \cite{<!--TODO: Lebon? or next citation? -->},
or downright ineptness \cite{<!--TODO Mackay-->},
through the internet one can perform human-specific tasks at a scale usually only seen for computational tasks.

To understand crowdsourcing, a brief understanding of its history is necessary.
The term is recent and has an unambiguous source, but immediately upon introduction, it was adopted and expanded by society.

The term _crowdsourcing_ was coined in a 2006 Wired article by Jeff Howe \cite{<!--TODO cite Howe 2006 1-->}.
Howe was writing from a labor perspective, looking at online marketplaces for people to solve problems and create content.
His focus was on sites like InnoCentive, a site for companies to outsource research and development problems for a bounty, and iStockPhoto, a website that allowed amateur photographers to sell their images as stock photos.
The article briefly looked at user-generated online content, though in the context of television programs that use online video as content.

However, the term _crowdsourcing_ struck a chord more broadly, and the somewhat narrow term was culturally co-opted.
This happened very quickly: within nine days Howe noted a jump from three Google results to 189,000 \cite{<!--TODO: birth of a meme-->}.
Within a month, Howe address the co-opting of the term on his crowdsourcing blog, "noticing that the word is being used somewhat interchangably with Yochai Benkler's concept of commons-based peer production" \cite{<!--TODO-->}.
He gives his own definition, but also notes that language is slippery and he's "content to allow the crowd define the term for itself (in no small part because [he's] powerless to stop it.)".

Thus, crowdsourcing was adopted to refer broadly to a series of related concepts, all related to people being connected online.
These concepts included
 human computation \cite{<!--TODO-->},
 commons-based peer production \cite{<!--TODO cite coase's penguin and benkler book -->},
 free and open-source development [@lakhani_how_2003, @raymond_cathedral_1999],
 and the 'wisdom of the crowds' [@surowiecki_wisdom_2004].

### Wisdom of the Crowds

_The Wisdom of the Crowds_\cite{<!--TODO-->} ...

### Human-Computation

_Human Computation_ emerged from from the doctoral dissertation work by Luis von Ahn in 2005, popularized alongside the ESP Game [@ahn_labeling_2004; @von_ahn_games_2006]. <!--_-->
It refers to a process of computation -- the "mapping of some input representation to some output representation using an explicit, finite set of instruction" [@law_defining_2011] -- performed by humans.

In synthesizing the definition of human computation in relation to crowdsourcing, collection intelligence, and social computing, Quinn and Bederson note two characteristics of consensus:
 that "the problems fit the general paradigm of computation, and as such might someday be solvable by computers", and 
 that "the human participation is direction by the computational system or process" [@quinn_human_2011].

As noted by @[TODO cite law], Turing defined the purpose of computers as carrying out operations that humans would normally do.
Human Computation, then, refers to utilizing humans for operations that computers simply are not capable of performed yet.

By this definition, much human computation aligns with crowdsourcing, but large swaths of crowdsourcing are not relevant to human computation.
For example, the types of large creative crowdsourcing projects like t-shirt design website Threadless and online encyclopedia Wikipedia are not human computation.
Inversely, human computation does not have to sustained by self-selected workers; a more traditionally hired closed system can suffice [@law_defining_2011].

### Open-Source

## User Innovation

von Hippel 2003, 2005, 1988

### Social Computing

<!-- See Law 2011, and see Bederson 2011 -->

### Collective Intelligence

<!-- also see law and bederson papers -->

### Commons-based Peer Production

### Classical Work on crowds

#### Extraodinary Madness of the Crowds (Mackay [sp?])

#### The Crowd (LeBon)

## Taxonomies of Crowdsourcing

The space of crowdsourcing is large, and there have been a number of attempts to organize the sub-concepts within it or to reconcile it in a space alongside other areas of research.
Some of the most important questions in differentiating crowdsourcing include:

 * How are crowds motivated? Particularly: are they paid or do the volunteer for other incentives?
 * How are contributions presented or aggregated?
 * Is the crowdsourcing central to the system?
 * Are contributions subjective or objective?
 * Is the collaboration indirect (i.e. contributors work on parts independently) or manifest?
 * Are contributions new, or do they react to existing documents or entities?
 * Who is asking for the contributions?

### Motivation

The primary lens on motivation is in the form of intrinsic and extrinsic motivation [<!--TODO cite-->].
In the former, fulfillment is internal to the contributor, psychologically motivated, while in the latter the rewards are external.

The particulars of motivation are complex and non-exclusive. <!--TODO: cite Resnick book?-->
In @organisciak_why_2010, for example, I identified X primary motivators and X secondary motivations among a diverse set of crowdsourcing websites.[TODO]

#### Paid vs. Volunteer Crowdsourcing
There are extrinsic motivators beyond money; however, it is common to separate crowdsourcing projects into paid and volunteer crowdsourcing.
This possible because of the differing design implications around the two approaches: money is a direct currency for obtaining labor, while convincing volunteers to contribute requires a greater sensitivity of their needs and ultimately more complexity in engineering the crowdsourcing system or mechanic.

It has been shown that intrinsic motivation still plays a part in paid crowdsourcing [@mason_financial_2010], and some systems mix intrinsically motivated tasks with payment or the chance at renumeration (e.g. Quirky, GasBuddy, 99Designs).

For paid crowdsourcing, @geiger_managing_2011 makes the distinction between fixed renumeration, with a pre-agreed fee, and success-based renumeration, such as contest winnings or bonus.

In sum:
 * intrinsic/extrinsic motivation
 * paid/volunteer

### Aggregation

@schenk_crowdsourcing:_2009 and @geiger_managing_2011 discuss two types of aggregation: _integrative_ and _selective_.
Integrative aggregation pools contributions into a common product, like a wiki, while selective aggregation tries to choose the best contributions, such as in contests.

This simple separation hides some of the complexity seen in aggregation approaches.
Integrative aggregation can be approached in a number of ways.
I offer the following finer views on integrative aggregation:
 * Summation: In summative aggregation, people contribute to an ever-expanding base of information. Contributions are clearly part of a bigger whole, but their individual form is retained. Examples: online reviews
 * Versioning (TODO or iterative?): In versioned aggregation, multiple contributions are used toward a larger product, but the contributions are permutations of a common work. Examples: wikis
 * Averaging: In averaged aggregation. Contributions are still pooled, but a consensus-seeking processing tries to reconcile them. Examples: ratings, multiple-keyed classifications 

### Benefactor

Zwass et al 2010 [TODO] distinguish between _autonomous_ and _sponsored_ crowdsourcing.
_Sponsored_ crowdsourcing is when there is a entity at the top soliciting the contributions: a client of sorts. [TODO add examples]
In contrast _autonomous_ crowdsourcing serves the community itself. Zwass et al explain: "Marketable value is not necessarily consigned to the market—it may be placed in the commons, as is the case with Wikipedia".

### Object of Interest

* Creation vs. Reaction

### Criticality of Crowdsourcing

* Central vs. Incidental

### Type of Work

The type of work performed by crowds can vary greatly in its complexity and style. 

One notable facet here is represented in the concept of human computation, where "the problems fit the general paradigm of computation, and as such might someday be solvable by computers" [@quinn_human_2011].
In the understanding that crowdsourcing is not solely human computation tasks, the inferred companion to these types of tasks are those that are expected to be too complex for computers: creative, judgmental, or requiring critical thinking.

@schenk_crowdsourcing:_2009 distinguish between three types of crowdsourcing.
First are routine tasks, such as crowdsourcing of OCR text correction with ReCaptcha.
The majority of human computation tasks would likely fall within this category of rote tasks.
Second are complex tasks, such are open-source software development.
Finally, they suggest creative tasks. An examples would be a system like MyStarbucksIdea, where people suggest changes they would like to see at the coffee chain Starbucks.
Since @schenk_crowdsourcing:_2009 focus on crowdsourcing when there is a client, usually a corporate client, they do not consider the wider space of creative crowdsourcing tasks.
However, the taxonomy does appear

#### Subjective vs. Objective Crowdsourcing

Another parallel being drawn in recent years is that of objective or subjective crowdsourcing tasks.

Objective tasks are assumed to have an authoritative truth, even if it is unknown.
For example, in transcribing scanned texts, it is assumed that there is a 'correct' passage in the work that has been scanned.

In contrast, Subjective tasks have a variable concept of correctness, as they are are not expected to be consistent between contributors.
<!--TODO: write more-->

Commonly human computation are objective tasks, while Schenk's split of routine, complex, and creative does not make in any particular way to this split.

<!-- TODO: citations -->

This designation also applies to aggregation, because sometimes subjective tasks are treated by a system as if they were objective, trying to determine a consensus while not treating deviations form the consensus as flawed contributions.

### Common design patterns

 * Microtasking
 * Gamification
   * Eickhoff, Harris et. al talk about gamification on MTurk [TODO]
 * Opinion Ratings
 * Platforms


### Full Taxonomies

@geiger_managing_2011 identify crowdsourcing processes by four defining characteristics: the preselection process for contributors, the accessibility of peer contributions, the aggregation of contributions, and the form of renumeration for contributors.


## Top research in crowdsourcing

### ESP Game

### VizWiz

### Soylent

### Mason and Watts

### Benkler - Wealth of Networks


## Crowdsourcing in the Wild
Notable crowdsourcing in the wild

### Wikipedia

### Threadless

### Academic

#### Zooniverse

#### FoldIt

#### ReCaptcha


## Failures and Concerns



### Ethics


## Research in Information Science



## Research in Information Retrieval

### Relevance Judgments

#### Alonso et al.

### TREC Crowdsourcing track


## Taxonomies of Crowdsourcing

### By Function

### By Motivation


## Research relevant to study

### Coding Aggregation / Ground Truth generation

### 

<!--TODO: Rename header-->

