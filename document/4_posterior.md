Modeling user-contributed document metadata
==================================================================

While on-demand collection of document metadata through crowdsourcing can be invaluable in controlled circumstances, there are cases where either
 the data is already collected, or 
 where there is a limit to the amount of control a system designer can exert over contributors before discouraging them.

In the second of two research chapters, the proposed dissertation will investigate the issue of interpreting human-contributed metadata in an information retrieval context, viewed through the lens of an ranked retrieval study on the online community _Pinterest_.
Whereas the previous chapter looks at issues related to _collecting_ document information from a crowd, this chapter will consider the ways that this form of information is _used_.

The focus of this chapter will be ranked retrieval over content in the online community _Pinterest_, a system for users to publicly save web images in curated lists.
Pinterest is a heavily user-generated website where the majority of crowd contributions fit into the descriptive or curatorial mode that this dissertation is concerned with.
It is an appropriate focus for this study because Pinterest generates new information about existing information object, and does so in a very loosely constrained manner.
Studying retrieval in the context of Pinterest allows broader exploration of interpreting abstract contributions in concrete ways more broadly.

The fundamental difficulty in incorporating user-contributed evidence into an information retrieval model is that often it is subjective in nature.
While this is the type of contribution that sets human contributors apart, it also presents difficulties for interpreting it in a computational way.
This chapter treats the description of 'pins' -- community created visual bookmarks on Pinterest -- as mixtures of human interpretations on their aboutness.
Documents are treated as generative language models, where the actual text of a pin is smoothed against language from co-occurring pins in member lists and language from other users' pins of the source material.

The research performed in @organisciak_evaluating_2012 sheds light on a particular problem of interpreting human contributions: consensus-building in ground truth tasks.
We studied time, experience, and agreement as indicators of the quality of contributions for a paid relevance feedback task.
Answering these questions provided valuable insights into how to treat workers and their data when using paid crowdsourcing for building ground truth datasets.
However, modeling a crowd contribution is an issue that extends beyond paid ground truth generation.
Various types of crowdsourcing data have been used for understanding information retrieval documents, including page links[@page_pagerank_1999], micro-blogging discussion of the documents[@dong_time_2010], social tags[@lamere_social_2008], opinion ratings (<!--TODO1 cite-->), and explicit relevance feedback (<!--TODO1 cite-->).
On contribution-heavy Pinterest, this study will look at how curated lists can expand a system's language model of the typically text-sparse Pinterest documents.
Equally interesting, it will provide us an opportunity to look at where crowdsourcing information fails, perhaps due to unexpected patterns of contribution or misuse of the system.

<!--
Below, I review how various forms of crowd contributions have been used for information retrieval, and propose additional research on a normalizing contributions in a volunteer crowdsourcing system<!--TODO1 change this sentence after the lit review, to say *why* rather than to say I 'will justify'-->

## Scope

The goals of this chapter will stay unchanged, focusing on crowdsourcing additional metadata for improved information retrieval indexing, with an underlying assumption of honest-but-biased workers.
Again, the use cases being looked at are those with objective goals, with the intention of producing an output with minimal divergence from either the norms of a community or the instructions of a task designer.
While user-dependent personalization approaches are an equally promising research direction, they are not part of the questions being investigated here.

This study focuses on volunteered data, mainly because it is a more novel space.
My past research has already looked at issues around interpreting a contribution in paid-crowdsourcing, post-collection.
It is also generally a well-explored space in research [notably including: @ipeirotis_quality_2010; @raykar_supervised_2009; @eickhoff_increasing_2012; @sheng_get_2008; @welinder_online_2010; @whitehill_whose_2009; @snow_cheap_2008; @novotney_cheap_2010].
Others have looked at similar situations of consensus-making among experts [@wallace_who_2011].
Secondly, there is an appeal to pursuing realistic contexts. 
In a production information retrieval context, it is more common to design around user needs, leaving the system designer to use the data for retrieval as it comes in.

## Problem

How do you model a collection of loosely-structured and subjective human contributions into a normative crowd opinion, one that can be used to describe objects in a corpus?

It is common to see differences in the habits of contributors that are trying to achieve the same thing.
Many tasks that assume an objective, correct contribution are nonetheless are subject to interpretation, especially in volunteered contributions where detailed codebooks are deterrents to casual contributions.
Likewise, even when a task is subjective, where a contribution is understood to be related to each individual's tastes and opinion, there are still problems of reliability beyond differences of opinion.
One person's definition of a 3-star opinion judgment or their threshold for what is needed to click an approving 'thumbs up' button might be different from another person's, even if their underlying opinions are identical.

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

It is this latter approach to representing subjective aspects of document, to seek consensus among many individual 

<!-- TODO1: something's missing. More literature from IR? -->

<!--Much work has been completed in posterior corrections for paid crowdsourcing contributions.-->

<!--The research covered in this-->

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

TODO1: need treatment of that study

-->

## Approach

This chapter's core will be a study measuring the value of crowdsourced information in improving information retrieval ranking against the data from Pinterest.

Pinterest is an online community for saving visual bookmarks called 'pins' to curated lists called 'boards'.
On their about page, Pinterest features three primary purposes: saving (as pins), organizing (into boards), and discovery. 
 <!--TODO1: see their definition -->

__RQ1__: How can crowdsourced contributions be incorporated into an generative language retrieval model, and to what effect?

__RQ2__: Can crowdsourced information be improved as evidence by adding contributor-dependent normalization or smoothing techniques?

__RQ3__: How do you account for novelty, allowing for new items without any crowdsourcing contributions?

For _RQ1_, this study treats descriptive user contributions as evidence for estimates of <!--TODO1 P(Q|D)-->, and quality judgments as evidence for a document's prior probability, $P(D)$. <!-- TODO1 unclear terminology-->.
The primary contributions is in improving a document's language model by smoothing it against the language model of the curated lists, 'boards', that it belongs to.
Documents, are treated in two ways: as an individual user's 'pin' -- their visual bookmark of a page on the internet alongside their title, description, and the board they add it to -- and as the meta-document, a collection of all user's pins that same source image.

The variability of human interpretations is embraced in modeling a document, rather than pushed against.
Not everybody sees the same features in the same document, so user-contributed document metadata is treated as a mixture of interpretations.

Why study Pinterest?
Pinterest is a novel website for studying ways to incorporate crowdsourced information into web retrieval.

 * The organizational form of Pinterest, grouping documents into curated lists called 'boards', is a interface pattern that is relevant to many forms of information repository.
   Social OPACs, for example, allow library patrons to collect books into similarly uncontrolled lists.
 * Pinterest contains very little information about the source web document.
   It is feasible to crawl the full text of the source, but as it stands, a Pinterest 'pin' alone offers a record of a _human's interpretation_ of the source.
   It is simple, and helps us avoid confounding the focus on crowd contributions.
 * Since the primary form of Pinterest document is a human reaction to a web document, the user contributions on the site may have possible future use for web retrieval.

Finally, Pinterest is simply interesting.
Demographically there is a female skew <!--TODO1 cite-->, interesting precisely because of the various features or designs that have allowed it to counter-balance the typical male-heavy community demographic.

### Data

This study will be performed on Pinterest, a website of curated images.

Pinterest is built entirely on crowd contributions.
On Pinterest, the document unit is a 'pin': an image, associated with a web URL and page title, and a required text description provided by the user.
Though the most common type of pin is saved from an external website, it is also possible to upload personal content.
The 'descriptions' are required but free-text, meaning they do not necessarily _describe_ the image.

Pins are sorted into curated lists, referred to as 'boards'.
Like pins, classification into board is not controlled.
While adding a pin to a board is an act of classification, the classes are user-defined and can be created for various reason, such as quality judgments (e.g. "Neat stuff"), thematically descriptive (e.g. "dream wedding"), or miscellany of various sorts (e.g. "inspiration", "funny").
Boards are user-specific, created by a user with a title, description, category, and optional map.

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

<!-- TODO1: RQ: consistency in categories among Pins with identical sources -->

There is also the concept of a 'repin', which involves saving a new pin from an existing pin, using the same source URL and image, but applying a new description and saving to a new board.
A document's repin count can be interpreted as a measure of a document's internal influence among the Pinterest community. Additional community-specific social features include commenting on pins and 'liking', which is a unary voting mechanism.

The explicit forms of descriptive crowdsourcing that are seen on Pinterest are:

 * Describing pins: description field, choice of board membership
 * Describing boards: title, description, category, fields
 * Social contribution: commenting on pins, repinning, 'liking', FB/Twitter integration <!--TODO1 confirm FB/Twitter-->


### Design: A Language-modelling approach To curated lists

Adopting a language modeling approach for this study, documents are ranked by estimating the probability of each document's language model generating the query, and that document's prior probability of being relevant.

$P(d|q)\propto P(q|d)P(d)$

Given a basic case of the unigram model [@ponte_language_1998, @song_general_1999] a document's prior probability of generating the query, $P(d)$, is assumed to be constant across all documents.
This is the approach used for the baseline system, provided in detail in the baseline section below.

This work approaches $P(q|d)$ as an estimate that may be improved by user-contributed description of the document, and $P(d)$ as an estimate that may be improved by quality judgments.

#### P(q|d)

Most basically, $P(q|d)$ starts with a maximum likelihood estimate of all the terms in the user's pin.

$P(q|b)$ - The likelihood that the member board would have created the query

$P(q|C)$ - Collection likelihood

T = bag of unigrams from 

<!-- TODO describe interpolation -->

In this study's approach, we assume that co-occurring pins in lists and other users' pins of the same source content represent additional interpretations of the pin's aboutness.
By interpolating a pin's language model with models provided by other documents and users, probability mass is dispersed among different 'interpretations' of the aboutness of the document.
Conceptually, this treatment of multiple subjective interpretations loosens the assumptions of language modeling.
However, functionally it is the same as treating a language model as an objective but latent generative model without different probabilities assigned for different term occurrences.

There are some added complexities that will need to be considered while this study is being conducted.
One is the proper weights to apply to interpolation: what type of smoothing is necessary between different models?
This study will evaluate educated guesses based on work performed by @zhai_study_2001, and decide on whether an genetic parameter-learning algorithm is necessary.

Two other issues that may need to be considered are occasions when there is an absence of other information, perhaps when a pin is alone in its board and nobody else has saved the same source item, 

#### P(d)

One potential problem of this evidence is that is biases 

<!-- TODO1 keep going -->

As an additionally model, P(d) will be modelled

<!--TODO1: Related works: delicious tags-->


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
 2. All pins that belong to the board sample are collected <!-- TODO1: What about other people's ins for the identical product? -->
 3. User data for the sample board creators is collected
 4. A second sample of boards is collected, with all the boards that the sampled pins belong to

The exact size of the sample will be determined once I start collecting data.
As a general rule, I would like to collect as much data as possible, while staying within a manageable file size and collection duration.

<!-- TODO1: Perform gendanken experiments as before -->


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
For evaluation,  I will recruit Pinterest users locally to perform relevance judging.

#### Judgement Design

Users will be asked to judge the relevance of 130 documents for 10 queries on a graded scale from 1 to 10 <!--TODO1 research on graded relevance-->.
<!--Documents will be shown in randomized order, mixing results from the baseline system and the  system.-->
The large number of results judged per query is influenced by the visual format of Pinterest.
Pinterest's visual interface is quicker to browse than text results, and I expect that the common focus on ten ranked results is too small in a realistic setting.
Search results on Pinterest's IR system load 65 results initially, though an 'infinite scroll' keeps loading results as a user scrolls down the page. 
Note that the judging interface format may change following the results of the first half of this dissertation. 

Because of the nuances of the document space, binary relevance is a low bar to achieve on Pinterest.
Many of the user information needs on Pinterest revolve around taste, and an appropriate evaluation should be sensitive not only to whether a document is a match to the query, but _how good_ of a match it is.
This is why evaluation will be performed with graded relevance.
The primary metric for relevance will subsequently be Normalized Discounted Cumulative Gain (NDCG).

<!-- TODO1 describe NDCG -->

<!--
How relevant is this to the query

-->

#### Evaluation Queries

The queries being evaluated will be a mix of evaluators' search history -- dependent on what they feel comfortable providing -- and on popular queries collected through the Pinterest query input auto-complete feature.

When an evaluator is recruited that has used Pinterest, they will be provided a script that collects their Pinterest search history.
They will be asked to cull the list down to queries that they feel comfortable sharing, and to resist the desire to revisit the results until after evaluation.

Additional evaluation queries will be sampled from auto-complete suggestions on Pinterest.
When a user starts to type in a query, five suggestions appear.
For example, typing 'r' will suggest 'recipes', 'red hair', 'rings', 'relationship quotes', and 'rustic wedding'.
These appear to be the five-most probable queries starting with the provided string.
For an insight of what types of queries are in the sampling frame and more generally what topics are popular among Pinterest users, Table <!--TODO1 --> lists the auto-complete suggestions when each letter of the alphabet is entered into the search box.

It should be noted, however, that a sample frame of just the most popular terms is too general.
To shift the sample away from the head of the distribution, the sampling frame will also include 500 queries derived from auto-complete sugestions based on two character strings: specifically, the one hundred most common two-character pairs occurring at the start of the English language.[^twoletter]

<!-- TODO1: cite Norvig -->

[^twoletter]: These are: TH, OF, AN, IN, TO, CO, RE, BE, FO, PR, WH, HA, MA, WI, HE, IS, NO, WA, ON, DE, ST, SE, AS, IT, CA, HI, SO, WE, AR, DI, MO, AL, SU, PA, FR, ME, OR, SH, LI, CH, WO, PO, EX, BY, AT, FI, PE, BU, LA, NE, UN, LE, SA, TR, HO, YO, LO, DO, FA, SI, GR, EN, AC, MI, TE, BO, BA, GO, SP, OU, PL, EV, AB, TA, RA, US, BR, CL, DA, GE, TI, FE, AD, MU, IM, AP, RO, NA, SC, PU, EA, CR, VI, CE, OT, AM, AG, UP, RI, VE.

It is likely that Pinterest's own retrieval model incorporates additional implicit feedback from users in the form of click-through data.
This is a useful indicator of a item's quality
Evaluation queries will be a randomly selected subset of real-world queries, provided by Etsy.<!-- TODO1 doublecheck that this is possible -->
For each query, a description of what constitute the different levels of relevance will be written by myself, and the relevance of the first one hundred results will be rated by paid workers on a graded relevance scale.

-----------------------------
"appetizers, art, ab workout, animals, apartment decorating, appetizers, art, ab workout, animals, apartment decorating, christmas, christmas decorations, chicken recipes, crockpot recipes, christmas crafts, diy, dinner recipes, dresses, desserts, disney, easter, engagement rings, elf on the shelf ideas, eye makeup, easter crafts, food, fashion, funny, funny quotes, fall, garden, gift ideas, gluten free, girls bedroom, gardening, hair styles, hair, healthy recipes, halloween costumes, halloween, inspirational quotes, interior design, ikea, i love you, italy, jewelry, jennifer lawrence, jello shots, jeans, jokes, kitchen, kitchen ideas, kids crafts, kitchen decor, kids, love quotes, love, living room, long hair, lingerie, makeup, medium hair styles for women, mothers day, mothers day gifts, master bedroom, nail art, nails, nail designs, nail art designs, nail art for short nails, ombre hair, organization, organization tips, outfits, organizing, prom dresses, pregnancy, prom hair, paleo, puppies, quotes, quinoa, quinoa recipes, quilts, quotes about change, recipes, red hair, rings, relationship quotes, rustic wedding, spring fashion, shoes, short hair styles for women, short hair, sexy, tattoos, thanksgiving, tattoo ideas, thanksgiving recipes, travel, updos, updo hairstyles, ugly christmas sweater, u�as, updos for medium length hair, valentines ideas, valentines day gifts for him, valentines day, vintage, valentines crafts, wedding, wedding dresses, wedding hair, wedding rings, wedding ideas, xmas, x, xmas crafts, xmas decorations, x rated, yoga, yoga poses, yoga pants, yellow, yoga workout, zucchini recipes, zucchini, zac efron, zara, zucchini bread"
-----------------------------

Table: Popular queries on Pinterest, showing the 5 search input auto-complete suggestions for each letter of the alphabet.
Though Pinterest requires users to be logged-in, this list does not appear to be personalized: the same list was derived when I asked other users to run the collection code.

#### Baseline

The baseline for the system will be a basic unigram model, with the query likelihood based on the terms of a document's title and user description, and smoothed against the collection likelihood with linear smoothing (i.e. _Jelinek-Mercer_).

Fundamentally, the language modelling approach assumes each document as a generative model, and estimates the probability of any given document $d$ generating a query $q$.

The unigram model makes a couple of simplifying assumptions. 
First, it assumes that the query-independent probability of a document being relevant, $P(d)$, is constant, meaning it does not affect ranking and can effectively be ignored.
Also removing the document-independent query constant, it means that

$P(d|q)\propto(P(q|d))$, <!--TODO1: unfinished-->

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


<!-- What would be a surprise? -->

#### System

The testing system will be built on top of Apache Lucene.
Lucene provides high performance for large collections.
The baseline system will use the LMJelinekMercerSimilarity similarity scorer, and subsequent changes will be custom made.

### Risks and fallbacks

This study contains some risks on non-results or failures.

Evaluation problems:
If recruitment for evaluators proves difficult or if the methodology for evaluation is too fatiguing, this study can move to a more reliable albeit less naturalistic evaluation through TODO1 

Another evaluation concern is that, with the raw number of materials on Pinterest, there will be more than enough relevant results for the more popular topics related to head queries, even for the baseline system.
 

### Related questions

<!-- TODO1: Pinterest as a knowledge base -->

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
It has also informed information retrieval approaches to understanding entities beyond a query, such as with Google's Knowledge Graph and Microsoft's Satori <!-- TODO1 citations -->.

<!-- TODO1: talk about relevance to larger question -->

