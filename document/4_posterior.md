Posterior Corrections for Human Bias
=====================================

While working to normalize contributing users' contexts is possible in well-controlled circumstances, there are cases where either 
 the data is already collected, or 
 where there is a limit to the amount of control a system designer can exert over contributors.

In the second of two research chapters, the proposed dissertation will look at methods to normalize for human bias in already-collected metadata.
This will integrate previously-completed research on improving signal in information retrieval relevance judgments [@organisciak_evaluating_2012] and perform new work on normalizing quality judgments in volunteer crowdsourcing.

The new research performed in this chapter will look at normalizing opinion contributions in a volunteer crowdsourcing system.

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

# ASIS&T Study


## Methodology

### Measuring Reliability of Human Raters

The first part of this chapter will outline the work previously completed by @organisciak_evaluating_2012, which is already discussed above.

A few additional questions need to be asked for discussion in the context of the proposed dissertation.
One form of analysis that would be useful but was not originally done is to compare the recoverable signal from artificially smaller contributor groups.
If data collection had been cut off earlier, how accurate would the various methods for correcting against a worker's reliability be?

### Understanding Deviation from Expectation

The cornerstone of this chapter will be a study analyzing the deviation of online ratings from the expectation of other humans.
_If another person is shown an online review, what rating will they expect?_ 

### Data

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

If our hypothesis holds true, it would suggest that system designers (or self-governed crowds) steer their system toward more algorithmically tractable forms of contributions over time.
Such a shift might be afforded by crowds large enough to allow the attrition associated with more complexity, or by the increase of well-experienced participants that are comfortable adapting to tighter guidelines.

One notable example of this type of shift is happening is in Wikipedia.
Wikipedia does not set explicit rules, but conventions are established and policed by the community.
For example, after a recommendation in 2006, editors began insisting on well-sourced information underlying all significant statement on the website [@wales_insist_2006].
The structure has also enabled efforts such as DBPedia, structured data representing the entities in Wikipedia pages.
It has also informed information retrieval approaches to understanding entities beyond a query, such as with Google's Knowledge Graph and Microsoft's Satori <!-- TODO citations -->.

<!-- TODO: talk about relevance to larger question -->
