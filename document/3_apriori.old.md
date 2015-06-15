Designing Reliable Tasks for Descriptive Crowdsourcing
====================================================================


## Motivation

Why is task design important to descriptive crowdsourcing?
Task design has been noted on multiple occasions as an intuitively important consideration, but has only been studied in limited formal circumstances [e.g. @alonso_design_2011; @grady_crowdsourcing_2010].

Crowdsourcing is increasingly being used for information retrieval.
Particularly, the on-demand nature of paid crowdsourcing is being embraced for uses such as relevance judgments [@alonso_crowdsourcing_2008], to describing queries [@chen_improving_2013], and to annotating entities [@finin_annotating_2010].

<!-- TODO2 To cite: post-mortems of failed sites -->

Particularly, my past doctoral-level research motivates this chapter, suggesting the importance of the problem and making this study a logical extension of my doctoral work.

 * In @organisciak_evaluating_2012 we found evidence that at least some error in crowdsourced relevance judgments stems from differing but not necessarily malicious interpretations of the task, suggesting that improved quality can follow from tweaks in design.
 * During research on @organisciak_personalized_2013, we found that asking people to reflect on their response changed the nature of their response, with less internal consistency.


#### Better workers read codebooks

In @organisciak_evaluating_2012, we consider a variety of methods for removing error from relevance judgments collected on Mechanical Turk.
One of the study's findings hints at the importance of task design.

In relevance judgments, workers are shown a _query_, a _description_ of what is relevant to the query, and a set of _results_ to classify as relevant or not relevant to the query.
In our tasks, we showed ten results per tasks, using full item records from an online catalogue.

Looking at the amount of time that a worker spends on classifying each result, we found that overall neither slower workers nor faster performing workers are more consistently reliable (Wilcoxon rank sum $p = 0.064$, but $p = 0.154$ when excluding extreme outliers).
However, looking at that value blocked by the order of results -- i.e. how reliable are workers taking $x$ time on the $y^{th}$ result of a task -- we found that the time spent on correct classifications for the first judgment in a task is significantly higher than the time spent on incorrect classifications (Wilcoxon Rank Sum one-sided $p=0.01$).
For all other relevance judgments in a task, the amount of time spent was insignificant.

Why are slower workers better for the first judgment in a task set, but not for subsequent items?
Remembering that the time spent on the first relevance judgment is confounded with the start of the task and reading the description of what is relevant, we found that the effect is actually related to closer reading of instructions.
Those tasks where a worker spent more time on the first judgment were correlated to better performance overall not just on that first judgment.

It does not matter how much time a worker spends on a task, as long as they spend enough time figuring it out at the beginning.
How do you encourage this form of behaviour? @organisciak_evaluating_2012 did not explore the design of tasks, but the findings suggest two things.

First, it encourages the assumption of honest-but-biased workers.
If a worker interprets the codebook differently then they will disagree with the consensus and be considered a bad performer.
Nothing here suggests a malicious worker, only a misguided one.

The second implication is that a better designed task can help.
While much research tends to focus on the honesty and quality of paid crowdsourcing workers, part of the responsibility toward good quality crowdsourcing data is the requesters.
In a task such as relevance judgments, encouraging better work might require workers to be more aware of their performance or to reassess their understanding of the task when it is necessary. Some possibilities to research might be,

* A training task, where workers are walked through the codebook in relation to actual tasks, and told why specific results are relevant or not relevant.
* Online feedback, showing workers their estimated performance based on agreement with other workers.
* Starting tasks with a known item, and alerting workers when they fail that task.

The importance of designing tasks was also seen in recent unpublished work on collecting human audio similarity judgments.
I investigated ways to address low intra-coder consistency in the ground truth for the Audio Music Similarity (AMS) task of the  Music Information Retrieval EXchange (MIREX), including a change in the collection design.
In the original task, similarity judgments were collected on a three-point "broad" scale -- not similar, somewhat similar, and very similar -- and on a 101-point open-ended "fine" scale.
In comparing the open-ended similarity scores across multiple years, the scores for song pairs did not appear strongly consistent, with a root-mean-squared-error (RMSE) of $16.58$.
Changing the design to provide more particular naming to ranges of the 101-point scale (i.e. a change to the codebook and how it is communicated) improved agreement on song pair similarity to an RMSE of $11.44$ (an improvement of 31%).
Paired with other strategies, this enabled an improvement to $RMSE=5.40$, a 66.1% improvement.

<!-- TODO2: add screenshot of different rating interface -->

#### Dynamic of attention affect the style of contributions

In @organisciak_incidental_2013, I looked at a facet of crowdsourcing that I called _incidental crowdsourcing_ (IC).

Incidental crowdsourcing refers to crowdsourcing in the periphery.
These are elements that are unobtrusive and non-critical to the user or the system.
They generally:

 * describe existing information,
 * collect contributions in low-granularity mechanisms,
 * and favor interface choices over statements.

An example of an incidental crowdsourcing mechanic might be a 'thumbs-up' voting button on a video-sharing website or tagging functionality on an image-sharing website that does not force itself upon users.

By not taking users hostage or asking users for overly attentive or time-consuming contributions, incidental crowdsourcing contributions result in greater numbers of contributions, even if individual contributions are less frequent.

Contributors to IC also tend toward different patterns of contribution.
This was clear in a small example study comparing a crowdsourcing element on two systems: one that was designed more 'incidental' while another put up more hurdles for contributing quality [@organisciak_incidental_2013].
In the systems, I compared the ratings of identical product on two application marketplaces for the Android smartphone operating system: Amazon's Appstore and Google Play.
Users on both systems are able to rate applications on a five-point scale;
however, while Google's store allows them to offer this rating quickly and without any other guidelines, Amazon's store requires an accompanying review with a minimum word length, and also has a codebook that reviewers must abide by.

<!-- Note: since Markdown doesn't let you specify image size - and why would it - the image was converted in the following manner to a higher DPI, using imageMagick
	convert images/comparison-of-average-ratings.png -density 300 -units PixelsPerInch images/comparison-of-average-ratings300DPI.png
 -->
![The difference in average ratings for the same items between Amazon Appstore and Google Play](images/comparison-of-average-ratings300DPI.png)

Though other potential factors may also affect differences between the systems, this cursory comparison suggests that the attentiveness and introspection required of a crowdsourcing contribution affects what that contribution will look like.

Since most incidental crowdsourcing deals with reaction to existing documents rather than creation of outright new works, the future directions suggested by this work (in addition the work itself) are pertinent to the proposed dissertation's focus on crowdsourcing for information retrieval indexing.

<!-- TODO2 mention low-effor crowdsourcing research -->

#### What are you _feeling_? Introspection changes rating habits

Additional evidence for this was encountered in a peripheral finding while conducting research for @organisciak_personalized_2013. [^Note that the result here was not the primary focus of the study and is thus unpublished. Despite being unpublished, this work was purformed for Microsoft Research and should not be considered a contribution of this document.]
In this case, we were again looking at opinion ratings on a five-point scale, this time on Mechanical Turk.
Workers were asked to provide their personal opinions on whether they liked the style of each of 100 salt shakers.
In one group of workers, this is all they were asked.
In another group, we also asked workers to explain why they gave that rating.
Alongside their rating of the item, they would provide a short explanation, such as 'I like the colors'.
In most other regards the ratings were collected in the same way:
 on Mechanical Turk during the US work day,
 in an interface designed identically -- besides the additional text input boxes for the latter formulation --
 and with the same restrictions on workers.
The payment for the task was scaled to account for the extra time necessary for completion.

The figure below shows the distribution of workers by their average rating.
In the first set, where workers rated quickly, the workers' average ratings were across the board: there were some unambiguously negative raters, some notably positive raters, and everything in-between.
While the average worker could be expect to give a rating of 2.52 stars, the standard deviation was 0.69.
In contrast, the workers that were asked to explain their rating tempered their opinions more.
The distribution of average ratings of individuals was normal ($p=0.9644$,Shapiro-Wilk) about a mean of 2.68 with a much lower standard deviation of 0.47.

![A comparison of raters' average ratings of salt shaker preferences, when only asked for a preference rating (above) and when also asked to explain the reason for their rating (below)](images/why-dist300DPI.png)

It is clear that workers in the set with more introspection performed work differently.
However, their contributions were also not markedly different in reliability when compared against an internal consistency test, averaging a difference of 0.33 stars when asked to rate the same item, versus an average difference of 0.39 stars.

These findings are suggestive of two issues related to this dissertation.
First, they support the premise that different designs for ostensibly the same task change the contours of the resulting data.
They also show that simply scaling a task to take more time does not provide corresponding returns in reliability improvements.

<!--### Motivating and related work

 <!--TODO2: lots of lit review here!!

__Notes__

 * On-demand data collection for IR in increasingly common
 * Others have warned that design plays an important role (e.g. Alonso and Lease, Howe, others)
   * That being said research on the area of design is sparse
     * TREC track?
     * Research on Games with a Purpose is the exception
-->
## Scope

In looking at the design of contribution tasks, I will be focusing on paid crowdsourcing.
For the scope of this study, it would be intractable to look at at the design of both paid and volunteer crowdsourcing task, so I will pursue the part that is more common for information retrieval researchers to have control over.
Paying workers is only one part of crowdsourcing, and one that arguably tethers the scalability of a task by anchoring it
to financial means.
However, it is easier to control for because it sidesteps much of the complexities of motivation.
Information retrieval researchers are using the predictability of paid crowd markets like Amazon's Mechanical Turk to generate on-demand data, making design for those systems important.

## Approach

### Task

The metadata encoding task being controlled for is a microblog annotation task.

Microblogging messages, in this case from Twitter, are notably truncated.
Since Twitter messages are limited to 140 characters, messages often are brief, missing context, and heavily abbreviated.
This creates problems for parsing the topic of an individual message.
On Twitter, the use of microblogging is so ephemeral and diverse that many information retrieval needs are completely new when introduced and only exist for a short period of time [@chen_improving_2013].

Microblogging users partially address this problem by occasionally encoding metadata into messages in a structured way.
For example, _hashtags_ are used to describe the topic, theme, or context of a tweet [@efron_information_2011].
Unfortunately, these are inconsistently applied and with differing purposes.

Due to the sparse information and novel needs of microblog IR, crowdsourcing has been used in this area, both for augmenting tweets and for creating datasets to train classifiers specific to the corpus.
Twitter, the company, uses Mechanical Turk in this way to understand the context of trending queries.
When there is a spike in search volume, human classifiers are able to differentiate between possible interpretations of the query [@chen_improving_2013].
For example, when "Big Bird" began trending after a political candidate made a polarizing comment about public television funding, it was easily identified as a political query.

#### Data

For evaluation, a gold standard set will be encoded by myself, as a reliability coder.
A ground truth dataset will be built after all experiments are run, by pooling all responses for a consensus.
For additional rigour, the pooled dataset will be compared against my ground truth, so that points of disagreement can be re-evaluation.

#### Baseline

The baseline for evaluation is the performance of workers on the basic contribution interface.

#### Measurement

Primary questions

 * Quantitative
   * What is the mean agreement between workers encoding the same tweet?
     * Null hypothesis: That the agreement distributions for interface X is equal to or less than the distribution for the basic interface.
   * What is the internal consistency of workers when they are asked to encode the exact same tweet?
     * Null hypothesis: That the consistency distributions for interface X is equal to or less than the distribution for the basic interface.
 * Qualitative
   * User feedback: all tasks will include optional feedback forms.
     This will include an free-text field for any communication that workers may want to pass on, and a Likert scale question on how interesting the task was.

Secondary questions

 * What is the mean time a worker spends on their first task set? What is the amount of time workers spend on ten task sets?
 * What is the mean number of task sets that workers perform?
 * What is the expected cost per contribution?

## Conclusion

Crowdsourcing is a promising approach for collecting descriptive document metadata.
We have seen that the contribution changes as the instrument does, but there has not been much study into the effect of design on the reliability and consistency of contributions.
This chapter of the dissertation allows these issues to be explored, stimulated by a study comparing the data from various designs of a microblog message encoding task.
