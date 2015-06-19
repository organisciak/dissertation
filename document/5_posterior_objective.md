Interpreting Objective Tasks for Paid Crowdsourcing
====================================================

<!-- TODO add Abstract, or "Summary of Chapter" Marginalia, to this chapter and others? -->
\begin{fullwidth}
\begin{quote}
Gathering annotations from non-expert online raters is an attractive method for quickly completing large-scale annotation tasks, but the increased possibility of unreliable annotators and diminished work quality remains a cause for concern.
In the context of information retrieval, where human-encoded relevance judgments underlie the evaluation of new systems and methods, the ability to quickly and reliably collect trustworthy annotations allows for quicker development and iteration of research.
In the context of paid online workers, this study evaluates indicators of non-expert performance along three lines: temporality, experience, and agreement.
It is found that user performance is a key indicator for future performance.
Additionally, the time spent by raters familiarizing themselves with a new set of tasks is important for rater quality, as is long-term familiarity with a topic being rated.
These findings may inform large-scale digital collections’ use of non-expert raters for performing more purposive and affordable online annotation activities. 
\end{quote}
\end{fullwidth}

\marginnote{This paper was previously presented at ASIS\&T 2012:\\TODO citation}
Work supported through online volunteer contributions or micropayment-based labor presents a strikingly different mode for annotating information items.
The accessibility of large groups of contributors online -- in the form of either interested volunteers or paid workers -- allows for large-scale annotation tasks to be completed quickly.
However, this approach also introduces new problems of reliability by problematizing assumptions about expertise and work quality.
The actual raters in these tasks are generally self-selected and unvetted, making it difficult to ascertain the reliability of the ratings.

Online annotations need to be both collected and interpreted.
Where later chapters focus on issues in collection, here the post-collection interpretative stage is considered.
In the absence of traditional measures of reliability, how do we know what online contributions can be trusted, and is it possible to improve their signal?

This chapter approaches a crucial problem: disambiguating the influence of unreliable annotators from natural uncertainty in multi-rater aggregation.
This goal is pursued for tasks with an expected truth -- that is, objective tasks.
However, a key assumption is made: that of a negotiated "ground truth" over an objective one.
By assuming that the truth-value is a negotiated truth, rater disagreement is not in itself a sign of bad raters, but should be considered in light of the agreement among raters.

This chapter makes the following contributions:
- Description of the problem of reconciling annotation contributions or work by non-expert, semi-anonymous raters.
- Evaluation of a number of approaches for separating rater quality from rating difficulty, including dwell time, rater experience, task difficulty, and agreement with other raters. 
- Introduction of an iterative algorithm that allows task difficulty (inherent disagreement) to be disambiguated from rater reliability (i.e. synthetic disagreement).

The scope of this study is in relevance assessment for information retrieval related to the IMLS DCC cultural heritage aggregation. Relevance assessments are a vital part of information retrieval evaluation and help in addressing the unique search challenges faced by large aggregators of cultural heritage content.


## Problem

Online annotation generally takes the form of short, fragmented tasks.
To capitalize on the scale and ephemerality of online users, services such as Amazon's Mechanical Turk (AMT) have emerged, which encourage the short task model as a form of on-demand human work.
Amazon describes the Mechanical Turk service as "artificial artificial intelligence," referring to the facade of computation with a human core.
The subtext here is that Turk enables the easy undertaking of tasks that require human perception – tasks such as encoding, rating, and annotating.

AMT has shown itself useful in information retrieval, where many individual human tasks benefit from parallelized contributions.
The workers are non-expert raters. 
However, their lack of domain or even task expertise is not inherently a problem: past studies have found that only a few parallel annotations are required to reach expert quality [@snow_cheap_2008] and that increasing the amount of parallel labor per item offers diminishing returns[@novotney_cheap_2010].
Training is possible on AMT, but the large workforce and transience of individual workers means that training conflicts with the cost and speed benefits of micropayment-based labor.[^Training]

As AMT has grown, however, the appeal of cheating has also grown.^[TODO: demographic studies seem to show this change over time, but I don't recall the sources. TODO FIND. Also, recent work seems to suggest that this is swinging back -- Eric Gilbert's 2015 CHI paper made this anecdotal observation]
The workforce, who was originally a mix between those looking to pass time and those looking to earn money, has been shifting primarily to the latter[@eickhoff_increasing_2012]. Since reimbursement is done per task rather than per hour, contributors have a monetary incentive to complete tasks as quickly as possible. The site's continued growth may attract more cheaters in the future, making it more important to be able to properly identify them within classification data.

[^Training]: The next chapter considers whether a small localized training can be effective on AMT, and whether it can be cost effective.

Even among non-malicious workers, there is still the potential problem of varying expertise.
Workers begin a task with no prior experience and grow more experienced over time.
When there may be hundreds or thousands of workers, each one potentially following a learning curve, the effect of inexperience should be taken more seriously than in traditional settings with only one or a few workers.
Making decisions from majority voting is quite robust in many cases.
However, to safeguard against the presence of cheaters and their strengthened influence in low-consensus tasks, a less naive decision-making process may be valuable.

The problem of reconciling ground truth votes from unvetted and potentially unreliable raters is not limited to the use of Mechanical Turk.
Digital libraries now have the ability to interact with their users in ways that crowdsource the creation of new content or metadata.[^TODO these are statements that should be backed up by references]
Volunteer contributions may provide entirely new content – such as suggested labels or corrections – or feedback on existing content – such as rating the quality of an item's metadata.
While unpaid engagement does not have the same financial motivation for malicious raters, contributions that are open to the public are still susceptible to low-quality results: whether through recklessness, misunderstanding, mischief, or simply spam. Furthermore, even when the ratings or annotations from unvetted semi-anonymous online raters are of a high quality, there is nonetheless a need to justify the quality of those ratings.

## Motivation

The impetus for the research in this chapter was a desire to improve the effectiveness of an information retrieval system for the Institute of Museum and Library Services Digital Collections and Content project (IMLS DCC).
The IMLS DCC is a large aggregation of digital cultural heritage materials from museums, libraries, and archives across the country. 
Originally launched in 2002 as a point of access to digital collections supported by the IMLS through National Leadership Grants and LSTA funding, it has since expanded its scope to provide more inclusive coverage of American history collections, regardless of funding source.
As a result of its position among the largest cultural heritage aggregations in the U.S., research through the IMLS DCC looks at the problems associated with reconciling content from thousands of different providers, including metadata interoperability, collection-item relationships, and access to materials.
One of the difficulties that IMLS DCC must address is information retrieval when the metadata records in its aggregation are of inconsistent length, style, and informativeness.
Overcoming these types of problems in order to improve subject access to the breadth of materials is an active problem [e.g. @efron_building_2011; @efron_improving_2012].
In doing so, human relevance ratings are an invaluable resource for evaluating document relevance in a given query.

## Related Work ^[Or, _what we already know_]

As non-expert classification has become more common, there have been a number of studies into the quality of its raters.
Generally, such studies have found that, while a single rater does not match the quality of an expert, aggregating votes from multiple earnest raters can match the quality of an expert. 

@snow_cheap_2008, found that for natural language processing tasks, only a few redundant classifications are necessary to emulate expert quality – their task required an average of four labels.
Similarly, @novotney_cheap_2010, looking at online transcription, found that the increase in quality from adding redundant annotations was small, and recommended allocation resources to collecting new data.
Additionally, they noted that disagreement measures are more effective for identifying and correcting for bad workers than they are for finding good workers, due to false positives among highly ranked raters.

In understanding the role of non-expert raters, a number of studies have taken differing approaches to ranking rater reliability and dealing with noise. Some have attempted to model rater noise against gold standard labels [@hsueh_data_2009; @eickhoff_increasing_2012].
However, more commonly, researchers look at ways to understand rater quality without the presence of ground truth data. 
One common approach to separate the latent variable of rater quality from task difficulty enlists the Expectation Maximization (EM) algorithm, weighing rater judgments based on past performance [@whitehill_whose_2009; @welinder_online_2010]^[TODO cite Wang et al 2011].
The approach taken in this study is similar in principle to the EM algorithm. 

@donmez_probabilistic_2010 take a different approach, using a variant of Sequential Bayesian Estimation to estimate incremental changes in raters by building posterior probability density functions.

Raters have been treated as a mix good or bad, where the nature of the problem is to identify the latter for removal [@dekel_vox_2009].
Other work has treated reliability not as an issue of replacing users, but rather of identifying low quality ratings to reinforce with additional ratings [@sheng_get_2008].
^[TODO insert screenshot from original paper]

One notably unique concept of user quality was the assumption by @donmez_probabilistic_2010 that the quality of raters changes over time.
In other words, rater quality was considered a distribution over time, rather than an overall score.
Notable about this approach is that there are no assumptions about the direction of quality change by raters, allowing them to account not only for inexperience but also for occasional patches of low quality ratings by a rater.

Alongside prior work in representing non-expert annotators, research has also considered using the information for deciding on future actions.
This has been considered both as an act of choosing the next tasks for a rater [@wallace_who_2011; @welinder_multidimensional_2010], and alternately an act of choosing the next raters for a task [@donmez_efficiently_2009][^TODO: or was this donmez 2010??].
