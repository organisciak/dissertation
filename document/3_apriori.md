Designing Reliable Tasks for Descriptive Crowdsourcing
====================================================================

## Introduction

Humans don't operate with the formality of computers.
Many of the benefits of crowdsourcing follow from that fact: human contributions are valuable specifically because they are not easily automated.
However, when using crowd contributions to inform an algorithmic system, as in information retrieval, the inconsistencies of human work present a challenge.

In the first of two research chapters, the proposed dissertation will investigate how the design of crowdsourcing tasks for collecting useful metadata for information retrieval metadata affects the quality of the content.

In a controlled set up, crowdsourcing in information retrieval usually follows a typical design: a task, description, and a set of one or more documents that are reacted to.
This type of design is common for creating custom evaluation datasets through relevance judgments [@alonso_crowdsourcing_2008], but has been used for encoding and verifying indexing information [<!--TODO cite twitter, others -->].
<!-- Removed: Some exceptions to this approach have been attempted with success[].-->

Evidence suggests that the design of a data collection interface affects the quality and distribution of user contributions[@alonso_crowdsourcing_2008, @organisciak_evaluating_2012; @howe_crowdsourcing:_2008; @organisciak_incidental_2013].<!--_ TODO: cite more-->
The manner to improve on a basic task/description/items interface design is not immediately clear, though: some success has been attained by slowing workers down, while other times it has been beneficial to encourage cheaper, more impulsive contributions in larger numbers<!-- TODO cite -->.

In keeping with goals of the proposed dissertation to explore and develop methods for controlling intercoder reliability, this sub-study will compare the effect of task design on collected information retrieval data.
Scoped to a reasonable parameterization of crowdsourcing as it is commonly practiced in information retrieval -- a typical encoding task performed by paid crowds, the following questions will be pursued:

<!-- TODO: Do this same thing for chapter 4--> 
 * __RQ1__: Which approaches to collection interface designs are worth pursuing as alternatives to the basic designs commonly employed in paid crowdsourcing?

 * __RQ2__: Is there a significant difference in the quality, reliability, and consistency of crowd contributions for the same task collected through different collection interfaces?

 * __RQ3__: Is there a qualitative difference in contributor satisfaction across different interfaces for the same task?

 * __RQ4__: Do the questions above generalize to different tasks, task types, and contexts (i.e. outside of paid platforms)? 

RQ1 is the question of design, on synthesizing prior work and brainstorming directions to explore.
It is a partially subjective question, but one still worth pursuing with diligence.
As research by (TODO <!--cite-- CHI 2013-->) found, the effects seen in traditional user studies are still present in online crowd markets.
Their finding suggests that non-crowdsourcing research in human-computer interaction is informative for our purposes.
This proposal chapter explores some possible design decisions and argues why they should be studied.

RQ2 and RQ3 are the primary questions being explored in this chapter of the proposed dissertation, on quality for computational use and on satisfaction.
While this dissertation is explicitly pursuing the former question, collecting computationally useful contributions needs to be understood in the context of contributor satisfaction.
The trade-off between contributions that crowds want to make and the reliability of the data is a central consideration for fostering sustainable, or alternately affordable, crowdsourcing.

RQ4 is the question of generalizability. It expands beyond a scope than can reasonably be answered, but it should nonetheless be addressed as thorougly as possible.

### Overview of proposed research design

In this chapter, I will evaluate two interfaces for encouraging less deviation between human contributors by providing training and feedback mechanisms, respectively.
These interfaces, motivated by efforts in my earlier work,  are intended to slow down workers and make them aware of how their perception of the task deviates from the standard.
They will be compared to a baseline basic interface, as well as an alternative system that encourages quicker responses.

Since the focus is on design for crowdsourcing in information retrieval, I will adopt an established information retrieval problem to control for the task:
 enriching terse microblogging messages through paid crowdsourcing.
What is being completed is not as central to this study as how it is done, but this is a task that is structured similar to many on-demand crowdsourced information retrieval tasks.

Workers will identify the topic of a microblogging message from Twitter -- a tweet.
This is a task where the information object is sparse and the topics are often short-lived and previously unseen, making crowdsourcing a promising approach to improve information retrieval across the data.
It is also a realistic task that has been attempted with crowdsourcing in the past.
<!-- Why?? Discussed later? -->

While a more common use of paid crowdsourcing is for evaluation dataset creation, this dissertation looks as crowdsourcing for document metadata.
A task where more information in encoding about the document is a more appropriate task to study in this context, even though evaluation can be considered loosely relevant.

<!-- formerly labeled 'Problem'.. still need a problem section, or was the intro chapter's section sufficient? -->

## Motivation

Why is task design important to descriptive crowdsourcing?
Task design is a concern that has been noted multiple times. <!-- TODO cite examples. "X has noted..." -->

Crowdsourcing is increasingly being used for information retrieval.
Particularly, the on-demand nature of paid crowdsourcing is being embraced for uses such as relevance judgments [@alonso_crowdsourcing_2008], to describing queries [@chen_improving_2013], and to annotating entities []<!--TODO cite finin-->.

<!-- To cite: post-mortems of failed sites -->

Particularly, my past doctoral-level research motivates this chapter, suggesting the importance of the problem and making this study a logical extension of my doctoral work.

 * In @organisciak_evaluating_2012 we found evidence that at least some error in crowdsourced relevance judgments stems from differing but not necessarily malicious interpretations of the task, suggesting that improved quality can follow from tweaks in design.
 * During research on @organisciak_personalized_2013, we found that asking people to reflect on their response changed the nature of their response, with less internal consistency.
 * In a sample study comparing the space of incidental crowdsourcing across two systems [@organisciak_incidental_2013], I found that an 'easy' rating interface -- one that puts up less hurdles to contribution -- results in a shifted distribution of ratings than a 'hard' interface.
 * In recently-completed research (submitted paper pending), I looked at low grader consistency in the ground truth for the Audio Music Similarity (AMS) task in the Music Information Retrieval Exchange (MIREX). One of the results found that redesigning the task to attach finer instruction to the rating improved the quality of judgments by crowdsourced judges.

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
Those tasks where a worker spent more time on the first judgment were correlated to better performance overall (Figure<!--TODO-->), not just on that first judgment.

It does not matter how much time a worker spends on a task, as long as they spend enough time figuring it out at the beginning.
How do you encourage this form of behaviour? @organisciak_evaluating_2012 did not explore the design of tasks, but the findings suggest two things.

First, it encourages the assumption of honest-but-biased workers.
If a worker interprets the codebook differently then they will disagree with the consensus and be considered a bad performer.
Nothing here suggests a malicious worker, only a misguided one.

The second implication is that a better designed task can help.
While much research tends to focus on the honesty and quality of paid crowdsourcing workers <!--TODO-->, part of the responsibility toward good quality crowdsourcing data is the requesters.
In a task such as relevance judgments, encouraging better work might require workers to be more aware of their performance or to reassess their understanding of the task when it is necessary. Some possibilities to research might be,

* A training task, where workers are walked through the codebook in relation to actual tasks, and told why specific results are relevant or not relevant.
* Online feedback, showing workers their estimated performance based on agreement with other workers.
* Starting tasks with a known item, and alerting workers when they fail that task.

<!-- TODO: Create a section in the lit review about this -->
<!-- TODO: write about ISMIR paper -->

#### Dynamic of attention affect the style of contributions 

<!-- TODO mention low-effor crowdsourcing research -->

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

<!-- TODO: Fix size -->
![The difference in average ratings for the same items between Amazon Appstore and Google Play](images/comparison-of-average-ratings.png)

Though other potential factors may also affect differences between the systems, this cursory comparison suggests that the attentiveness and introspection required of a crowdsourcing contribution affects what that contribution will look like.

Since most incidental crowdsourcing deals with reaction to existing documents rather than creation of outright new works, the future directions suggested by this work (in addition the work itself) are pertinent to the proposed dissertation's focus on crowdsourcing for information retrieval indexing.

#### What are you _feeling_? The effect of introspection

Additional evidence for this was encountered in a peripheral finding while conducting research for @organisciak_personalized_2013.
In this case, we were again looking at opinion ratings on a five-point scale, this time on Mechanical Turk. 
Workers were asked to provide their personal opinions on whether they liked the style of each of 100 salt shakers.
In one group of workers, this is all they were asked.
In another group, we also asked workers to explain why they gave that rating.
Alongside their rating of the item, they would provide a short explanation, such as 'I like the colors'.
In most other regards the ratings were collected in the same way:
 on Mechanical Turk during the US work day,
 in an interface designed identically -- besides the additional text input boxes for the latter formulation --
 and with the same restrictions on workers.

<!-- The payment for the task was scaled to account for the extra time necessary for completion: in the first set of tasks, workers averaged XXX/hr, on the latter, they averaged XXX/hr ... TODO: what _did_ we do for the money? -->

Figure XXX <!-- TODO --> shows the distribution of workers by their average rating.
In the first set, where workers rated quickly (<!-- (TODO: time) -->), the workers' average ratings were across the board.
There were very positive workers, very negative workers, and everything in between.
While the average worker gave a rating of <!-- TODO -->, the standard deviation was <!--TODO-->.

In contrast, the workers that were asked to explain their rating tempered their opinions more.
The distribution of average ratings of individuals was normal (<!--TODO normality test results-->) about a mean of <!--TODO--> with a standard deviation of <!-- TODO -->.

[] <!-- TODO: Image -->
<!-- TODO: Figure XXX: Comparison of worker rating distributions for preferences in salt shakers.
In the basic set, workers were asked only for a rating.
In the detailed set, workers were asked for a rating and an brief explanation of why they chose that rating.-->
<!-- Unpublished research, (TODO: text to make clear that it is Microsoft IP, not University's ) -->

It is clear that workers in the set with more introspection performed work differently.
However, their contributions were also _less_ reliable.
The contributions were more likely to fail an internal consistency test, with an average deviation of (<!--TODO-->) stars when given the same item again in a task set.
In contrast, the 'quick' task group had an average deviation of <!--TODO--> in the consistency items.

Figure YYY also shows the distribution of rating values overall.   

<!-- TODO: What does this mean for this study? -->

### Motivating and related work

<!-- TODO: lots of lit review here!! -->

__Notes__

 * On-demand data collection for IR in increasingly common
 * Others have warned that design plays an important role (e.g. Alonso and Lease, Howe, others) <!--TODO-->
   * That being said research on the area of design is sparse
     * TREC track? 
     * Research on Games with a Purpose is the exception

## Scope

In looking at the design of contribution tasks, I will be focusing on paid crowdsourcing.
For the scope of this study, it would be intractable to look at at the design of both paid and volunteer crowdsourcing task, so I will pursue the part that is more common for information retrieval researchers to have control over.
Paying workers is only one part of crowdsourcing, and one that arguably tethers the scalability of a task by anchoring it
to financial means.
However, it is easier to control for because it sidesteps much of the complexities of motivation.
Information retrieval researchers are using the predictability of paid crowd markets like Amazon's Mechanical Turk to generate on-demand data, making design for those systems important.

## Design

In this chapter, I will investigate the effect of different parameterizations of a microblogging encoding task.

<!-- There will be two tasks, both related to encoding microblogging messages, and four different designs for collecting information for them. -->

### Task

The metadata encoding task being controlled for is a microblog annotation task.

Microblogging messages, in this case from Twitter, are notably truncated.
Since Twitter messages are limited to 140 characters, messages often are brief, missing context, and heavily abbreviated.
This creates problems for parsing the topic of an individual message.<!-- TODO: citations for microblog search... both Jaime and Miles have them-->
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

For example, ... <!-- TODO big bird-->

Such a task is useful <!-- TODO: because... -->, but potentially easy to misinterpret by contributors conflating a term being the topic of a tweet with merely being mentioned in the tweet.
To keep focused, all design will collect this topic identification tasks.

__TODO: remove below task__, but first it's worth considering what do do with it. I like it.

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

<!-- TODO: estimates of Twitter duplicates -->
<!-- TODO: research hueristics on removing Twitter spam -->

#### Data

<!-- TODO -->

__Notes__

 * Building study dataset
   * Data will be collected from Twitter through Search API
     * Alternately, is the TREC data accessible?
   * Data type 1: select random stream tweets 
   * Data type 2: select all tweets about prominent topics (e.g. Obama, Bieber) - ones where the entity may be mentioned but not necessary the focus
   * Number of tweets?
     * Informally, 1000 is a nice number, will need consideration of a) statistical power and b) typical time per task (TODO)
 * Preparing evaluation corpus
   * Gold standard set encoded by hand by myself
   * A second ground truth dataset will be built after the experiments are run, by pooling _all responses_ for a consensus
   * The second dataset will be compared against my ground truth, and points of disagreement will be re-evaluated

<!--

### Data

This study will look at enriching metadata for records in a cultural heritage collection for information retrieval.

 TODO: Alternately, perhaps adding metadata to untagged tweets 

In library and museum archives, a common problem for information discovery is that many materials are not textual, and catalogue records are described more formally than the language information-seeking users use in queries.
To overcome the language mismatch, some libraries have incorporated user tags to capture colloquial semantic description 

!!TODO cite

 TODO, this should be much higher in the document... Problem section? 

The data that will be used in a randomized collection of image records from... 

 TODO: Where is the data going to come from? It needs to be something that can be evaluated against basic retrieval -->

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
    * ?? -  (TODO)
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
Which of these can be influenced by external factor? 

 - _Experience_. Experience is a product of sustained interaction with the current type of task.
   It can affecting indirectly by focusing on methods to extend the length of a user's interaction, such as bonus payments for staying around.
 * _Skill_. Skill is developed over time and is mostly affected by factors internal to the worker.
   To the extent that we could affect it, most functionality would encourage greater experience.
   Teaching workers by reinforcing their successes and failures might also have an effect.
 - _Self-confidence and decisiveness_.
    <!-- TODO -->
 - _Attentiveness and fatigue_.
 - _Perceived importance of task_. <!--(although this would simply affect the other attributes. e.g. if you need to get the correct answer to diffuse the bomb, time spent will change, probably self-confidence)-->
 - _Time spent on each task_.
<!--TODO: add details for all points, or are the latter four self-explanatory? Regardless, it looks odd with two points explained and the others not -->

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
Designs to encourage longer engagement from individuals do not appear to be a promising direction.
Worker experience was previously measured [@organisciak_evaluating_2012] and found to not be significant for simple tasks.
Other areas are already well-tread. The effect of incentive structures, payment and bonuses, has been studied frequently, notable by @mason_financial_2010. 

### Proposed designs
So what tweaks will this study measure?

As outlined in the overview of my own doctoral research, a few directions look like promising continuations of my research.

 * It is still unclear whether simple encoding tasks benefit more from workers using their brain or gut.
   <!-- TODO: Kahneman and Tversky -->
   Designs that can change a worker's attentiveness address an interesting problem and may bring potential improvements.
 * Having previously found that reading instructions slowly is important for properly performing work, it should be seen whether a task can push a worker into internalizing the codebook rather than interpreting it.
 * Understanding that many reliability errors are introduced by honest workers that intend to do well, it may also be important to keep workers informed of their performance, at least when they are not performing well.

With those considerations in mind, I propose the three interfaces to study for crowdsourced data collection: a training interface, a feedback interface, and a time-limited interface.

#### Basic interface

The basic interface will resemble an archetypal task, following conventions seen in Mechanical Turk usage.
It will show workers an tasks with a goal, description, and ten items to perform actions on.
The goal of the interface will be to "identify the topic of a tweet."
For each item, a multiple-choice question will be posed, with the proper noun phrases provided as options, as well as a free-text "Other" category and an "unknown" option. 
The description will explain what a "topic" is, and make clear the difference between a topic and simply a mention.
An example will be included with the description, but as a pop up window behind a "See Example" link that needs to be clicked.
This is done to conform to the convention that instructions should not be too long, in order not to push the actual action items 'below the fold'.
Amazon's own advice for designing good tasks (TODO cite) states that the task should not require scrolling to start. <!-- TODO xxx pixels by default -->

TODO

 * Example of item and options
 * Write description
 * Mockup of interface

#### Training interface

In the training interface, the worker is walked through their first task slowly.
As they complete the tasks, their answers are evaluated against a gold standard and they are informed if they completed it correctly or incorrectly.
Incorrect answers will also be given an explanation of why the actual answer is correct.

<!-- TODO Justification for this design: who else has done it? -->

The training tasks will hand-designed, based on a random sample of items.

TODO

 * Add figure of mockup

#### Feedback Interface

In the feedback interface, a worker is shown feedback about their estimated performance on past tasks.
The first that they complete is identical to the basic interface.
Starting with the second task, however, the top of the interface will tell users:

 * Their estimated performance, in terms of agreement with other workers
 * A visualization of where they fall in the distribution of all workers, from best performing to worst
   * TODO: add figure (something like:  |--------I--|)

Since the interaction of this interface truly begins on the second task, evaluation of this interface will also focus on users returning after their first task.

TODO

 * Add details of calculation for reliability
 * Add mockup figure
 * Calculate stats for another dataset on what percentage of contributions are not the first task done by a user.

<!--
##### Rough Notes

If you're doing voting, then a score is possible based on agreement with other workers:
^Score=Avg. StdDev from Mean of Ratings 
$TODO$
TODO -->


#### Time-Limited Interface

As hinted at during work on (<!--TODO CITE MSR, DH -->), not all crowdsourcing contribution cases require more focus:
sometimes a worker in a quicker mode of thinking contributes more consistent and reliable work.

In contrast to the training and feedback interfaces, which will serve to slow down workers and make them more focused on their contributions, the final data collection interface will pursue the opposite approach.
The time-limited interface encourages quicker interactions by giving users a timer to complete all tasks.

This approach has been previously used in (<!--TODO cite-->) to push people into a visceral form of task completion.

TODO
 
 * Cite Kahneman & Tversky
 * To explain: how does the timer cut off slow workers? (With bonuses that are only given per item of task-set finished within time limit)
 * What is the time limit? This needs to be measured to determine a good value
 * Add mackup of interface

### Evaluation

<!--Talk about Mechanical Turk. -->
<!--Talk about the real world use of crowdsourcing. Google has internal systems, so does MS. Researchers are using it for on-demand data -->

The experiments in this study will be run in a naturalistic setting: running directly on a paid crowdsourcing platform, Amazon Mechanical Turk, with real workers.
There are trade-offs to this setting.
It is easy to intrumentalize and properly captures the actual skills and attentiveness of paid crowd workers.
However, working within the conventions of the system means that some parts cannot be controlled.
For example, workers cannot be forced to perform multiple tasks, simply encouraged to do so.
Also, the actual user pools testing the different interfaces are not necessarily the same individuals.
Thus, it is important that the users are similarly representational: it would be problematic if one interface was used mainly by Indian residents while another was performed mainly by American residents (the second and first larges nationalities on Mechanical Turk, respectively).

For this reason, each interface will be evaluated with temporal and geographic restrictions.
Workers will be restricted to American workers, and tasks will each be posted during the American work day: between 10am and 1pm Pacific Time during weekdays.
<!-- Does this narrow my findings too much? There should be work that informs us more about this-->

#### Baseline

The baseline for evaluation is the performance of workers on the basic contribution interface.

#### Measurements

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
 * (TODO: still working on phrasing for COST question) <!--What is the expected cost per -->

TODO

* Add equations to show how these are calculated

### Implementation

The experiments will be performed on Amazon's Mechanical Turk, using an API that allows external pages to be hosted within the Mechanical Turk interface.
Funds for workers will be provided out of pocket, though I will seek dissertation research funding where available. <!-- TODO look into sources -->

The systems themselves will be developed using JavaScript for the front end, built on top of the Backbone.js model-view library with Require.js used to modularize the code.
Backbone.js is a strong choice for binding data to arbitrary views, offering flexibility for our comparative interfaces.
On the back-end, the stack will be run on a Node.js server with MongoDB for data storage.
These options are not critical, but they are fast for concurrent activities, reducing my server needs.

The software will be developed by myself, but is not drastically different than past systems that I have built.
Honoring the notion of dissertation work as a public contribution, all development will be performed in a reusable manner, and released with an open-source Apache license[^crowdy].

[^crowdy]: https://github.com/organisciak/crowdy

## Conclusion

TODO

