Modeling user-contributed document metadata
==================================================================

## Introduction

The focus of this chapter will be ranked retrieval over content in the online community _Pinterest_, a system for users to publicly save web images in curated lists.
Pinterest is a heavily user-generated website where the majority of crowd contributions fit into the descriptive or curatorial mode that this dissertation is concerned with.
It is an appropriate focus for this study because Pinterest generates new information about existing information objects, and does so in a very loosely constrained manner.
Studying retrieval in the context of Pinterest allows broader exploration of interpreting abstract contributions in concrete ways more broadly.

Various types of crowdsourcing data have been used for understanding information retrieval documents, including page links[@page_pagerank_1999], microblogging discussion of the documents[@dong_time_2010], social tags[@lamere_social_2008], <!-- TODO2: having trouble finding reasearch for this, but there has to be something out there about using "opinion ratings" in IR--> and implicit relevance feedback[@agichtein_improving_2006].
On contribution-heavy Pinterest, this study will look at how curated lists can expand a system's language model of the typically text-sparse Pinterest documents.

## Scope

My past research has already looked at issues around interpreting a contribution in paid-crowdsourcing, post-collection.
It is also generally a well-explored space in research [notably including: @ipeirotis_quality_2010; @raykar_supervised_2009; @eickhoff_increasing_2012; @sheng_get_2008; @welinder_online_2010; @whitehill_whose_2009; @snow_cheap_2008; @novotney_cheap_2010].
Others have looked at similar situations of consensus-making among experts [@wallace_who_2011].

## Motivation 

It is common to see differences in the habits of contributors that are trying to achieve the same thing.
Many tasks that assume an objective, correct contribution are nonetheless are subject to interpretation, especially in volunteered contributions where detailed codebooks are deterrents to casual contributions.
Likewise, even when a task is subjective, where a contribution is understood to be related to each individual's tastes and opinion, there are still problems of reliability beyond differences of opinion.
One person's definition of a 3-star opinion judgment or their threshold for what is needed to click an approving 'thumbs up' button might be different from another person's, even if their underlying opinions are identical.

Speaking about tagging in the context of information retrieval, @zhou_exploring_2008 warn that "a tag represents an abstract of the document from a _single_ perspective of a _single_ user."

<!--## Subjective vs. Objective Assumptions-->

Subjective crowdsourced contributions can be treated either through a personalized approach and a consensus-seeking approach.

For personalization, a system assumes that each opinion is representative of a specific type of user, and that the data can be used to model the individual users.
Collaborative filtering usually makes this assumption.
Doing so keeps closer to a user's tastes in highly divisive domains, separating Black Sabbath from Black-Eyed Peas, or Doctor Zhivago from Doctor Doolittle.
This was the assumption made in @organisciak_personalized_2013.

Another approach to subjectivity is to seek consensus.
This approach is not as nuanced to the differences of opinions between humans, but has a few benefits.
First, it is easier to communicate to users a single description or opinion.
If five out of six users call a film 'funny' but the last person states the opposite, it's easier to tell a user at a glance that the film is 'funny' then trying to communicate the nuance.
Secondly, it accommodates users that have never been seen before: recommending the option that has the maximum likelihood of satisfy any user is safe for new users.
This is the _Beatles_ option: even if you admit, rightly, that the context is highly subjective, you still need to consider the global best-guess.

In a context like Pinterest, users might search for terms that do not have a single right answer, but rather one that is interpreted or negotiated.
When a user searches for 'rustic wedding' or 'cute dress', it is difficult to infer what their interpretation of 'rustic' is or what they find to be 'cute' what they consider 'rustic' or 'cute' without knowing anything about the user.

It is this latter approach to representing subjective aspects of document, to seek consensus among many individuals, which is the focus of this study.
When using crowdsourced information to inform a general understanding of a document, how do you model the variety of interpretations and what are the pitfalls to avoid?

<!--Much work has been completed in posterior corrections for paid crowdsourcing contributions.-->
<!--## Measuring Reliability of Human Raters

Before performing the study on Pinterest, I the first part of this chapter will outline the work previously completed by @organisciak_evaluating_2012.
There, we asked questions in interpreting the quality of paid crowdsourcing contributions, which may apply to the new research.
Does the amount of time spent on a contribution correlate to a good or bad task?
Does the experience of a contributor, either on the task in general or responding to the specific query, reflect the quality of their contributions?
Can agreement with other contributors be used to measure and potentially correct for quality differences?

A few additional questions need to be asked for discussion in the context of the proposed dissertation.
One form of analysis that would be useful but was not originally done is to compare the recoverable signal from artificially smaller contributor groups.
If data collection had been cut off earlier, how accurate would the various methods for correcting against a worker's reliability be?

-->

## Approach

Pinterest is an online community for saving visual bookmarks called 'pins' to curated lists called 'boards'.
On their about page, Pinterest features three primary purposes: saving (as pins), organizing (into boards), and discovery [@_about_].

__RQ1__: How can crowdsourced contributions be incorporated into an generative language retrieval model, and to what effect?

__RQ2__: Can crowdsourced information be improved as evidence by adding contributor-dependent normalization or smoothing techniques?

__RQ3__: How do you account for novelty, allowing for new items without any crowdsourcing contributions?

For _RQ1_, this study treats descriptive user contributions as evidence for estimates of $P(Q|D)$.
As a secondary question in addressing _RQ1_, user contributed quality judgments (i.e. "faves", reshares, sharing to external social networks) are considered as evidence for a document's prior probability, $P(D)$.

The primary contributions is in improving a document's language model by smoothing it against the language model of the curated lists, 'boards', that it belongs to.
Documents, are treated in two ways: as an individual user's 'pin' -- their visual bookmark of a page on the internet alongside their title, description, and the board they add it to -- and as the meta-document, a collection of all user's pins that same source image.

The variability of human interpretations is embraced in modeling a document, rather than pushed against.
Not everybody sees the same features in the same document, so user-contributed document metadata is treated as a mixture of interpretations.

<!-- TODO2: RQ: consistency in categories among Pins with identical sources -->

### Data

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

 * Describing pins: description field, choice of board membership
 * Describing boards: title, description, category, fields
 * Social contribution: commenting on pins, repinning, 'liking', Facebook integration 


### Design: A Language-modeling approach to curated lists

Adopting a language modeling approach for this study, documents are ranked by estimating the probability of each document's language model generating the query, and that document's prior probability of being relevant.
Estimating document $d$ for query $q$,

$P(d|q)\propto P(q|d)P(d)$,

where $q$ is a set of terms $t$.

Given a basic case of the unigram model [@ponte_language_1998; @song_general_1999] a document's prior probability of generating the query, $P(d)$, is assumed to be constant across all documents.
This is the approach used for the baseline system, _provided in detail in the baseline section below_.

This work approaches $P(q|d)$ as an estimate that may be improved by user-contributed description of the document and, of secondary focus, $P(d)$ as an estimate that may be improved by quality judgments.

#### P(q|d)

Most basically, $P(q|d)$ starts with a maximum likelihood estimate of all the query terms occurring in the user's pin: $P_{ml}(t_i|d)$, where $P(q|d)=\prod_{i=1}^{|q|}{P(t_i|d)}$.

In this study's approach, we assume that co-occurring pins in lists and other users' pins of the same source content represent additional interpretations of the pin's aboutness.
This will inform a model for boards, $P(t_i|b)$, which can be used as a fallback model, as well as a language model of other user's saves of the same document, $P(t_i|D)$.
Thus, $P_{ml}(t|d)$ provides an estimate on seen words, but smoothing against $P(t_i|b)$ and $P(t_i|D)$ adds information on unseen but potentially likely words, and smoothing against the collection model provides general insight on term probabilities across the Pinterest corpus.
These will be incorporated into a document's language model used the cluster approach seen in @liu_cluster-based_2004.

By smoothing a pin's language model with models provided by other documents and users, probability mass is dispersed among different interpretations of the aboutness of the document.
This treatment of multiple subjective interpretations loosens the assumptions of language modeling.
However, functionally it is the same as treating a language model as an objective but latent generative model with different probabilities assigned for different term occurrences.

There are some added complexities that will need to be considered while this study is being conducted.
One is the proper weights to apply to interpolation: what type of smoothing is necessary between different models?
This study will evaluate educated guesses based on work performed by @zhai_study_2001, and decide on whether an genetic parameter-learning algorithm is necessary.

Two other issues that may need to be considered are occasions when there is an absence of other information, perhaps when a pin is alone in its board and nobody else has saved the same source item.
In instances like this, it is important not to overly rely on a single user's interpretation, since taken alone it is a biases description.

As described earlier in the literature review, this approaches closest parallel is in research on retrieval over folksonomies [e.g. @zhou_exploring_2008; @bao_optimizing_2007
; @hotho_information_2006; @bischoff_can_2008].

### Data Collection

Three types of information will be collected from Pinterest:

 * pins
 * boards
 * users 

This will be collected according to the listings of all pins, boards, and users in Pinterest's provided sitemap.
Based on an initial survey of the sitemaps, I expect approximately 107.5 million users on the website, 207.5 million pins, and 571.95 million boards.

<!--
Users: 107.5m 	4300 packages of 25000 users, 1.1 MB each
Boards: 571.95m 22878 packages of 25k boards
Pins: 207.5m 	8300 packages of 25k pins --> 

This is a very large amount of data, and a bottleneck that is likely not necessary for this study. Instead, a smaller sample will be collected with the following sampling strategy:

 1. A sample of boards is randomly selected
 2. All pins that belong to the board sample are collected
 3. All pins that save the same source images are collected
 4. User data for the creators of the sampled boards is collected
 5. A second sample of boards is collected, with all the boards that the sampled pins belong to

The exact size of the sample will be determined once I start collecting data.
As a general rule, I would like to collect as much data as possible, while staying within a manageable file size and crawling timeline. 

### Evaluation

<!--
What metric?
	Why?
	What are the alternatives? Why not those?
What data?
	How is it collected?
	What queries is it run against? Why?
How is relevance described? By whom?
-->

#### Evaluators
Given that the number of registered users on Pinterest is very high, approximately 107.5 million, it should be feasible to perform a more naturalistic evaluation, recruiting real users as judges for real queries. 
For evaluation, I will recruit Pinterest users locally to perform relevance judging.

#### Judgement Design

Users will be asked to judge the relevance of 130 documents per retrieval model on a graded scale.
Documents will be shown in randomized order.
The large number of results judged per query is influenced by the visual format of Pinterest.
Pinterest's visual interface is quicker to browse than text results, and I expect that the common focus on ten ranked results is too small in a realistic setting.
Search results on Pinterest's IR system load 65 results initially, though an 'infinite scroll' keeps loading results as a user scrolls down the page.
Note that the judging interface format may change following the results of the first half of this dissertation. 

Because of the nuances of the document space, binary relevance is a low bar to achieve on Pinterest.
Many of the user information needs on Pinterest revolve around taste, and an appropriate evaluation should be sensitive not only to whether a document is a match to the query, but _how good_ of a match it is.
This is why evaluation will be performed with graded relevance.
The primary metric for relevance will subsequently be Normalized Discounted Cumulative Gain (NDCG).

One concern with NDCG is that it needs to be estimated when there do not exist judgments for all results.
This is because, for the normalization, one needs to consider the rank of a document relative to the ideal ranking of all results.
This study will use the approach used at TREC, of pooling the top results for each algorithm's output, and assuming the result of documents are non-relevant.
Since I expect a long tail of somewhat relevant queries on Pinterest, during the performance of the study I will also consider the necessity of NDCG estimation based on random sampling, such as infNDCG [@yilmaz_simple_2008].

#### Evaluation Queries

The queries being evaluated will be a mix of evaluators' search history -- dependent on what they feel comfortable providing -- and on popular queries collected through the Pinterest query input auto-complete feature.

When an evaluator is recruited that has used Pinterest, they will be provided a script that collects their Pinterest search history.
They will be asked to cull the list down to queries that they feel comfortable sharing, and to resist the desire to revisit the results until after evaluation.

Additional evaluation queries will be sampled from auto-complete suggestions on Pinterest.
When a user starts to type in a query, five suggestions appear.
For example, typing 'r' will suggest 'recipes', 'red hair', 'rings', 'relationship quotes', and 'rustic wedding'.
These appear to be the five-most probable queries starting with the provided string.
For an insight of what types of queries are in the sampling frame and more generally what topics are popular among Pinterest users, Table \ref{pop_pinterest} lists the auto-complete suggestions when each letter of the alphabet is entered into the search box.

It should be noted, however, that a sample frame of just the most popular terms is too general.
To shift the sample away from the head of the distribution, the sampling frame will also include 500 queries derived from auto-complete suggestions based on two character strings: specifically, the one hundred most common two-character pairs occurring at the start of the English language.[^twoletter]

[^twoletter]: Using the frequencies calculated by @norvig_english_, these are: TH, OF, AN, IN, TO, CO, RE, BE, FO, PR, WH, HA, MA, WI, HE, IS, NO, WA, ON, DE, ST, SE, AS, IT, CA, HI, SO, WE, AR, DI, MO, AL, SU, PA, FR, ME, OR, SH, LI, CH, WO, PO, EX, BY, AT, FI, PE, BU, LA, NE, UN, LE, SA, TR, HO, YO, LO, DO, FA, SI, GR, EN, AC, MI, TE, BO, BA, GO, SP, OU, PL, EV, AB, TA, RA, US, BR, CL, DA, GE, TI, FE, AD, MU, IM, AP, RO, NA, SC, PU, EA, CR, VI, CE, OT, AM, AG, UP, RI, VE.

For each query, a description of what constitute the different levels of relevance will be written by myself, and the relevance of the first one hundred results will be rated by paid workers on a graded relevance scale.

It is likely that Pinterest's own retrieval model incorporates additional implicit feedback from users in the form of click-through data.
This is a useful indicator of a item's quality, itself a form of crowd-contributed retrieval evidence, but is well-studied and too removed from the scope of this study to undertake.

-------------------------------------------------------------------------------
appetizers, art,
ab workout, animals, apartment decorating, christmas, christmas decorations,
chicken recipes, crockpot recipes, christmas crafts, diy, dinner recipes,
dresses, desserts, disney, easter, engagement rings, elf on the shelf ideas,
eye makeup, easter crafts, food, fashion, funny, funny quotes, fall, garden,
gift ideas, gluten free, girls bedroom, gardening, hair styles, hair, healthy
recipes, halloween costumes, halloween, inspirational quotes, interior design,
ikea, i love you, italy, jewelry, jennifer lawrence, jello shots, jeans, jokes,
kitchen, kitchen ideas, kids crafts, kitchen decor, kids, love quotes, love,
living room, long hair, lingerie, makeup, medium hair styles for women, mothers
day, mothers day gifts, master bedroom, nail art, nails, nail designs, nail art
designs, nail art for short nails, ombre hair, organization, organization tips,
outfits, organizing, prom dresses, pregnancy, prom hair, paleo, puppies, quotes,
quinoa, quinoa recipes, quilts, quotes about change, recipes, red hair, rings,
relationship quotes, rustic wedding, spring fashion, shoes, short hair styles
for women, short hair, sexy, tattoos, thanksgiving, tattoo ideas, thanksgiving
recipes, travel, updos, updo hairstyles, ugly christmas sweater, updos for
medium length hair, valentines ideas, valentines day gifts for him, valentines
day, vintage, valentines crafts, wedding, wedding dresses, wedding hair,
wedding rings, wedding ideas, xmas, x, xmas crafts, xmas decorations, x rated,
yoga, yoga poses, yoga pants, yellow, yoga workout, zucchini recipes, zucchini,
zac efron, zara, zucchini bread

-------------------------------------------------------------------------------
Table: Popular queries on Pinterest, showing the 5 search input auto-complete suggestions for each letter of the alphabet. Though Pinterest requires users to be logged-in, this list does not appear to be personalized: the same list was derived when I asked other users to run the collection code. \label{pop_pinterest}

#### Baseline

The baseline for the system will be a unigram language model, with the query likelihood based on the terms of a document's title and user description, and smoothed against the collection likelihood with linear smoothing (i.e. _Jelinek-Mercer_).

Fundamentally, the language modelling approach assumes each document as a generative model, and estimates the probability of any given document $d$ generating a query $q$.

The unigram model makes a couple of simplifying assumptions. 
First, it assumes that the query-independent probability of a document being relevant, $P(d)$, is uniform, meaning it does not affect ranking and can effectively be ignored.
Also removing the document-independent query constant, it means that

$P(d|q)\propto(P(q|d))$, 

leaving our estimate in the hands of P(q|d).
The second assumption for the unigram model is that the probability of a document generating a query is the joint probability of each term in the query occurring in the document.
Thus,

$P(q|d)=\prod\limits_{i=1}^n P(q_i|d)$.

This assumes a conditional independence between terms.
However, taking a maximum likelihood estimate for $P(q_i|d)$---dividing term $q_i$'s occurrences in document $d$ by the sum of all terms---suffers from some problems.
First, it heavily punishes documents where a word has not occurred, over-emphasizing seen words in the document's language model.
Secondly, it fails to account for the general likelihood of a word occurring in the language.
Thus, we smooth between the query term in the document's language model and its probability in the collections language model ($P(q_i|C)$).
Smoothing not only de-emphasizes seen words, but also reduces the discriminatory power of common words, akin to the TF-IDF intuition[@zhai_study_2001].

The baseline in this study will use linear smoothing between the two forms of evidence.
With $\lambda=0.75$ chosen based on a reading of @zhai_study_2001's evaluation of linear smoothing performance, the baseline will use the following estimation of $P(q_i|d)$:

$P(q_i|d)=(1-\lambda)P(q_i|d)+\lambda P(w|C)$.


<!-- What would be a surprise? -->

#### System

The testing system will be built on top of Apache Lucene.
Lucene provides high performance for large collections.
The baseline system will use the LMJelinekMercerSimilarity similarity scorer, and subsequent changes will be custom made.

### Risks and fallbacks

This study contains some risks on non-results or failures.

Evaluation problems:
If recruitment for evaluators proves difficult or if the methodology for evaluation is too fatiguing, this study can move to a more reliable albeit less naturalistic evaluation through Mechanical Turk. 

Another evaluation concern is that, with the raw number of materials on Pinterest, there will be more than enough relevant results for the more popular topics related to head queries, even for the baseline system.
The use of NDCG with graded relevance will offer more sensitivity to potential issues.

### Related question: stylistic congealment in crowdsourcing 

How does the stylistic variance of contributions change through the lifespan of a system?
We hypothesize that as crowdsourcing systems grow in size, their contributions also grow less variant in their approach.
This question is related to the research questions of the proposed dissertation and this chapter, and will be useful to consider it.

- Directionality of influence
  - _If_ structure is being solidified: why is it being systematized?
- Contribution attrition 
- Simplicity vs. Hand-holding

If our hypothesis holds true, it would suggest that system designers (or self-governed crowds) steer their system toward more algorithmically tractable forms of contributions over time.
Such a shift might be afforded by crowds large enough to allow the attrition associated with more complexity, or by the increase of well-experienced participants that are comfortable adapting to tighter guidelines.

One notable example of this type of shift is happening is in Wikipedia.
Wikipedia does not set explicit rules, but conventions are established and policed by the community.
For example, after a recommendation in 2006, editors began insisting on well-sourced information underlying all significant statement on the website [@wales_insist_2006].
The structure has also enabled efforts such as DBPedia, structured data representing the entities in Wikipedia pages.
It has also informed information retrieval approaches to understanding entities beyond a query, such as with Google's Knowledge Graph and Microsoft's Satori.

## Conclusion

Descriptive crowdsourcing provides metadata about information objects that has the potential to increase our computation models of them.
However, crowds are human, biased in hard to predict ways.
This chapter considers the issues involved in modelling crowd contributions, centered around an information retrieval study on Pinterest.
