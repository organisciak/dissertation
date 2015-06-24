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

[^TODO sidenote or more research on later Crowdsourcing Track challenges]

In 2011, the Text Retrieval Conference (TREC) held a Crowdsourcing track for the first time, which dealt directly with the evaluation of search engines by non-expert raters hired through micropayment services.
Teams looked at one or both of two tasks.
The first task was to effectively collect high-quality relevance judgments. The second task, in line with the goals of this study, was to “compute consensus (aka. ‘label aggregation’) over a set of individual worker labels” [@lease_overview_2011].

There were two evaluation sets used with the second task of the TREC Crowdsourcing Track: one of consensus labels from among all the participating teams and one of ground truth gold labels done by professional assessors.
Accuracy rates – the number of properly labeled ratings divided by all ratings – spanned from 0.35 to 0.94 with a median of 0.835 against the crowdsourced consensus labels, while the runs against the gold labels spanned from 0.44 to 0.70 with a median of 0.66.
In achieving these results, the ten teams used a variety of approaches, including the EM algorithm, rules-based learning models, and topic-conditional naïve Bayes modeling (ibid).

When measured by accuracy, the EM algorithm was among the most prominent.
The best performing team against each evaluation set – BUPT-WILDCAT and uc3m, respectively – both had an EM implementation in their submission, though the latter was paired with a number of additional rules.
However, uc3m’s second, non-official run slightly outperformed the accuracy of their official submission with a support vector machine (SVM) approach[@urbano_university_2011].

## Approach

The purpose of this study is to determine important factors in making truth value decisions from repeated ratings by non-expert raters.
In the context of paid microtask labor, this study looks to simultaneously interrogate worker quality and task difficulty, allowing the estimates of one to inform the estimates of the other. 

The factors that we consider are in the following three areas: 

- _Experience_. Do raters grow more reliable over time?
Can you account for the rating distribution given the rater's experience? In this study, tasks are grouped topically, by "queries".
Raters were asked 'is this metadata record relevant to Query X' or 'what is the tone of Query X?'
As such, we also looked at whether a rater's experience with a query affects their performance.

- _Temporality_. Does the length of time that a rater spends on a question reflect the quality of their rating?

- _Agreement_. Does a rater's agreement or disagreement with other raters reflect their overall quality as a rater?
We also investigated ways to quantify disagreement and to correct for it.

Most of the evaluations are measured through accuracy, which is percentage of correct classifications that are made:

$accuracy = \frac{\# of correct classifications}{total \# of classifications}$

There are two comparison sets of data by which ‘correct’ classifications were taken.
The first was against consensus labels, which were simply generated by taking the majority vote for a given task.
Since these are derived from the actual dataset, they may not be completely reliable.
However, for comparative purposes, they offer us a metric by which to see trends in the data.

The cleaner set of ground truth data is a set of oracle ratings done by myself and the authors of @organisciak_evaluating_2012.
Since the authors are of known reliability and have a close understanding of both the rating task and the data being rated, the oracle judgments serve as an effective measure for evaluating the accuracy of the majority votes themselves.

## Data
Crowdsourced annotation is studied over two two datasets in this study. 

In dataset of primary focus, raters contributed judgements of the relevance of cultural heritage documents to a given query.
This data was rated with three-rater redundancy, which means that for each document, there were three raters that completed the rating task.
There were three label options available to raters: _relevant_, _non-relevant_, and _I don't know_.
The unknown option was considered a skipped option and the data was removed from the final dataset. 

Annotations were collected through Amazon's Mechanical Turk service, using a custom rating interface.
When a rater accepted a judgment task, they were shown a page with a query, description of the task, description of the coding manual (i.e. what types of documents should be rated as relevant), and up to ten ribbons of documents to rate (see Figure 1[^TODO insert figure]).
The structured form of digital item records lends itself well to such tasks, which we represented through the title, description, and related image thumbnail. To aid the task of scrolling through ratings and decrease the time spent on tasks, our interface automatically scrolled to the next tasks once the previous one was rated.

## Approach

[^TODO: this chapter needs to be normalizd for language... 'workers' vs. 'contributors' vs 'raters' vs 'annotators']
The documents in the rating tasks were brief collection metadata documents, which workers annotated according to their relevance to a given query.
Workers contributed ratings ten items at a time.
The task set size was chose for two reasons.
First, this allowed for less time loading and adjusting to new tasks.
If there was a learning curve for each query – as this study finds to be present, albeit minor – it seemed sensible to allow raters some time to rate once they grew comfortable with a task.
The second reason was to create a minimum usable profile of a rater's performance, which would have been difficult with fewer tasks.
Note that not all sets of tasks had ten items, as our system would track tasks that were completed or in progress, serving fewer than ten when ten were not available.

Originally $17700$ data points were collected, though this was later increased to just under $23000$.
The average amount of time spent on each individual item was $4.8$ seconds, with half of all ratings being done in less than $1.8$ seconds and full rating sets being completed in an average time of $37.3$ seconds.

There were 157 unique workers that contributed ratings, rating an average of 141.9 tasks.
The most dedicated rater completed a total of 1404 ratings.
The distribution for contribution count resembles an inverse power law, a distribution commonly seen among contributions from online users (see Figure 3[^TODO insert figure]).
For comparison with other tasks, a second dataset was also analyzed, in which raters classified the tone of a number of political tweets. This Twitter sentiment dataset it included more classification options - raters rated the tweet as having positive, negative, or neutral tone or whether it was incoherent or spam.

For both the primary and secondary datasets, there was an accompanying set of ground truth oracle judgments.
These were used for evaluation.

## Factors

### Temporality [^TODO: rewrite to include RQs more explicitly]
Among the statistics collected for the relevance judgment dataset was _dwell time_: the time spent on each rating.
The hypothesis motivating this metric was that dwell time was not significant when understood independently, but might indicate the quality of raters when taking into account the order in which tasks were completed.
Since tasks were done in sets of ten, the order referred to where in this set they occurred.

Order served as a useful grouping factor because the time spent on the first rating is confounded with the time spent reading the rating instructions, which is to say that the two are inseparable.
Figure 4[^TODO] shows the distribution of rater performance by dwell time alone.
As expected, a correct classifications do tend to take slightly more time, 
there is not enough evidence to reject the null hypothesis of equal distributions.
Thus, for this the setting of cultural heritage retrieval relevance judgments, dwell time alone is insignificant to performance (Wilcoxon rank sum $p=0.064$; $p=0.154$ when excluding extreme outliers).

However, dwell time considered alongside the order or task completion (i.e. how much time was spent on the first task? On the second?) tells a more complete story.

Consider first the amount of time that is spent on each $n^{th}$ task.
Pairwise Wilcoxon Rank Sum tests show that the amount of time spent on the first rating in a set is significantly different from all other ratings ($p<0.001$, with Bonferroni adjustment), as were all pairwise comparisons with the second rating in a set ($p=0.02$ vs order 3, $p<0.001$ vs all others; Bonferroni adjustment).
Notably, however, we fail to reject the null hypothesis for all other ratings in a set.

This means that there is extremely little difference in time spent between a rater's third and tenth ratings, as well as all comparisons in between.
This is more abrupt than the gradual decline that was expected, and suggests that the learning curve for a rater to rate comfortably is only the first two ratings.[^TODO sidenote reinforcing this point]

Comparing the accuracy of ratings by dwell time, the time spent on the first rating of a set is significantly higher for ratings that are correct than those that are incorrect (Wilcoxon Rank Sum one-sided $p=0.01$).
This stands in contrast to every rating after the first one, none of which show significant difference in time spent on ratings that are true and ones that are false.

The measurement of dwell time for the first item in an item set is confounding with the readying of instructions[^Which is to say, we had no measurement for when a worker's attentions turn away from the background material at the start of a task toward the first task in the set of ten.]
The fact that a rater spending more time on the first rating indicates a higher likelihood of correctness suggests that there is a latent effect in how closely people read the description, 

If this is in fact what accounts for the significant different, it should be an effect that lingers across the full set of data.

Figure 6[^TODO insert image] shows this to be the case, with raters that make a correct rating on the first item are much more reliable in the rest of the rating set.

As part of the rating instructions, raters were presented with a description of what types of results are relevant to the given query (see screenshot in Figure [^TODO figure]).
If a rater does not read this section carefully, their ratings would be more interpretive, possibly resulting in inconsistencies with raters that followed the instructions more carefully.

## Experience
Does rater quality increase with practice?
An extension of the order grouping factor, the next factor considered was the long-term experience of a rater.
Experience was looked at in two forms: lifetime experience and query experience.

_Lifetime experience_ is the overall number of tasks that a rater has completed.[^_Lifetime_ refers to the task type, such as _all relevance judgments_, not all tasks completed on the platform.]
Is a rater's 100th task more likely to be correct than their first task?
The hypothesis motivating this was that over time raters would grow more reliable.
However, this hypothesis proved to be incorrect.

Figure 5[^TODO] shows the distribution of accuracy ratings across lifetime experience.
Each point represents the percentage of the $n^{th}$ ratings that were correctly rated.
If a point at position $x$ shows an accuracy of 0.80, this means that 80% of tasks which were raters' $x^{th}$ rating agreed with the majority, our estimated value for the correct label.
The second measure of experience, query experience, refers to the number of tasks that a rater has completed within a single topical domain.
In information retrieval relevance judgments, raters are asked to judge whether a document is relevant to a given query; thus, the query experience.
Similarly, in the secondary dataset of Twitter sentiment ratings, raters were asked to annotate the opinion of the tweet regarding a given topic.

Query experience proved to be an indicator of rater quality among the most experienced users.
For approximately the first thirty tasks which raters completed with a single query, they did not demonstrate any meaningful difference in quality.
As demonstrated in Figure 7[^TODO], however, ratings beyond that point showed a sharp increase in quality.

[^TODO discuss _why_]

## Rater Agreement and Task Difficulty

Finally, in addition to worker experience and time spent per tasks, this chapter looked at the ability of rater agreement and task difficulty to discern the accuracy of ratings.
The reason that these were considered together is that they are invariably confounded: a task has as little as three ratings informing any estimates of the quality, and those ratings are each biased by the quality of the specific raters involved.
There were two approaches looked at: identifying and replacing low quality workers, and an iterative algorithm for weighing workers and tasks.

### Replacing Problem Workers
One of the immediate problems with our primary data was a low rater agreement (Fleiss' Kappa = 0.264).
In our first attempt to improve the agreement between raters, we identified low-quality raters and replaced their contributions.
First, a confusion matrix was calculated for all raters and an accuracy rate was taken as a measure of a rater's reliability.
Raters below a certain threshold were removed and new raters replaced their ratings. The threshold chosen was $0.67$, meaning raters whose ratings agreed with their co-raters on a task less than two-thirds of the time were removed.

The threshold for removing workers was supported by a simulation where an undiscerning rater was emulated, replacing randomly selected classifications in the data with its own random ratings.
While a rater in an environment completely populated by random raters would be in the majority two-thirds of the time, inserting random raters alongside the real raters in the data provides a more realistic estimate. Across $100$ runs, the mean accuracy rate of the random rater was $0.680$, with a median of $0.677$ and standard deviation of $0.080$.
In other words, the raters whose data was removed -- with an accuracy less than 67% -- were less likely to be in the majority opinion on a rating than a randomized bot.
This accuracy rate also puts our data in perspective, falling somewhere between the $0.75$ agreement that would be expected of a random rater in a completely random triple-redundancy labeling system and the $0.50$ agreement expected of a random rater in an ideal human setting with all other raters agreeing on ratings.

There were $23$ raters below or at the threshold that were removed, accounting for $2377$ ratings ($0.1769$ of the data).
Notably, there were $10$ raters with a total of $1069$ ratings that had accuracy rates right at the threshold, meaning that nearly half of removed ratings would not have been taken out with a slightly lower threshold.

After removing problem workers, there was an increase in kappa score from $0.264$ to $0.358$.
The increase in intercoder agreement is expected, given that our metric for problematic raters is how much they agreed with other raters.
However, since these raters were by definition already in the minority much of the time, their influence on actual votes was not high.
Thus, the assumption to test is whether, when low-agreement raters do end up in the majority, they cause damage by influencing votes in the wrong direction.

In fact, the negative quality impact of problem raters proved to be very small.
The accuracy rate of final votes after replacing them increased from $0.856$ to $0.862$.
In contrast, an alternative to selective replacement of problem raters is selective redundancy.
Rather than removing data, one can take the approach of adding more labels, as encouraged by @sheng_get_2008.
This approach resulted in an increase to $0.859$, a smaller increase than that of removing problem workers.
In other words, majority rating proved fairly efficient at smoothing over individual bad raters, limiting their influence.

In order to further increase rater agreement, one could presumably run the replacement process again.
However, when non-expert labels are being paid for, removing problematic raters can grow quite costly – especially given the low payoff in accuracy.
A cheating or sloppy rater can also rate a large number of ratings quickly, making the potential lost profit even higher.
However, the removal and blocking of low-agreement raters can be automated fairly easily, making it possible to incorporate in real time within a rating interface. 

Why were some workers correct – or at least in the majority opinion of what a correct rating is – less than chance?
One possibility is sincere raters misunderstanding the task. Wang et al. (2011)[^TODO add this to reference list] refer to such situations as recoverable error and offer a method for identifying consistently incorrect raters and correcting their votes.
In the case of binary data such as our relevance judgments, this would simply mean inverting relevant votes to non-relevant, and vice-versa.
However, none of the raters in our data would improve with such an approach, and it seems like an unlikely occurrence for a rater to make such a drastic mistake systematically.
However, it is possible that less drastic misinterpretations can lead to problems with difficult tasks due to misunderstanding the delineation between categories.
As we found in our tests on dwell time, raters that appear to spend less time on instructions tend to make more errors: perhaps subtle misunderstandings can lead to consistently poor performance.

### Iterative Optimization Algorithm
While removing raters based on their error rate has a positive effect on the data, it does not take into account the difficulty of the task that is being completed by the rater.
If a rater has the misfortune of being assigned a particularly difficult or debatable set of results to rate, their error rate may prove to be quite high.
More unfortunate still, a rater may be rating alongside numerous low quality raters.
If two low quality raters disagree with one higher quality rater, the dissenting rater's reliability should reflect the circumstances.
There may be latent variables that are not accounted by our system which adversely affect the data.

To account for unknown variables and separate out signal from noise, an iterative algorithm was developed to simultaneously weigh rater votes and the difficulty of the task.
In line with the purpose of this study, this approach allows one to not only evaluate raters, but to separate out the effect of the task itself.

The algorithm iterates over two steps.

In the first step, an expected truth for each document is calculated, given the information that is available about that document, the possible labels for that document, and the raters evaluating that document.
Early on, that information is limited: while it is known how often each option was chosen for each document rating and how often each rater used each option, there is no information about the quality of the ratings or the raters making them.

In the second stage of the algorithm, the assigned labels of the expected votes are used to update the parameters that are used in step one.
This involves assigning values of confidence for the results and determining rater quality based on that confidence value.
After this stage, the algorithm was iterated again, returning to the first stage for voting on the expected true value.

This algorithm converges or approaches a convergence limit after a number of iterations.
The number of iterations that are required before the data converges varies, but only a few are generally needed for relatively simple data such as information retrieval relevance judgments.

The anticipated benefit to this approach is that rater quality is less dependent on circumstance.
Consider the follow scenarios:

- A rater makes a dissenting rating on a difficult task.
To form an opinion only on whether they agreed or disagreed with other raters would be unfair to this rater and possibly remove authority from a good rater.
For example, in an instance with five raters, there is a difference in whether a rater is the lone dissenter against a majority of four or one of two dissenters against a majority of three.
In the latter case, there is a more uncertainty in what the truth value really is.
Unfortunately, this scenario is limited for instances with only two categories and three raters, such as a large portion of this study's relevance judgment dataset.

- A cheating rater is correct by chance.
As the earlier simulation found, a random voting rater will be correct 67% of the time in the relevance judgment dataset.
By weighing this rater's vote according to their overall reliability, their votes, even if correct, will hold less sway.
By setting their reliability score based on the confidence in their ratings, their influence will be even lower in subsequent iterations.


