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

In this chapter, I will investigate the effect of different parameterizations of a microblogging encoding task.

<!-- There will be two tasks, both related to encoding microblogging messages, and four different designs for collecting information for them. -->

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

<!--Two types of microblogging metadata tasks will be pursued in this study.-->

The task will be a topic identification task:
 "Is this tweet about topic X?"
Workers are shown a tweet that contains the terms of a query, $Q$, where $Q$ represents an extracted entity.
Their task will be to describe whether the entity is the topic of the tweet, or simply mentioned.

Such a task is useful, but potentially easy to misinterpret by contributors conflating a term being the topic of a tweet with merely being mentioned in the tweet.

<!-- TODO2: Is there research around the topic - primary, tertiary in a sentence -->

<!--
For example, ... TODO2 use Obama examples...
<!--
__TODO2: remove below task__, but first it's worth considering what do do with it. I like it.

The second task will be a summarization task:
 "Find the most self-explanatory tweet from Set A"
Workers will be shown ten microblogging messages from a trending topic and asked to identify the one tweet that best communicates the topic.

Trending topics are a designation on Twitter denoting suddenly popular discussion topics.
They are usually a short query or a hashtag.
Hashtags are likely to represent a discussion topic borne on Twitter itself rather than discussion on an external topic.
A cursory look at trending topics suggests that they are more likely to be self-evident, whereas regular terms tend to react to a notable news event.
For this reason, the tweets will be sampled from non-hashtag trending topics, where the need for explaining what is being referenced appears to be greater.

Understanding a topic based on multiple tweets has previously been performed by @shiells_generating_2010.
They looked at the information contained in multiple messages sharing the same link.
This study differs in that a human looks at multiple messages to understand the topic then selects the single existing message that is the most informative by itself.
However, similar data preparation steps will be required, removing expected spam and near-duplicates.
-->
<!-- TODO2: estimates of Twitter duplicates -->
<!-- TODO2: research hueristics on removing Twitter spam -->

#### Data

This study's dataset will be collected from Twitter through their Search API.
Since we are evaluating the effectiveness of user annotation of Twitter messages, _tweets_, there is no need for a population of tweets, such as the dataset used in the TREC microblogging retrieval track.

The dataset will compile two types of data.
The first data type will be random tweets from the stream, with named entity recognition used to identify entities that are potentially, but not necessarily, the topic of the tweet.
The second data type collected will be all tweets about prominent topics, such as President Obama or musician Justin Bieber, again without prejudice over whether they are the topic of the message or not.
The actual topic will be chosen later. The size of the dataset will be determined after consideration of typical time per task, statistical power, and their trade-off with cost.

For evaluation, a gold standard set will be encoded by myself, as a reliability coder.
A ground truth dataset will be built after all experiments are run, by pooling all responses for a consensus.
For additional rigour, the pooled dataset will be compared against my ground truth, so that points of disagreement can be re-evaluation.

### Task Flow

Before parameterizing the designs of the microblogging task to be studied, a brief exploration of the design space will help discussion.

Commonly, a paid crowdsourcing worker goes through the following steps:

 1. Worker $w$ arrives at task page
 2. $w$ is shown a preview of task $t$
 3. Worker $w$ accepts the task $t$
 4. Work performs task $t$ and submits
 5. A new task $t'$ is chosen and, worker is taken back to _step 2_ or _step 3_

The above steps are the model used by Amazon Mechanical Turk when a task is followed through to completion.
Workers are also given escape options, to skip, reject or return tasks.

Metadata encoding tasks generally consist of the following parts:

 * __Goal__ statement/question. _e.g. "Is this page relevant to query `q`?", "Find the topic of a tweet."_
 * __Instructions__ for performing the task.
 * one or more __Items__ that worker responds to. _e.g. webpage snippets, microblogging messages_
 * __Action__, one per item: the data collection mechanism.


### Gedanken Experiments

Within this framework, a number of factors are observable that may potentially affect how our microblog encoding task is completed.
First are the parameterizations of the task within its existing structure -- changes to the goal, instructions, item, action, and even the task itself.
Ways that these can change from task to task include:

 * __Task__
    * Payment.
    * Bonuses.
    * Number of tasks available.
 * __Goal__
 * __Instructions__
    * Clarity.
    * Restrictive vs. interpretable.
    * Length.
 * __Item__
    * Number of items in a task.
 * __Action__
    * Complexity of action. e.g. granularity.

Of course, we're not constrained to the task structure provided above.
We can add elements to the task design before the task is accepted, at the start of the task, during or in response to individual interactions, or after the task is completed.
Taking away elements might also be possible, such as the instructions, though it is hard to imagine that doing would would have a positive effect on the reliability or variance of the data.

The possibilities are endless for adding parts to the basic task.
To inspire useful ones, it is helpful to consider one final, naturalistic set of factors that may affect the outcome of a paid crowdsourcing task: worker behaviours.

A worker's contribution may be affected by a myriad of factors, such as experience, skill, time spent per task, and attentiveness.
Which of these can be influenced by external factors?

 - _Experience_. Experience is a product of sustained interaction with the current type of task.
   It can affecting indirectly by focusing on methods to extend the length of a user's interaction, such as bonus payments for staying around.
 * _Skill_. Skill is developed over time and is mostly affected by factors internal to the worker.
   To the extent that we could affect it, most functionality would encourage greater experience.
   Teaching workers by reinforcing their successes and failures might also have an effect.
 - _Self-confidence and decisiveness_. Contributors or workers that second-guess themselves more often may be less internally consistent. <!-- TODO2: advice from Diane Kelly on lit? -->
 - _Attentiveness and fatigue_. Environmental distractions or fatigue can change how consistently a task is completed.
The microtasking design pattern in paid crowdsourcing is meant to negate some of the fatigue seen in traditional classification labour, but there is no way to anticipate other outside factors, such has how many tasks from other requesters were completed. It is possible to affect attentiveness and fatigue within a task, however, with higher- or lower-effort tasks.
 - _Perceived importance of task_. The perceived importance of a task might affect some other factors, such as attentiveness or self-confidence.
 - _Time spent on each task_. The time spend on a task does not always translate to an indicator or quality, but might encourage greater numbers of contributions or more decisive contributions when controlled.

In a moment I'll rein in discussion to a smaller set of design interfaces to test.
However, an exercise to think through the possibilities afforded to us by the features in the previous section will be helpful.

Consider this study's Twitter encoding task.
How would the contribution change if:

- Tasks were 100 items long?
  200? 1000? Only 1?
* Instructions were written very tersely?
  Verbosely, with many examples?
- Contributors were tested on the instructions at the beginning of the task?
  If there were gold label items throughout the task?
  If everything had a known answer and workers were inconvenienced (e.g. with a time delay) when they got an answer wrong?
- Contributors were asked to volunteer their time?
  Were paid 1c per task? Were paid 10c per task?
  Were paid by the hour?
* Contributors were paid bonuses for performance against a ground truth or internal consistency?
  For continued task completion?
  For difficulty of their classification?
* Contributors were shown their performance (or estimated performance)?
  What if they were ranked against other workers?
  What if they gained levels or earned badges for performance?
- Contributors had tasks/time quotas to meet for bonuses?
  What if they were forced into these quotas (with tasks automatically moving forward)?
  What if a timer ticked away until their task disappear?
- Contributors were told when they got something wrong? What if you lie to them?

Some of these ideas of exciting, others are unfeasible.
Designs to encourage longer-term engagement from individuals do not appear to be a promising direction.
Worker experience was previously measured [@organisciak_evaluating_2012] and found to not be significant for simple tasks.
Other areas are already well-tread. The effect of incentive structures, payment and bonuses, has been studied frequently, notably by @mason_financial_2010.
With regards to designs that mislead workers about their performance, there are ethical and trust issues that limit such an approach, in addition to the warning by @kraut_building_2011 that feedback is only effective when contributors believe it is sincere.

### Evaluation

<!--Talk about Mechanical Turk. -->
<!--Talk about the real world use of crowdsourcing. Google has internal systems, so does MS. Researchers are using it for on-demand data -->

The experiments in this study will be run in a naturalistic setting: running directly on a paid crowdsourcing platform, Amazon Mechanical Turk, with real workers.
There are trade-offs to this setting.
It is easy to instrumentalize and properly captures the actual skills and attentiveness of paid crowd workers.
However, working within the conventions of the system means that some parts cannot be controlled.
For example, workers cannot be forced to perform multiple tasks, simply encouraged to do so.
Also, the actual user pools testing the different interfaces are not necessarily the same individuals.
Thus, it is important that the users are similarly representational: it would be problematic if one interface was used mainly by Indian residents while another was performed mainly by American residents (the second and first larges nationalities on Mechanical Turk, respectively).

For this reason, each interface will be evaluated with temporal and geographic restrictions.
Workers will be restricted to American workers, and tasks will each be posted during the American work day: between 10am and 1pm Pacific Time during weekdays.
<!-- Does this narrow my findings too much? There should be work that informs us more about this-->

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

### Implementation

The experiments will be performed on Amazon's Mechanical Turk, using an API that allows external pages to be hosted within the Mechanical Turk interface.
Funds for workers will be provided out of pocket, though I will seek dissertation research funding where available.
The Graduate College at Illinois lists grant funding opportunities that may be worth pursuing [^grants1].

The systems themselves will be developed using JavaScript for the front end, built on top of the Backbone.js model-view library with require.js used to modularize the code.
Backbone.js is a strong choice for binding data to arbitrary views, offering flexibility for our comparative interfaces.
On the back-end, the stack will be run on a Node.js server with MongoDB for data storage.
These options are not critical, but they are fast for concurrent activities, reducing my server needs.

The software will be developed by myself, but is not drastically different than past systems that I have built and should not present any difficulties beyond time commitment.
Honoring the notion of dissertation work as a public contribution, all development will be performed in a reusable manner, and released with an open-source Apache license[^crowdy].

[^crowdy]: https://github.com/organisciak/crowdy
[^grants1]: http://nres.illinois.edu/graduate/funding-your-research

## Conclusion

Crowdsourcing is a promising approach for collecting descriptive document metadata.
We have seen that the contribution changes as the instrument does, but there has not been much study into the effect of design on the reliability and consistency of contributions.
This chapter of the dissertation allows these issues to be explored, stimulated by a study comparing the data from various designs of a microblog message encoding task.
