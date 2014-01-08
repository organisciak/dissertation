Correcting for Cognitive Biases at Collection Time
==================================================

## Introduction

Humans don't operate with the formality of computers.
Many of the benefits of crowdsourcing follow from that fact: human contributions are valuable specifically because they are not easily automated.
However, when using crowd contributions to inform an algorithmic system, such as in information retrieval, the inconsistencies of human work present a challenge.
<!-- This text might be better in the intro --> 

In the first of two research chapters, the proposed dissertation will investigate how the design of crowdsourcing tasks for improve information retrieval metadata affects the quality of the content.

When paid crowdsourcing is used for information retrieval, it usually follows a basic design, with a task, description, and one or more items that are reacted to.
Some exceptions to this approach have been attempted with success<!--TODO-->

Evidence suggests that the design of a data collection interface affects the quality and distribution of [@organisciak_evaluating_2012; @howe_crowdsourcing:_2008; @organisciak_incidental_2013].
The manner to improve on a basic task/description/item is unclear thus far; some success has been attained by slowing workers down, while other times it has been beneficial to encourage cheaper, more impulsive contributions in larger numbers <!-- TODO cite -->.

In keeping with goals of the proposed dissertation, this study will evaluate two interfaces for encouraging less deviation between human contributors by providing training and feedback, respectively. <!--TODO: Removed: "accounting for their (inattention?selection?) biases -->.
These interfaces are intended to slow down workers and make them aware of how their perception of the task deviates from the standard.
They will be compared to a baseline basic interface, as well as an alternative system that encourages quicker responses.

These alternate designs will be evaluated for a sample task of identifying the topic of a microblogging message from Twitter -- a tweet.
This is a task where the information object is sparse and the topics are often short-lived and previously unseen, making crowdsourcing a promising approach to improve information retrieval across the data.
It is also a realistic task that has been attempted with crowdsourcing in the past. <!--TODO-->

## Outline

This section of the dissertation proposal serves as a skeleton for the dissertation chapter.
Below, I 
 outline the problem of collecting less biased data from human workers,
 discuss some of my previous research on the topic,
 and present the 
  scope,
  methodology,
  data,
  and evaluation
 for proposed new research.

## Problem


### Work up to now

My past doctoral-level research motivates this chapter in a number of ways.
In @organisciak_evaluating_2012 we found evidence that at least some error in crowdsourced relevance judging is stemming to do differing (but non-malicious) interpretations of the task, suggesting that improved quality can follow from tweaks in design.
During research on <!--TODO cite hcomp-->, we found that asking people to reflect on their response changed the nature of their response, with less internal consistency.
In a sample study comparing the space of incidental crowdsourcing across two systems [@organisciak_incidental_2013], I found that an 'easy' rating interface -- one that puts up less hurdles to contribution -- results in a shifted distribution of ratings than a 'hard' interface.

#### ASIS&T Paper

In @organisciak_evaluating_2012 , we consider a variety of methods for removing error from relevance judgments collected on Mechanical Turk.
This study will be discussed in-depth in the next chapter, on accounting for bias after collection, but it also revealed a finding that hints at the importance of task design.

In relevance judgments, workers are shown a _query_, a _description_ of what is relevant to the query, and a set of _results_ to classify as relevant or not relevant to the query. In our tasks, we showed ten results per tasks, using full item records from an online catalogue.

Looking at the amount of time that a worker spends on classifying each result, we found that overall neither slower workers nor faster workers are more consistently reliable (Wilcoxon rank sum $p = 0.064$, but $p = 0.154$ when excluding extreme outliers).
However, looking at that value blocked by the order of results -- i.e. how reliability are workers taking $x$ time on the $y^th$ result of a task -- we found that the time spent on correct classifications are significantly higher than the time spent on incorrect classifications (Wilcoxon Rank Sum one-sided $p=0.01$).
For all other relevance judgments in a task, the amount of time spent was insignificant.

Why are slower workers better for the first item in a task set, but not for subsequent items?
Remembering that the time spent on the first relevance judgment is confounded with the start of the task and reading the description of what is relevant, our hypothesis was that the effect is actually related to closer reading of instructions.
Partially showing this to be the case, we found that those tasks where a worker spent more time on the first time were correlated to better performance overall (Figure<!--TODO-->).

It does not matter how much time a worker spends on a task, as long as they spend enough time figuring it out at the beginning. How do you encourage this form of behaviour? @organisciak_evaluating_2012 did not explore the design of tasks, but the findings suggest two things.

Most significantly, it encourages the assumption of honest but biased workers.
If a worker interprets the codebook, i.e. the relevance description, differently, then they will disagree with the consensus and be considered a bad performer.
Nothing here suggests a malicious worker, only a misguided one.
After all, the effect where good work on the first judgment was representative of performance was not seen in an subsequently judgments.

The second implication is that a better designed task can help.
While much research tends to focus on the honesty and quality of paid crowdsourcing workers, part of the responsibility toward good quality crowdsourcing data is the requesters.
In a task such as relevance judgments, encouraging better work might require workers to be more aware of their performance or to reassess their understanding of the task when it is necessary. Some possibilities to research might me,

* A training task, where workers are walked through the codebook in relation to actual tasks, and told why specific results are relevant or not relevant.
* Online feedback, showing workers their estimated performance based on agreement with other workers.
* Starting tasks with a known item, and alerting workers when they fail that task.

<!-- TODO: Create a section in the lit review about this -->

#### Incidental Crowdsourcing

In [@organisciak_incidental_2013], I looked at a facet of crowdsourcing that I called _incidental crowdsourcing_ (IC).

Incidental crowdsourcing refers to crowdsourcing in the periphery.
These are elements that are unobtrusive and non-critical to the user or the system.
They generally
 describe existing information,
 collect contributions in low-granularity mechanisms,
 and favor interface choices over statements.
An example an incidental crowdsourcing mechanic mike be a 'thumbs-up' voting button on a video-sharing website or tagging functionality on an image-sharing website that does not force itself upon users.

By not taking users hostage or asking users for overly attentive or time-consuming contributions, incidental crowdsourcing contributions result in greater numbers of contributions, even if individual contributions are less frequent.
They also tend toward different patterns of contribution.

This was clear in a small example study comparing a crowdsourcing element on two systems: one that was designed more 'incidental' while another put up more hurdles for contributing quality [@organisciak_incidental_2013].
In the systems, I compared the ratings of identical product on two application marketplaces for the Android smartphone operating system: Amazon's Appstore and Google Play.
Users on both systems are able to rate applications on a five-point scale;
however, while Google's store allows them to offer this rating quickly and without any other guidelines, Amazon's store requires an accompanying review with a minimum word length, and also has a codebook that reviewers must abide by.

![The difference in average ratings for the same items between Amazon Appstore and Google Play](images/comparison-of-average-ratings.png)

While there are other potential factors affecting differences between the systems, this cursory comparison suggests that the attentiveness and introspection required of a crowdsourcing contribution affects what that contribution will look like.

#### System 1 vs System 2

More evidence for this was encountered in a peripheral finding while conducting <!-- TODO cite human computation? Or just unpublished?  -->.
In this case, we were again looking at opinion ratings on a five-point scale, this time on Mechanical Turk. 
Workers were asked to provide their personal opinions on whether they liked the style of each of 100 saltshakers.
In one group of workers, this is all they were asked.
In another group, we also asked workers to explain why they gave that rating.
Alongside their rating of the item, they would provide a short explanation, such as <!-- TODO -->.
In most other regards the ratings were collected in the same way:
 on Mechanical Turk during the US work day,
 in an interface designed identically -- besides the additional text input boxes for the latter formulation --
 and with the same restrictions on workers.
<!-- To clarify the restrictions? -->
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
In the detailed set, workers were asked for a rating and an brief explanation of why they chose that rating.
<!-- Unpublished research, (TODO: text to make clear that it is Microsoft IP, not University's ) -->

It is clear that workers in the set with more introspection 
Howe


Figure YYY also shows the distribution of rating values overall.   

### How this fits in the dissertation

## Scope

### Paid Crowdsourcing
In looking at the design of contribution tasks, I hope to concentrate on paid crowdsourcing.
For the scope of this study, it would be intractable to look at at the design of both paid and volunteer crowdsourcing, so I will pursue the facet more pertinent to information retrieval.
<!--'More pertinent': Is this true? TODO: Rewrite-->
Paying workers is only one part of crowdsourcing, and one that arguably tethers the scalability of a task by anchoring it
to financial means.
However, it is easier to control for by removing much of the complexities of motivation.
Information retrieval researchers are also using the predictability of paid crowd markets like Amazon's Mechanical Turk to generate on-demand data, making design for those systems important.
<!--Add citations?-->

More importantly, much information retrieval research occurs parallel to the system of content
<!--Users on Flickr, for example, contribute semantic tags-->
 information retrieval systems 

### Literature


#### Prior Work 

## Proposed Research

In new research for this chapter, I will investigate the effect of different parameterizations of the same tasks.

There will be two tasks, both related to encoding microblogging messages, and four different designs for collecting information for them. 

### Task

The metadata encoding task that will be compared is a microblog annotation task.

Microblogging messages, in this case from Twitter, are notably truncated.
Since Twitter messages are limited to 140 characters, messages often are curt, missing context, and heavily abbreviated.
This creates problems for parsing the topic of an individual message.<!-- TODO: citations for microblog search... both Jaime and Miles have them-->
On Twitter, the use of microblogging is so ephemeral and diverse that many information retrieval needs are completely new when introduced and only exist for a short period of time [@chen_improving_2013].

Microblogging users partially address this problem by encoding some metadata in a structured way.
For example, `hashtags` are used to describe the topic, theme, or context of a tweet [@efron_information_2011].
Unfortunately, these are inconsistently applied and with differing purposes.

Due to the sparse information and urgent needs of microblog IR, crowdsourcing has been used in this area, both for augmenting tweets and for creating datasets to train classifiers specific to the corpus.
Twitter uses Mechanical Turk in this way to understand the context of trending queries.
When there is a spike in search volume, human classifiers are able to differentiate between possible interpretations of the query [@chen_improving_2013].
For example, when "Big Bird" began trending after a political candidate made a polarizing comment about public television funding, it was easily identified as a political query.

Two types of microblogging metadata tasks will be pursued in this study.

The first task will be a topic identification task:
 "Is this tweet about topic X?"
Workers are shown a tweet that contains the terms of a query, $Q$, where $Q$ represents an entity.
Their task will be to describe whether the entity is the topic of the tweet, or simply mentioned.

For example, <!-- TODO -->

Such a task is useful <!-- TODO: because... -->, but potentially easy to misinterpret by contributors conflating a term being the topic of a tweet with merely being in the tweet.

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

### Parameterization

This study will compare three parameterizations of the 

#### Basic interface

The basic interface will show workers an item, 

This information will collect... <!-- TODO -->

### Training interface

In the training interface, the worker is walked through their first task slowly.
As they complete the tasks, their answers are evaluated against a gold standard and they are informed if they completed it correctly or incorrectly.
Incorrect answers will also be given an explanation of why the actual answer is correct.

<!-- TODO Justification for this design: who else has done it? -->

The training tasks will hand-designed, based on a random sample of items.

### Feedback Interface

In the feedback interface, a worker is taught 

<!--
#### Rough Notes

If you're doing voting, then a score is possible based on agreement with other workers:
^Score=Avg. StdDev from Mean of Ratings 
$TODO$
TODO -->


### Time-Limited Interface

As hinted at during work on <!--TODO CITE MSR, DH -->, not all crowdsourcing contribution cases require a

The final data collection interface will encourage workers to complete tasks quickly by giving them a timer.

The timer has been used previously in <!--TODO cite--> to push people into a visceral form of task completion.



#### Evaluation

<!--Talk about Mechanical Turk. -->
<!--Talk about the real world use of crowdsourcing. Google has internal systems, so does MS. Researchers are using it for on-demand data -->

##### Baselines
