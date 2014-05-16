Incorporating user-contributions in document modeling
==================================================================

While on-demand collection of information can be invaluable in controlled circumstances, there are cases where either
 the data is already collected, or 
 where there is a limit to the amount of control a system designer can exert over contributors before discouraging them.

In the second of two research chapters, the proposed dissertation will investigate the issue of interpreting human-contributed metadata in an information retrieval context, viewed through the lens of an ranked retrieval study on the online community _Pinterest_.
Whereas the previous chapter will look at issues related to _collecting_ document information from a crowd, this chapter will consider the ways that this form of information is _used_.

The focus of this chapter will be ranked retrieval over content in the online community _Pinterest_, a system for users to publicly save web images in curated lists.
Pinterest is a heavily user-generated website where the majority of crowd contributions fit into the descriptive or curatorial mode that I am concerned with.
It is an appropriate focus for this study because it generates new information about existing information object, and does so in a very loosely constrained manner.
Studying retrieval in the context of Pinterest will allow me to explore the issues of interpreting abstract contributions in concrete ways more broadly.

The fundamental difficulty in incorporating user-contributed evidence into an information retrieval model is that often it is subjective in nature.
While this is the type of contribution that sets human contributors apart, it also presents difficulties for interpreting it in a computational way.

The research that we performed in @organisciak_evaluating_2012 sheds light on a particular problem of interpreting human contributions: consensus-building in ground truth tasks.
We studied time, experience, and agreement as indicators of the quality of contributions for a paid relevance feedback task.
Answering these questions provided valuable insights into how to treat workers and their data when using paid crowdsourcing for building ground truth datasets.
However, modeling a crowd contribution is an issue that extends beyond paid ground truth tasks.
Various types of crowdsourcing data have been used for understanding information retrieval documents, including page links[@page_pagerank_1999], Twitter discussion (<!--TODO cite-->), social tags[@lamere_social_2008], opinion ratings (<!--TODO cite-->), and explicit relevance feedback (<!--TODO cite-->).
<!--To study all possible cases would be unfeasible, so this study will look at a real-world case, __Etsy__, with a typical assortment of crowdsourcing contributions.-->
On contribution-heavy Pinterest, this study will look at how curated lists can expand a system's language model of the typically text-sparse Pinterest documents.
Equally interesting, it will provide us an opportunity to look at where crowdsourcing information fails, perhaps due to unexpected patterns of contribution or misuse of the system.

<!--
Below, I review how various forms of crowd contributions have been used for information retrieval, and propose additional research on a normalizing contributions in a volunteer crowdsourcing system<!--TODO change this sentence after the lit review, to say *why* rather than to say I 'will justify'-->.
-->

## Scope

The goals of this chapter will stay unchanged,
 focusing on crowdsourcing additional metadata for improved information retrieval indexing,
 with an underlying assumption of honest-but-biased workers.
Again, the use cases being looked at are those with objective goals, with the intention of producing an output with minimal divergence from either the norms of a community or the instructions of a task designer.
While user-dependent personalization approaches are an equally promising research direction, it is not one that I will explore here.

This study focuses on volunteered data, mainly because it is a more novel space.
My past research has already looked at issues around interpreting a contribution in paid-crowdsourcing, post-collection.
It is also generally a well-explored space in research [notably including: @ipeirotis_quality_2010; @raykar_supervised_2009; @eickhoff_increasing_2012; @sheng_get_2008; @welinder_online_2010; @whitehill_whose_2009; @snow_cheap_2008; @novotney_cheap_2010].
Others have looked at similar situations of consensus-making among experts [@wallace_who_2011].
Secondly, in a production information retrieval context, it is more common to design around user needs, leaving the system designer to use the data for retrieval as it comes in.

## Problem

How do you normalize for deviations among <!--TODO -->

<!-- Move to problem section, edit out old theme
It is common to see differences in the habits of contributors that are trying to achieve the same thing.
Many tasks that assume an objective, correct contribution are nonetheless are subject to interpretation, especially in volunteered contributions where detailed codebooks are deterrents to casual contributions.
Likewise, even when a task is subjective, where a contribution is understood to be related to each individual's tastes and opinion, there are still problems of reliability beyond differences of opinion.
One person's definition of a 3-star opinion judgment or their threshold for what is needed to click an approving 'thumbs up' button might be different from another person's, even if their underlying opinions are identical.
-->

## Subjective vs. Objective Assumptions

Crowdsourced opinions can be treated either through a personalized approach and a consensus-seeking approach.

For personalization, a system assumes that each opinion is representative of a specific type of user, and that the data can be used to model the individual users.
Collaborative filtering usually makes this assumption.
Doing so keeps closer to a user's tastes in highly divisive domains, separating Black Sabbath from Black-Eyed Peas, or Doctor Zhivago from Doctor Doolittle.
This was the assumption made in [<!--TODO cite hcomp-->].

Another approach to opinion ratings is to seek consensus.
This approach is not as nuanced to the differences of opinions between humans, but has a few benefits.
First, it is easier to communicate to users a single absolute opinion. 
Secondly, it accommodates users that have never been seen before: recommending the option that has the maximum likelihood of satisfy any user is safe for new users.
It's The Beatles option: even if you admit, rightly, that the context is highly subjective, you still need to consider the global best-guess.

It is the latter approach that I will be pursuing in this study.

## <!--!!!--> Existing Work

Much work has been completed in posterior corrections for paid crowdsourcing contributions.

The research covered in this

<!--## Measuring Reliability of Human Raters

Before performing the study on Pinterest, I the first part of this chapter will outline the work previously completed by @organisciak_evaluating_2012.
There, we asked questions in interpreting the quality of paid crowdsourcing contributions, which may apply to the new research.
Does the amount of time spent on a contribution correlate to a good or bad task?
Does the experience of a contributor, either on the task in general or responding to the specific query, reflect the quality of their contributions?
Can agreement with other contributors be used to measure and potentially correct for quality differences?

, which is already discussed above.

A few additional questions need to be asked for discussion in the context of the proposed dissertation.
One form of analysis that would be useful but was not originally done is to compare the recoverable signal from artificially smaller contributor groups.
If data collection had been cut off earlier, how accurate would the various methods for correcting against a worker's reliability be?

TODO: need treatment of that study

-->

## A Crowd Inside: Interpreting crowd contributed data in Information Retrieval

The cornerstone of this chapter will be a study measuring the value of crowdsourced information in improving information retrieval ranking against the data from Pinterest.

Pinterest is an online community for saving visual bookmarks called 'pins' to curated lists called 'boards'.
On their about page, Pinterest features three primary purposes: saving (as pins), organizing (into boards), and discovery. 
 <!--TODO: see their definition -->

__RQ1__: How can crowdsourced contributions be incorporated into an retrieval model, and to what effect?

__RQ2__: Can crowdsourced be improved as evidence by adding contributor-dependent normalization or smoothing techniques?

__RQ3__: How do you account for novelty, allowing for new items without any crowdsourcing contributions?

### Why Pinterest

Pinterest is 

In addition, Pinterest is simply interesting.
Websites with a female-user skew seem to be neglected, but whatever features contribute to pushing back against male-heavy communities are what make them insightful objects of study.

### Data

<!-- Is there a "what is Pinterest" section above? There should be-->

This study will be performed on Pinterest, a website of curated images.

Pinterest is a website built entirely on crowd contributions.
On Pinterest, the document unit is a 'pin': an image, associated with a web URL and page title, and a required text description provided by the user.
Though the most common type of pin is saved from an external website, it is also possible to upload personal content.
The 'descriptions' are required but free-text, meaning they do not necessarily describe the image.

Pins are sorted into curated lists, referred to as 'boards'.
Like pins, classification into board is not controlled.
While adding a pin to a board is an act of classification, the classes are user-defined and can be created for various reason, such as quality judgments (e.g. "Neat stuff"), thematically descriptive (e.g. "dream wedding"), or miscellany of various sorts (e.g. "inspiration", "funny").
Boards are user specific, created by a user with a title, description, category, and optional map.

-------------------------- ------------------- --------------- --------------------
  Animals                   Architecture        Art             Cars & Motorcycles  
  Celebrities               Design              DIY             Crafts              
  Education                 Film                Music & Books   Food & Drink        
  Gardening                 Geek                Hair & Beauty   Health & Fitness    
  History                   Holidays & Events   Home Decor      Humor               
  Illustrations & Posters   Kids                Men's Fashion   Outdoors            
  Photography               Products            Quotes          Science & Nature    
  Sports                    Tattoos             Technology      Travel              
  Weddings                  Women's Fashion     Other                               
-------------------------- ------------------- --------------- --------------------

Table: Categories for curated lists ('boards') on Pinterest

There is also the concept of a 'repin', which involves saving a new pin from an existing pin, using the same source URL and image, but applying a new description and saving to a new board.
A document's repin count can be interpreted as a measure of a document's internal influence among the Pinterest community. Additional community-specific social features include commenting on pins and 'liking', which is a unary voting mechanism.

The explicit forms of descriptive crowdsourcing that are seen on Pinterest are:

 * Describing pins: description, board membership
 * Describing boards: title, description, category
 * Social contribution: commenting on pins, repinning, 'liking'

There is also meaning in implicit actions, such as the very act of save a web image, when considered in aggregate.

<!--
The Etsy item space poses some unique challenges for information retrieval.

* The number of unique items is large () but, since many items are handmade and sold at the capacity of a small vendor, the number of consumers for any particular item is quite low.
* Many items are unique and consumable, such as paintings, making it difficult to collect large numbers of contributions about the item before it is sold and no longer relevant.
  Presumably they do no want to lose these one-of-a-kind items in their search, obscured by items that have a lot more information.
* There is much overlap in the types of items that are sold, meaning that there need to be ways to differentiate on quality and style.
  For example, a search for "knit hat" can easily return many relevant results, making a good ranking important to satisfying a user's information need.

The potentially low number of contributions per item makes it important to maximize the value of individual contributions.

Contributions by users that are customers are limited, making judgements made by visiting users important.

Since the goods
-->

#### Data Collection

Three types of information will be collected from Pinterest:

 * pins
 * boards
 * users 

This will be collected according to the listings of all pins, boards, and users in Pinterest's provided sitemap.
Based on an initial survey of the sitemaps, I expect approximately 107.5 million users on the website, 207.5 million pins, and 571.95 million boards.

Users: 107.5m 	<!-- 4300 packages of 25000 users, 1.1 MB each -->
Boards: 571.95m <!-- 22878 packages of 25k boards -->
Pins: 207.5m 	<!-- 8300 packages of 25k pins --> 

This is a very large amount of data, and a bottleneck that is likely not necessary for this study. Instead, a smaller sample will be collected with the following sampling strategy:

 * A sample of boards is randomly selected
 * All pins that belong to the board sample are collected
 * User data for the sample board creators is collected
 * A second sample of boards is collected, with all the boards that the sampled pins belong to

The exact size of the sample will be determined once I start collecting data.
As a general rule, I would like to collect as much data as possible, while staying within a manageable file size and collection duration.

##### Design

Adopting a language modelling approach for this study, we rank documents by estimating the probability of each document's language model generating the query, and that document's prior probability of being relevant.

$P(d|q)\propto P(q|d)P(d)$

Given a basic case of the unigram model (TODO cite Croft 98), we assume $P(d)$ is a constant for each document and drop it.
This is the model that I'll be using as a baseline; a more detailed refresher is provided in the baseline section below.

Using crowdsourcing information


##### Evaluation
<!--
What metric?
	Why?
	What are the alternatives? Why not those?
What data?
	How is it collected?
	What queries is it run against? Why?
How is relevance described? By whom?
-->

Because the nuances of the document space, relevance is a low bar to achieve on Etsy.
As a result, evaluation will be performed with graded relevance, using relevance judgments collecting on demand and measured with Normalized Discounted Cumulative Gain (NDCG).

Evaluation queries will be a randomly selected subset of real-world queries, provided by Etsy.<!-- TODO doublecheck that this is possible -->
For each query, a description of what constitute the different levels of relevance will be written by myself, and the relevance of the first one hundred results will be rated by paid workers on a graded relevance scale.

##### Baseline

The baseline for the system will be the results returned by a system using language modelling with a basic unigram model, with the product title and description used as the document text and smoothing between query and collection likelihood using linear smoothing (i.e. _Jelinek-Mercer_).

Fundamentally, the language modelling approach assumes each document as a generative model, and estimates the probability of any given document $d$ generating a query $q$.

The unigram model makes a couple of simplifying assumptions. 
First, it assumes that the query-independent probability of a document being relevant, $P(d)$, is constant, meaning it does not affect ranking and can effectively be ignored.
Also removing the document-independent query constant, it means that

$P(d|q)\propto(P(q|d))$, <!--TODO: unfinished-->

leaving our estimate in the hands of P(q|d).
The second assumption for the unigram model is that the probability of a document generating a query is the joint probability of each term in the query occurring in the document.
Thus,

$P(q|d)=\prod\limits_{i=1}^n P(q_i|d)$.

This assumes a conditional independence between terms.
However, taking a maximum likelihood estimate for $P(q_i|d)$--- dividing term $q_i$'s occurrences in document $d$ by the sum of all terms---suffers some problems.
First, it heavily punishes documents where a word has not occurred, over-emphasizing seen words in the document's language model.
Secondly, it fails to account for the general likelihood of a word occurring in the language.
Thus, we smooth between the query term in the document's language model and its probability in the collections language model ($P(q_i}C)$).
Smoothing not only de-emphasizes seen words, but also reduces the discriminatory power of common words, akin to the TF-IDF intuition[@zhai_study_2001].

The baseline in this study will use linear smoothing between the two forms of evidence.
With $\lambda=0.75$ chosen based on a reading of @zhai_study_2001's evaluation of linear smoothing performance,

$P(q_i|d)=(1-\lambda)P(q_i|d)+\lambda P(w|C)$.


#### System

The testing system will be built on top of Apache Lucene.
Lucene provides high performance for large collections and even underlies Etsy's own stack.<!--todo: properly cite: http://www.slideshare.net/lucenerevolution/solr-lucene-and-hadoop-etsy-->
The baseline system will use the LMJelinekMercerSimilarity similarity scorer, and subsequent changes will be custom made.

For evaluation, workers from Amazon Mechanical Turk will provide judgments, either using Etsy's internal collection system, or the open-source code developed in the previous chapter. <!--TODO choose one.-->

### Related questions

How does the stylistic variance of contributions change through the lifespan of a system?
We hypothesize that as crowdsourcing systems grow in size, their contributions also grow less variant in their approach.
This question is related to the primary research questions of the proposed dissertation and this chapter, and it will be useful to consider it.

- Directionality of influence
  - IF structure is being solidified: why is it being systematized?
- Contribution attrition 
- Simplicity vs. Hand-holding

If our hypothesis holds true, it would suggest that system designers (or self-governed crowds) steer their system toward more algorithmically tractable forms of contributions over time.
Such a shift might be afforded by crowds large enough to allow the attrition associated with more complexity, or by the increase of well-experienced participants that are comfortable adapting to tighter guidelines.

One notable example of this type of shift is happening is in Wikipedia.
Wikipedia does not set explicit rules, but conventions are established and policed by the community.
For example, after a recommendation in 2006, editors began insisting on well-sourced information underlying all significant statement on the website [@wales_insist_2006].
The structure has also enabled efforts such as DBPedia, structured data representing the entities in Wikipedia pages.
It has also informed information retrieval approaches to understanding entities beyond a query, such as with Google's Knowledge Graph and Microsoft's Satori <!-- TODO citations -->.

<!-- TODO: talk about relevance to larger question -->

