Posterior Corrections for Human Bias
=====================================

While working to normalize contributing users' contexts is possible in well-controlled circumstances, there are cases where either 
 the data is already collected, or 
 where there is a limit to the amount of control a system designer can exert over contributors.

In the second of two research chapters, the proposed dissertation will look at methods to normalize for human bias in already-collected metadata.
This will integrate previously-completed research on improving signal in information retrieval relevance judgments [@organisciak_evaluating_2012] and perform new work on normalizing quality judgments in volunteer crowdsourcing.

The new research performed in this chapter will look at normalizing opinion contributions in a volunteer crowdsourcing system.
The focus on a volunteered data in the proposed new work is for a number of reasons.
	First, my existing research has already looked at this problem in paid crowdsourcing environment, and it is generally a well-explored space in research [notably including: @ipeirotis_quality_2010; @raykar_supervised_2009; @eickhoff_increasing_2012; @wallace_who_2011; @sheng_get_2008; @welinder_online_2010; @whitehill_whose_2009; @snow_cheap_2008; @novotney_cheap_2010].
	Secondly, researching already collected data does not require the same control that researching varying collection designs does, making it more tractable to focus on volunteer systems.
<!-- TODO something less subjective than opinions? -->

## Scope

The assumptions and focus of this chapter will stay unchanged,
 pursuing the assumption of honest-but-biased workers, and
 focusing on crowdsourcing additional metadata for improved information retrieval indexing.

## Problem

How do you normalize for deviations among 


## Existing Work

Much work has been completed in posterior corrections for paid crowdsourcing contributions.

The research covered in this


## Methodology

$P(r_s|C)\approx(1-\lambda)(P(r)+\lambda P(r|R)$ <!--_-->
Where, 
$P(r|R)=\sum_{i=1}^{n}{P(r|t_i}$

### Evaluation

### Baseline

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
