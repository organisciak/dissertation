Correcting for Contributor-Introduced Variance After Contribution 
==================================================================

While improving the reliability of raw contributions from users is possible in controlled circumstances, there are cases where either 
 the data is already collected, or 
 where there is a limit to the amount of control a system designer can exert over contributors.

It is common to see differences in the habits of contributors that are trying to achieve the same thing.
<!--For example, when providing opinion ratings it is possible to have different contexts of a 'good' or 'bad' rating, when tagging images there are more or less useful types of tags, and ... TODO: citations, final example -->
Many tasks that assume an objective, correct contribution are nonetheless are subject to interpretation, especially in volunteered contributions where detailed codebooks are deterrents to casual contributions.
Likewise, even when a task is subjective, where a contribution is understood to be related to each individual's tastes and opinion, there are still problems of reliability beyond differences of opinion.
One person's definition of a 3-star opinion judgment or their threshold for what is needed to click an approving 'thumbs up' button might be different from another person's, even if their underlying opinions are identical.

In the second of two research chapters, the proposed dissertation will investigate the issue of interpreting the human-introduced variance in already-collected metadata.
This will 

 a. provide a treatment of previously-completed research on improving signal in information retrieval relevance judgments [@organisciak_evaluating_2012] and 
 b. conduct new research on reliably using volunteered crowdsourcing contributions for information retrieval, using a test case of contributions on the online craft marketplace Etsy.

The research that we performed in @organisciak_evaluating_2012 sheds light on a particular problem of human-introduced variance and lower rater reliability: consensus-building in ground truth tasks.
We studied time, experience, and agreement as indicators of the quality of contributions for a paid relevance feedback task.
Does the amount of time spent on a contribution correlate to a good or bad task?
Does the experience of a contributor, either on the task in general or responding to the specific query, reflect the quality of their contributions?
Can agreement with other contributors be used to measure and potentially correct for quality differences?
Answering these questions provided valuable insights into how to treat workers and their data when using paid crowdsourcing for building ground truth datasets.

However, normalizing crowds contributions to control for variance and improve inter-coder reliability is a larger issue that affects more than just paid ground truth tasks.
Various types of crowdsourcing data have been used for understanding information retrieval documents, including page links[@page_pagerank_1999], Twitter discussion (<!--TODO cite-->), social tags[@lamere_social_2008], opinion ratings (<!--TODO cite-->), and explicit relevance feedback (<!--TODO cite-->).
To study all possible cases would be unfeasible, so this study will look at a real-world case, __Etsy__, with a typical assortment of crowdsourcing contributions.

Below, I review how various forms of crowd contributions have been used for information retrieval, and propose additional research on a normalizing contributions in a volunteer crowdsourcing system<!--TODO change this sentence after the lit review, to say *why* rather than to say I 'will justify'-->.

Specifically, I will study how the various crowdsourced elements on craft marketplace Etsy can be leveraged in document representation to improve the quality of information retrieval, comparing baseline weighting schemes with normalized approaches.
Etsy is a marketplace with a large space of documents, but with a long tail of user focus.
While there are many ways that online crowds can contribute information about individual documents, the quantity of contributions on an individual document is fairly low (<!--TODO confirm this with numbers -->).
In making use of these contributions for ranked retrieval, it is important for each contribution to be interpreted correctly.

## Scope

The goals of this chapter will stay unchanged,
 pursuing the assumption of honest-but-biased workers, and
 focusing on crowdsourcing additional metadata for improved information retrieval indexing.
Again, the use cases being looked at are those with objective goals, with the intention of producing an output with minimal divergence from either the norms of a community or the instructions of a task designer.

The proposed new research will focus on volunteered data, for a number of reasons.
First, my existing research has already looked at this problem in paid crowdsourcing environment, and it is generally a well-explored space in research [notably including: @ipeirotis_quality_2010; @raykar_supervised_2009; @eickhoff_increasing_2012; @sheng_get_2008; @welinder_online_2010; @whitehill_whose_2009; @snow_cheap_2008; @novotney_cheap_2010].
Others have looked at similar situations of consensus-making among experts [@wallace_who_2011].
Secondly, in a production information retrieval context, it is more common to design around user needs, leaving the system designer to use the data for retrieval as it comes in.
<!--As argued in the previous section, collecting new metadata for retrieval is a task more easily approached by paid workers,...-->

## Problem

How do you normalize for deviations among <!--TODO -->

## Subjective vs. Objective Assumptions

Crowdsourced opinions can be treated either through a personalized approach and a consensus-seeking approach.

For personalization, a system assumes that each opinion is representative of a specific type of user, and that the data can be used to model the individual users.
Collaborative filtering usually makes this assumption.
Doing so keeps closer to a user's tastes in highly divisive domains, separating Black Sabbath from Black-Eyed Peas, or Doctor Zhivago from Doctor Doolittle.
This was the assumption made in [<!--TODO cite hcomp-->].

<!--TODO: Jaime would have much more to say about this-->

Another approach to opinion ratings is to seek consensus.
This approach is not as nuanced to the differences of opinions between humans, but has a few benefits.
First, it is easier to communicate to users a single absolute opinion. 
Secondly, it accommodates users that have never been seen before: recommending the option that has the maximum likelihood of satisfy any user is safe for new users.
It's The Beatles option.

## User and work related normalization

In collaborative filtering, ...

## Existing Work

Much work has been completed in posterior corrections for paid crowdsourcing contributions.

The research covered in this

## Measuring Reliability of Human Raters

The first part of this chapter will outline the work previously completed by @organisciak_evaluating_2012, which is already discussed above.

A few additional questions need to be asked for discussion in the context of the proposed dissertation.
One form of analysis that would be useful but was not originally done is to compare the recoverable signal from artificially smaller contributor groups.
If data collection had been cut off earlier, how accurate would the various methods for correcting against a worker's reliability be?

TODO: need treatment of that study

## Incorporating Normalized Contributions in Information Retrieval

The cornerstone of this chapter will be a study measuring the value of crowdsourced information in improving information retrieval ranking against the data from Etsy.

Etsy is an online marketplace allowing individuals or small vendors to sell goods, with a focus on hand-made or custom-made goods.
They position themselves as an online equivalent of an artisan's market, with arts and crafts central to the goods sold on the website.
 <!--TODO: see their definition -->

__RQ1__: How can crowdsourced contributions be incorporated into an retrieval model, and to what effect?

__RQ2__: Can crowdsourced be improved as evidence by adding contributor-dependent normalization or smoothing techniques?

__RQ3__: How do you account for novelty, controlling for new items without any crowdsourcing contributions?

### Data

Data provided by Etsy will be used for this research.

On Etsy, the document unit is a product page.
There are multiple types of crowdsourcing contributions that can be found per document.
First, there is the information provided by the vendor.
Details such as product price are constant, but it is still useful to consider vendors as crowds because there is potential variance between them for information such as the item name and item description.

A second type of user contribution is customer contributions.
These are contributions from people that have purchased the given item or, more broadly, any item from the vendor.
The primary type of customer contributions are ratings, on a five-point scale, and reviews, accompanying ratings and potentially justifying the ratings.
The concern with customer contributions is sparsity: they are valuable because they are a more thorough judgement of the product and the purchasing experience, but for goods that are often hand-made or limited run, each individual object has very little customer data.

The final type of customer data is 
   * Saving / starring. 
   * Adding to list:
     * Etsy lists.
     * Adding to Pinterest. Pinterest is a separate social network for curating lists---_boards_---of images.
   * Sharing (Twitter, Facebook, email)




The Etsy item space poses some unique challenges for information retrieval.

* The number of unique items is large (<!--TODO counts??-->) but, since many items are handmade and sold at the capacity of a small vendor, the number of consumers for any particular item is quite low.
* Many items are unique and consumable, such as paintings, making it difficult to collect large numbers of contributions about the item before it is sold and no longer relevant.
  Presumably they do no want to lose these one-of-a-kind items in their search, obscured by items that have a lot more information.
* There is much overlap in the types of items that are sold, meaning that there need to be ways to differentiate on quality and style.
  For example, a search for "knit hat" can easily return many relevant results, making a good ranking important to satisfying a user's information need.

The potentially low number of contributions per item makes it important to maximize the value of individual contributions.

Contributions by users that are customers are limited, making judgements made by visiting users important.

Since the goods


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

