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

# Problem

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
