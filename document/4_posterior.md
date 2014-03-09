Correcting for Contributor-Introduced Variance After Contribution 
==================================================================

While working to normalize the manner that users contribute is possible in well-controlled circumstances, there are cases where either 
 the data is already collected, or 
 where there is a limit to the amount of control a system designer can exert over contributors.

It is common to see differences in the habits of contributors that are trying to achieve the same thing.
<!--For example, when providing opinion ratings it is possible to have different contexts of a 'good' or 'bad' rating, when tagging images there are more or less useful types of tags, and ... <--TODO: citations, final example -->
Many tasks that assume an objective, correct contribution are nonetheless are subject to interpretation, especially in volunteered contributions where detailed codebooks are deterrents to casual contributions.
Likewise, even when a task is subjective, where a contribution is understood to be related to each individual's tastes and opinion, there are still problems of reliability beyond differences of opinion.
One person's definition of a 3-star opinion judgment or their threshold for what is needed to click an approving 'thumbs up' button might be different from another person's, even if their underlying opinions is identical.

In the second of two research chapters, the proposed dissertation will investigate the issue of interpreting the human-introduced variance in already-collected metadata.
This will a) integrate previously-completed research on improving signal in information retrieval relevance judgments [@organisciak_evaluating_2012] and b) perform new work on normalizing quality judgments in volunteer crowdsourcing.

On the topic of understanding human-introduced variance and low rater inconsistencies, the research that I collaboratively performed in @organisciak_evaluating_2012 shed light on consensus-building in ground truth tasks.
We studied time, experience, and agreement as indicators of the quality of contributions for a paid relevance feedback task.
Does the amount of time spent on a contribution correlate to a good or bad task?
Does the experience of a contributor, either on the task in general or responding to the specific query, reflect the quality of their contributions?
Can agreement with other contributors be used to measure and potentially correct for quality differences?
Answering these questions provided valuable insights into how to treat workers and their data when using paid crowdsourcing for building ground truth datasets.

However, normalizing crowds contributions to control for variance and improve inter-coder reliability is a larger issue that affects more than just paid ground truth tasks.
Various crowdsourced data has been used for understanding information retrieval documents, including page links (<!--TODO cite-->), Twitter discussion (<!--TODO cite-->), social tags (!--TODO cite-->), opinion ratings (<!--TODO cite-->), and explicit relevance feedback (<!--TODO cite-->).
To study all cases would be unfeasible, but this study will focus on a relevant subset related to crowdsourced data that is already being used in information retrieval.
Below, I review how various forms of contributions have been used for information retrieval, and use the work to justify additional research on a normalizing opinion contributions in a volunteer crowdsourcing system <!--TODO change this sentence after the lit review, to say *why* rather than to say I 'will justify'-->.

Specifically, it will look at the deviation of ratings from normative opinions on business-rating website Yelp.
First, I will examine when an online rater's perception of their rating task deviates from the popular interpretation.
This comparison will be done by providing a rater's reviews to other human workers, and asking them what they would expect the rating to be based on the review.

After performing an analysis on the points of disparity between a contributor's rating and the rating others would expect from their review, this study will attempt a method to model the normative opinion by workers.
The exact approach will be informed by the analysis done in the proposed study, but one potential approach is described below.

## Scope

The goals of this chapter will stay unchanged,
 pursuing the assumption of honest-but-biased workers, and
 focusing on crowdsourcing additional metadata for improved information retrieval indexing.
Again, the use cases being looked at are those with objective goals, with the intention of producing an output with minimal divergence from either the norms of a community or the instructions of a task designer.

The proposed new work will focus on volunteered data, for a number of reasons.
First, my existing research has already looked at this problem in paid crowdsourcing environment, and it is generally a well-explored space in research [notably including: @ipeirotis_quality_2010; @raykar_supervised_2009; @eickhoff_increasing_2012; @sheng_get_2008; @welinder_online_2010; @whitehill_whose_2009; @snow_cheap_2008; @novotney_cheap_2010].
Others have looks at similar situtations of consensus-making among exports [@wallace_who_2011].
Secondly, researching already collected data does not require the same control that researching varying collection designs does, making it more tractable to focus on volunteer systems.

## Problem

How do you normalize for deviations among 

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

## ASIS&T Study


### Methodology

#### Measuring Reliability of Human Raters

The first part of this chapter will outline the work previously completed by @organisciak_evaluating_2012, which is already discussed above.

A few additional questions need to be asked for discussion in the context of the proposed dissertation.
One form of analysis that would be useful but was not originally done is to compare the recoverable signal from artificially smaller contributor groups.
If data collection had been cut off earlier, how accurate would the various methods for correcting against a worker's reliability be?

#### Understanding Deviation from Expectation

The cornerstone of this chapter will be a study analyzing the deviation of online ratings from the expectation of other humans.
_If another person is shown an online review, what rating will they expect?_ 

#### Data

The dataset that will be used is the Yelp Dateset Challenge data[^Yelp], released for academic use in 2013.

[^Yelp: http://www.yelp.com/dataset_challenge] <!--_--> 

The dataset includes a snapshot of all of Yelp's ratings and reviews for Phoenix, Arizona and data for the reviewers involved in those contributions.

#### 

### Correcting for Deviation

Following from the analysis of how and when contributor habits deviate from expected actions, there will be some research put 

$P(r_s|C)\approx(1-\lambda)(P(r)+\lambda P(r|R)$ <!--_-->
Where, 
$P(r|R)=\sum_{i=1}^{n}{P(r|t_i}$

#### Evaluation

#### Baseline



## Related questions

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
