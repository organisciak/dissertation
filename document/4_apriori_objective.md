Designing Tasks for Objective Needs
=====================================

<!-- Planned structure

Introduction
Problem
  Why design matters

Overview

Related Work
  Financial Tweaking
  Bonuses
  Task Description

Research Questions

Design Space (RQ1)
    Gedanken Experiments
    So, what do I study

Approach
  Training Interface (TRN)
  Feedback Interface (FEED)
  Fast Interface (FAST)
  Other, small experiments
    Performance Bonus (BON)  

Experiment #1: Tagging
  Data
  Measurements
    Quality, Variance
    Cost
    Satisfaction
Experiment #2: Relevance Judgments
  Data
  Measurements
    Quality, Variance
    Cost
    Satisfaction
Experiment #3: Music Similarity Judgments

-->

<!-- Introduction -->
\newthought{Humans don't operate with the formality of computers}.
Many of the benefits of crowdsourcing follow from that fact: human contributions are valuable specifically because they are not easily automated.
However, when using crowd contributions to inform an algorithmic system, as in information retrieval, the inconsistencies of human work present a challenge.

This chapter investigates how the design of crowdsourcing tasks for collecting useful metadata for information retrieval metadata affects the quality of the content.

In a controlled set up, crowdsourcing in information retrieval usually follows a typical design: a task, description, and a set of one or more documents that are reacted to.
This type of design is common for creating custom evaluation datasets through relevance judgments [@alonso_crowdsourcing_2008], but has been used for encoding and verifying indexing information [e.g. @chen_improving_2013].
<!-- Removed: Some exceptions to this approach have been attempted with success[].-->

Evidence suggests that the design of a data collection interface affects the quality and distribution of user contributions[@alonso_crowdsourcing_2008; @organisciak_evaluating_2012; @howe_crowdsourcing_2008; @ @organisciak_incidental_2013].<!--TODO better citations, remove citations to work being reported here -->
The manner to improve on a basic task/description/items interface design is not immediately clear, though: some success has been attained by slowing workers down, while other times it has been beneficial to encourage cheaper, more impulsive contributions in larger numbers<!-- TODO2 cite -->.

\newthought{If we consider crowdsourcing data quality} as something that can be addressed not only through post-collection modeling but through the choices made in designing the collection task, the latter approach is surely the lesser studied problem.
  However, in cost-time considerations, design promises more efficient improvements.
A design that is more interesting to workers or less prone to error may result in better contributions at no extra cost, while designs that offer bonuses or training include short term costs.
When studying intrinsic motivation in Mechanical Turk tasks, [<!--Mason and Watts-->] found that a small change in instrumentation -- changing remunermation to less tightly govern the task -- resulted in more work contributed with happier contributors.
<!-- TODO is there work about whether it is better to go cheaper with a bonus, or higher with no bonus?
-->

[<!--Gilbert paper-->]

## Problem

## Overview

In this chapter, multiple interfaces for encouraging less deviation between contributors are evaluated against identical controlled tasks.
Two design manipulations are intended to slow down workers and make them aware of how their perception of the task deviates from the standard.
A third design encourages quicker responses.[^whyint]
These are compared to a realistic baseline interface which follows typical Mechanical Turk conventions.
Afterward, an applied experiment is presented, where both apriori and posterior methods are applied to a music information retrieval evaluation. The design changes that are made improve the quality of results drastically, with negligible cost differences.

[^whyint]: Why are these design manipulations chosen? Later in this chapter, various possibilities for design manipulation are considered, and compared to the existing literature. As will be seen, prior work has lent insight on the effect of 'parameter manipulations' such as payment variation <!-- TODO CITE--> and wording changes<!-- TODO CITE LEASE paper-->, while more drastic design manipulations are only beginning to be studied in the context of crowds.<!--TODO cite Gilbert-->



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



## Related Work

## Research Questions

This chapter compares the effect of task design on the quality of crowdsourced objective data.
Scoped to a reasonable parameterization of crowdsourcing as it is commonly practiced in information science -- a typical encoding task performed by paid crowds, the following questions will be pursued:

 * __RQ1__: Which approaches to collection interface design are worth pursuing as alternatives to the basic designs commonly employed in paid crowdsourcing?[^The _design space_ question.]

 * __RQ2__: Is there a significant difference in the quality, reliability, and consistency of crowd contributions for the same task collected through different collection interfaces? [^The primary _data quality_ question.]

 * __RQ3__: Is there a qualitative difference in contributor satisfaction across different interfaces for the same task? [^The secondary _satisfaction_ question.]

 * __RQ4__: Do the findings generalize to different tasks, task types, and contexts (i.e. outside of paid platforms)? [^The _generalizability_ question.]

RQ1 is the question of design, on synthesizing prior work and brainstorming directions to explore.
It is a partially subjective question, but one still worth pursuing with diligence.
As research by @komarov_crowdsourcing_2013 found, the effects seen in traditional user studies are still present in online crowd markets.
Their finding suggests that non-crowdsourcing research in human-computer interaction is informative for our purposes.
This chapter explores some possible design decisions and argues why they should be studied.

RQ2 and RQ3 are the primary questions being explored in this chapter of the proposed dissertation, on quality for computational use and on satisfaction.
While this dissertation is explicitly pursuing the former question, collecting computationally useful contributions needs to be understood in the context of contributor satisfaction.
The trade-off between contributions that crowds want to make and the reliability of the data is a central consideration for fostering sustainable, or alternately affordable, crowdsourcing.

RQ4 is the question of generalizability. It expands beyond a scope than can reasonably be answered, but it should nonetheless be addressed as thoroughly as possible.

### Design Space

Commonly, a paid crowdsourcing worker goes through the following steps:

 1. Worker $w$ arrives at task page
 2. $w$ is shown a preview of task $t$
 3. Worker $w$ accepts the task $t$
 4. Work performs task $t$ and submits
 5. A new task $t'$ is chosen and, worker is taken back to _step 2_ or _step 3_

<!--TODO research on structure?-->
<!-- TODO cite Amazon docs -->
<!--TODO screenshot of a normal task-->

The above steps are the model used by Amazon Mechanical Turk when a task is followed through to completion.
Workers are also given escape options, to skip, reject or return tasks.

Metadata encoding tasks generally consist of the following parts:

 * __Goal__ statement/question. _e.g. "Is this page relevant to query `q`?", "Find the topic of a tweet."_
 * __Instructions__ for performing the task.
 * one or more __Items__ that worker responds to. _e.g. webpage snippets, microblogging messages_
 * __Action__, one per item: the data collection mechanism.

\newthought{Within this framework}, a number of factors are observable that may potentially affect how our microblog encoding task is completed.
First are the parameterizations of the task within its existing structure -- changes to the goal, instructions, item, action, and even the task itself.
Ways that these can change from task to task include:

 * __Task__
    * Payment.
    * Bonuses.
    * Number of tasks available.
 * __Goal__
 * __Instructions__
    * Clarity.
    * Restrictive versus open-ended.
    * Length.
 * __Item__
    * Number of items in a task.
 * __Action__
    * Complexity of action. e.g. granularity.

There are also intangibles such as the appeal of the topic and the visual layout.

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

Consider this study's image tagging task.
How would the contribution change if:

- Tasks were 100 items long?
  200? 1000? Only 1?
* Instructions were written very tersely?
  Verbosely, with many examples?
- Contributors were tested on the instructions at the beginning of the task?
  If there were gold labelled items throughout the task?
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

\newthought{Some of these ideas of exciting}, others are unfeasible.

Designs to encourage longer-term engagement from individuals do not appear to be a promising direction.
As the previous chapter found with regard to relevance judgments, worker experience was not found to be significant.
It is unclear whether this relates to the relative simplicity of the task or if it is indicative of a broader rule, though pushing against the on-demand nature of Mechanical Turk would likely be more effective for significantly more complex tasks than the basic information science ones considered here.

Other areas are already well-tread. The effect of incentive structures, payment and bonuses, has been studied frequently, notably by @mason_financial_2010.

With regards to designs that mislead workers about their performance, there are ethical and trust issues that limit such an approach, in addition to the warning by @kraut_building_2011 that feedback is only effective when contributors believe it is sincere.

## Approach

While parameterization studies have compared how shifts in description or payment structure affect contribution, very few studies looking at more drastic design manipulations have been performed on a controlled task [^The recent paper by @mitra_comparing_2015 a notable exception].

Still, some unresolved questions in the area are necessary to understand in the pursuit of quality crowd contributions.
For example, it is still unclear whether simple encoding tasks benefit more from workers' gut instincts or careful consideration.
Designs that can change a worker's attentiveness may help -- or perhaps hinder -- the quality of contributions.

Having found in the previous chapter that reading instructions slowly is important for properly performing work, it should be seen whether a task can push a worker into internalizing the codebook rather than interpreting it.
Understanding that many reliability errors are introduced by honest workers that intend to do well, it may also be important to keep workers informed of their performance, at least when they are not performing well. Other work, to be reported in later chapters, finds that a task redesign for an evaluation task can improve collected data immensely at little extra cost, while in the case of simple item ratings, over-thinking the task is actually detrimental.

With those considerations in mind, this study compares data collected through three interfaces for crowdsourced data collection: a training interface, a feedback interface, and a time-limited interface.
The training interface takes more care to slow down the task and walk new workers through the codebook and the style of a good contribution.
The feedback interface tries to reflect performance back to workers, to check their understanding of the codebook.
Finally, the time-limited interface contrasts the introspective approach of the other interface by encouraging quicker contributions.

### Basic interface

The basic interface resembles an archetypal task, following conventions seen in Mechanical Turk usage.
It shows workers a task with a goal, description, and ten items to perform actions on.

i[^TODO explain current interface]The description will explain what a "topic" is, and make clear the difference between a topic and simply a mention.
An example will be included with the description, but as a pop up window behind a "See Example" link that needs to be clicked.
This is done to conform to the convention that instructions should not be too long, in order not to push the actual action items 'below the fold'.
Amazon's own advice for designing good tasks states that the task should not require scrolling to start [@_requester_2011]. <!--\_-->

<!--TODO2

 * Example of item and options
 * Mockup of interface
-->
<!--TODOAFTER

 * Write description
-->

### Training interface

In the training interface, the worker is walked through their first task slowly.
As they complete the tasks, their answers are evaluated against a gold standard and they are informed if they completed it correctly or incorrectly.
Incorrect answers will also be given an explanation of why the actual answer is correct.

<!-- TODO2 Justification for this design: who else has done it?
Ask Mike, possible Jaime for advice, my lit review is failing.
-->

The training tasks will be hand-designed, based on a random sample of items.

<!--TODO2

 * Add figure of mockup -->

### Feedback Interface

In the feedback interface, a worker is shown feedback about their estimated performance on past tasks.
The first that they complete is identical to the basic interface.
Starting with the second task, however, the top of the interface will tell users:

 * Their estimated performance, in terms of agreement with other workers.
 * A visualization of where they fall in the distribution of all workers, from best performing to worst,

![Example of showing feedback to workers](images/progress-bar-mockup.png)

Since the interaction of this interface truly begins on the second task, evaluation of this interface will also focus on users returning after their first task.

@mccreadie_crowdsourcing_2011 attempted a similar approach, where contributors were shown a sidebar color-coding all their contributions based on their agreement with other raters and the authors.
Showing this information with such granularity encourages workers to go back to reconsider debated answers, whereas this study's take tries to encourage more care and competition moving forward.

<!--TODO2
 * email McCreadie about permission to include figure
 * Add mockup figure
 * Calculate stats for another dataset on what percentage of contributions are not the first task done by a user.

Rough Notes

If you're doing voting, then a score is possible based on agreement with other workers:
^Score=Avg. StdDev from Mean of Ratings
-->


### Time-Limited Interface

As hinted at during my past work, not all crowdsourcing contribution cases require more focus; sometimes a worker in a quicker mode of thinking contributes more consistent and reliable work.

In contrast to the training and feedback interfaces, which will serve to slow down workers and make them more focused on their contributions, the final data collection interface will pursue the opposite approach.
The time-limited interface encourages quicker interactions by giving users a timer to complete all tasks.

It is important not to distress the worker when trying to push them into a visceral form of task completion, as this might have the opposite effect.
Instead, this design should encourage flow, where a user moves seamlessly through the tasks without over-thinking their answers.
To avoid the potentially distress of thinking about what is to come, this interface will not show a list of tasks to complete (e.g. "complete these ten tasks in a minute").
Instead, tasks will be shown one at a time (e.g."See how many tasks you can complete in a minute"), with bonuses paid for each complete task and increased for correct answers.

<!--
TODO2
 * To explain: how does the timer cut off slow workers? (With bonuses that are only given per item of task-set finished within time limit)
 * What is the time limit? This needs to be measured to determine a good value
 * Add mockup of interface-->

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

### Implementation

The experiments were performed on Amazon's Mechanical Turk, using an API that allows external pages to be hosted within the Mechanical Turk interface.

The system for design manipulation was developed using JavaScript on the front end, built on top of the Angular JS library.
The software is released with an open-source MIT license[^crowdy].

The back-end of the stack also runs on Javascript, with a Node.js server run on the Express web application framework.
Data storage uses the MongoDB database.
The task serving code is also released online[^crowdybackend].

Details of the experimental system, including design documents, model descriptions, and logic, are provided in the Appendices. <!-- TODO2 add proper link. -->

[^angularjs]: https://angularjs.org/
[^nodejs]: https://nodejs.org/
[^express]: http://expressjs.com
[^mongodb]: https://www.mongodb.com
[^crowdy]: https://github.com/organisciak/crowdy
[^crowdybackend]: https://github.com/organisciak/crowdy-backend


### Tagging

## Experiment #1: Relevance Judgments

## Experiment  #2: Tagging

<!--Why tagging-->
Tagging is a type of free-text labelling often applied in online social context.
It allows a system to collect more metadata about its records than the system may have, and representing different _types_ of description.
Such open-ended contribution can grow unwieldy and hard to protect against vandalism, but public good institutions such as libraries and museums 
For example, on business recommendation system Yelp, tags allow users to contribute data about the type of business [^A competing service, Foursquare, also uses tags, but in a more structured way. ]
their libraries and museums to collect more metadata about their

- Limited metadata

Trant and Wyman argue that tagging from online users "appears to fill gaps in current documentation practice" [~@trant_investigating_2006].

  - information overload
 Difficult to model formats (non-text)

 - vocabulary problem

<!--Why paid-->
- Volunteer practice
   - Many volunteers tag poorly
     - @springer_for_2008 find that tags were the least fulfilling type of information contributed to the Library of Congress account on Flickr. <!--Add sidenote about Flickr, and perhaps the commons--> ...
In a look at social features used in library online catalogues, @spiteri_social_2011 finds tagging to be among the least used.
While the complexities of why this is the case and how closely tied the result is to the implementation, the finding does suggest that features which are arguably more self-serving, such as curating lists of library materials and starring liked works, are easier to collect than more pragmatic features for item description.

While it has been suggested that the most generally useful tags also tend to be those that are applied by the most _different_ users [@sen_quest_2007], volunteer tagging does not necessarily reflect that diversity.
On Flickr Commons, it was noted that 40% of the tags were contributed by 10 'power taggers'; nonetheless, with over 59 thousand tags contributed, this still meant that other users still contributed a notable amount [@springer_for_2008].

### Related Work

@sen_quest_2007 study the quality of community tags in the MovieLens film recommendation system, toward methods to prioritize tags in the interface.
They find that high-quality tags, as determined by survey, are not necessarily the most-applied tags, likely because the most common tags are locally useful 'personal' tags.
However, tags that are applied by many _unique_ users are more likely to be useful, as are tags that are clicked by many unique users.
While this form of usage-based quality indicator does not help in collecting good tags, it does affect how to determine quality tags for ground truth in this study.



<!-- TODO discuss -->

- RQ:

- subjective vs. objective

There are different interpretations on tagging, what types are desired, how much variance is acceptable, and what the role of tagging is.

For museums, tagging is considered not only in pragmatic subject access terms, but as a medium for critical value and engagement, according to @trant_investigating_2006.
Indeed, they note the value in tagging for understanding the tagger: a way to understand how patrons react and interact with museum collections.^[TagAssert]

^[TagAssert]: "A tag is a user's assertion that a work of art is about something." - @trant_investigating_2006


  - desire some sort of variability
However, it would be ill-advised to view tagging as a fully relativist activity.
It has been found that tagging begins to converge on a set of popular, common tags [@golder_usage_2006]<!--TODO cite Cattuto 2006 -->, and there certainly are notions of 'good' or 'bad' tags [@sen_quest_2007]. <!-- TODO cite.. what else?-->.

When @sen_tagging_2006 compared different approaches to collecting tags -- an interface where prior tags are seen, an interface where only popular prior tags are seen, an interface that shows recommended prior tags -- the interface that did not show prior tags had a much larger proportion of never before seen tags.
This is an unsurprising phenomenon, given that tagging habits appear to be influenced by the community [@golder_structure_2007; @sen_tagging_2006]; however, it is a factor influencing our approach to tag collection through paid crowdsourcing.

A crowd marketplace is emphatically not a community, at least not in the service of a requester's particular task, and generally the pragmatic system-oriented uses
are underlied by a desire for convergence and minimal redundancy.
This is to say, a requester looking to pay for image tags may not want a vocabulary explosion, but also may be looking to avoid the added complexity and cost of collecting prior tags to show to workers.
<!-- TODO what is preferred? I should try both -->
<!-- Useful somewhere? : Collecting Factual tags [@sen_tagging_2006] is best serviced by a strategy of showing the most popular prior tags, though this is confounded by the fact that popular tags tend to _be_ factual tags.-->

<!--##### Tagging Instruction-->

<!-- What is a 'good' tag, what is a bad tag? -->

\newthought{If the goal is to collect high quality tags}, it must first be clear what a 'good' or 'bad' tag is.
When studying tag quality in a film recommendation system, @sen_quest_2007 found that only 21% of tags are worthy of display to other users.

This study looks to augment image record data and metadata with additional information that cannot be trivially inferred without human contribution.
Particularly, we look to information retrieval uses, to help in findability, filtering, and organization.

One typology for types of tags was offered for tagged bookmarks by @golder_usage_2006.
They present seven kinds of bookmarking tags: those for identifying what the item is about (i.e. topical), for identifying what the item is (e.g. blog), for identifying the creator of the item, for qualifying or refining other tags, for labeling subjective characteristics of the content, for establishing a relationship to the tagger (e.g. 'my post'), and for organization.

How might Golder and Huberman's categiries of tags apply to images?i <!-- TODO -->

<!-- quotes 

"Some tags that would not typically be provided by Library catalogers are obviously more important in a social media site like Flickr, where photos may be sought out for reuse based on such attributes as predominate colors." (Springer et al 2008:24)

-->

<!-- TODO: look at studies on Flickr tagging-->

@sen_tagging_2006 collapse the seven classes from @golder_structure_2007 into three: _factual_ tags conveying objective information, _subjective_ tags conveying opinions, and _personal_ tags that are intended only for the tagger.
As expected, factual tags were found to be most generally useful, particularly for learning and finding, although personal and subjective tags were useful for self-expression and organizing, respectively.
These are uses that matter to users of online communities, though for the organization purposes of this study's image tagging task, and perhaps more generally for the controlled paid setting, factual tags are the most desired.

In a survey related to the display of prior tags [@sen_quest_2007], users found personal tags less useful.

<!-- Tags used in IR.. what kind -->

Finally, tagging has been used in practice for cultural heritage uses, and preferred types of tags have been discussed, even when actual practice does not yield those ideals.
<!- TODO LIS literature on tagging ->

In their report on The Commons [^TODO make sure I use the proper name throughout the document, not "Flickr Commons], @springer_for_2008 analyzed a sample of tags and derived a number of non-exclusive categories for image tags:

- tags derived from the description;
- new descriptive keywords, including tags for place, format, photographic technique, time period, or creator name;
new subject words, such as items seen in the image, associations/symbolism,  commentary (e.g. 'Sunday best'), transcription of words in the image, topical tags and humour;
- emotional/aesthetic responses (e.g. 'ugly');
- personal knowledge or research;
- machine tags;
- variant forms;
- foreign language tags; and
- miscellaneous tags [@springer_for_2008]

Of these, description-derived and image subject tags were the most common.

The relative usefulness of the 

<!--##### Tagging - Training Interface-->

Given the more detailed, specific approach taken in the training interface condition, more prior work on tagging is used in guiding users.
It has been found that user tagging habits resemble other tags that they see [@sen_tagging_2006].
Given this, the training interface offers a set of examples, with good and bad tags shown.
The quality of these tags was determined through a Mechanical Turk task, where workers rated previously submitted tags.
<!--TODO this hasn't been done yet... aspirational text -->
<!-- TODO details -->


## Evaluation

- Ground Truth creation
  - tags that are applied by many unique users are likely to be better tags [@sen_quest_2007]
  - In rating tag quality, both positive and negative ratings are important [@sen_quest_2007]



## Experiment #3: Music Similarity Judgments [^TODO extract to it's own half-chapter]

The next chapter will turn to more subjective subjective settings.
Before continuing, however, it is worth reported on one more study of objective task design, one which has been extracted to its own section because the study looks at both posterior data correction and task design corrections, as discussed in the two chapters prior, while the findings bridge the shift in focus from objective task design to subjective.

\marginnote{This work was previous reported in <!-- TODO cite-->}

## Introduction
Judging the similarity of audio is a difficult and time-consuming task.
Since 2006, the Music Information Retrieval Evaluation eXchange (MIREX)
has been using volunteer human judges for evaluating the performance of
music systems submitted to the Audio Music Similarity and Retrieval
(AMS) task.

After analyzing four years of crowd judgments from AMS, finding that the consistency across different raters and years is remarkably poor, this study looks at the role of crowdsourcing design and modeling choices in this data variable.
Specifically, this chapter pursuing user normalization, collection instrument design changes, and multiple independent judgments.

The primary contribution here is an better understanding of data issues that stem from crowdsourced music evaluation datasets, and methods to avoid data quality pitfalls.
Particularly, our case study of music information retrieval judgments generalizes to a class of evaluation tasks that are subjective-biased.

Music similarity is desired by music digital library users @lee_survey_2004, and other digital libraries deal with a comparable form of *normative* task where there is no absolutely correct ground truth but a desire to reach a consensus or
a generally agreeable classification; e.g. item similarity ratings,
information quality judgments, and information retrieval relevance
judgments.
The findings are also important to understanding the reliability of Audio Music Similarity evaluation, and we provide recommendations to improve future tasks.

## Background

MIREX is an annual evaluation event where techniques tailored to a variety of Music Digital Library (MDL) and Music Information Retrieval
(MIR) tasks are submitted by research laboratories from all over the world.

The Audio Music Similarity and Retrieval (AMS) task was started in 2006.
AMS resembles a classic information retrieval scenario, whereby the systems being evaluated are expected to return a ranked list of audio items that are considered similar to a given query [@downie_music_2010].
It is also desired by digital library users: in a survey of MDL users, 54% said they were likely to use music similarity functions [@lee_survey_2004].
AMS relies on human judgments for evaluation, recruiting volunteers each year to judge the similarity of song “candidates” to randomly selected queries.

For each query song, each retrieval system under evaluation gives MIREX a list of candidate similar songs.
These query–candidate sets are presented randomly to evaluators in a judging system called 'Evalutron 6000' (E6K) [@downie_music_2006; @gruzd_evalutron_2007].
To avoid exhaustion, E6K saves judgments continuously, so that judges can step away and return without losing data.

## Data

$26024$ human judgments of audio similarity were compiled, comprising four years of MIREX’s AMS judgments.
The candidate songs were selected for judgment by 8 submitted systems in 2010, 18 in 2011, 10 in 2012, and 8 in 2013.
Until 2011, 100 queries were evaluated each year, after which MIREX shifted to 50 queries per year.

All the candidates for a query were graded on two scales of similarity:
 - The __BROAD__ scale is a categorical ranking from three choices: "not similar", "somewhat similar", and "very similar".
 - The __FINE__ scale is a 101-point numerical rating, from 0-100.

The judges were generally trusted volunteers from the MIR community, and multiple keying was not done.

To understand the consistency of judgments across years of MIREX, we need to look at song pairs that have recurred in judging.
Since AMS evaluation queries are randomly selected each year, there are only two instances where a query has recurred.
However, $80\%$ of queries have also occurred as candidates for other songs.
As a result, there are
$156$ judgments of the same song pairs across the years, with the caveat that the query-candidate relationship is inverted.

## Problem

There is a concerning lack of agreement between judges in the set of reciprocal song pairs.
Since our best prediction for the true similarity of two songs is the mean of both judgments, we can measure the deviation from the expected value as Root Mean Squared Error (RMSE).
In this case, $RMSE=16.58$ against a prediction assuming symmetric similarity.

RMSE is generally meaningful in comparison, but for a sense of the variance with an RMSE of 16.58, consider that it is in the same unit as the scale, which only has a max range of 101 points^[STDdev].
Alternately, the FINE scale judgements are plotted in Figure {@fig:recip-fine}.[^TODO]
The slope shows the expected relationship if similarity was an agreeable metric independent of "which song is listened to first" order effects – an assumption implicitly made in treating similarity as something that can be evaluated.

^[STDdev]: It  may be helpful in approximating the severity of the problem to remember that RMSE aligns with sample standard deviation.

The noise presented here suggests a great deal of circumstance and randomness in evaluating music similarity algorithms for MIREX.

Comparing the BROAD category of reciprocal pairs tells a similar story (Table {@tbl:amscorr}): only $35\%$ of judges agreed on the category and nearly half was agreement on “somewhat similar” item.
While some of this is to be expected, it also suggests that *SS* functions as a catch-all category where judges hedge their bets.
This is supported by its much wider range (@fig:all-dist). [^TODO]

  ---------------------- ---- ---- ----
                         NS   SS   VS
  Not Similar (NS)       5    —    —
  Somewhat Similar (SS)  20   14   —
  Very Similar (VS)      10   21   8
  ---------------------- ---- ---- ----

Table: Relationship of categorical judgments for pairs of songs that have been judged twice over a four-year span of AMS. {#tbl:amscorr}

The weak correlation in re-judging makes it difficult to assess the extent to which the evaluation is actually reflecting the ‘truth’ of what songs are similar.

What are the reasons for this weak correlation?
This study considers this question in the context of crowdsourcing choices, looking at collection format and data treatment as possible sources for the variance.
First, let’s consider some possible explanations.

**Order and priming effects**.
Perhaps there is an order effect based on either which song a judge listens to first, or a priming effect caused by a judge listening consecutively to a set of song pairs with the same query.
Research in other contexts has noted the possibility of asymmetrical effects [@tversky_features_1977,@polk_rating_2002; @hiatt_role_2013].

**Different interpretations of the scale**.
Do different people treat the rating scale differently? This would be a user bias, but a predictable one.

**Bad intercoder reliability due to task design**.
Perhaps the E6K system does a poor job controlling for consistency?

**Bad judges**.
Much crowd research looks at malicious or unreliable contributors.
This is possible, but unlikely to happen systematically since the volunteers are trusted members of the MIR community.

**An inherently subjective task**: Does this task present challenges to agreement?

It is likely that the noisy, high-variance MIREX music similarity judgments stem from multiple sources.
In line with the thrust of this dissertation, I focus on measuring how much of that is recoverable: what can be improved by changes to practice.
The rest of this chapter will at consider 1) corrections for user-specific biases, 2) multiple-keyed judgments, and 3) a task design.
While order effect are not focused on, partially because their measurement is possibly confounded by the other issues, this chapter's positive results -- showing improved judgment consistency -- provide a better sense of the magnitude at which such effects might exist.

## Related Work

The feasibility of scoring melodic similarity has been challenged by
@marsden_interrogating_2012, who noted high variation in MIREX 2005 similarity judgments.
Though on different MIREX data, our study is able to identify collection instrument design as one such factor source of variance.

An alternative to the form of graded similarity judgment that MIREX uses is partially ordered lists, introduced by @typke_ground_2005.
This form of judgment has been shown to be effective for judging the relative similarity of candidates to a query.
However, it is more time-consuming to create, a factor in the decision to use a graded scale for MIREX.
Also, it suffers from similar inconsistency problems to what we observe in this paper
[@urbano_crowdsourcing_2010].

Despite the inconsistency observed in this study, research into the power of AMS evaluation for an year not overlapping with our study concluded that the relative rankings of AMS systems in MIREX are sound, with contention on about 4% of pairwise system comparisons [@urbano_audio_2011].
This chapter turn to Mechanical Turk for additional judgments, an option shown as a viable approach to music similarity judgments in multiple studies [@urbano_crowdsourcing_2010; @lee_crowdsourcing_2010].

@urbano_crowdsourcing_2010 looked to paid crowdsourcing for lowering the difficulty of finding human labor for *ranked* similarity judgments.
They use an approach similar to ordered lists, inferring an order through pairwise preference judgments, whereby judges choose the more similar option between two candidates.
Additional research has also looked at *graded* similarity judgments in the context of the AMS task @lee_crowdsourcing_2010, finding that the MIREX style of evaluation does not suffer significant drops in quality with paid workers.

## Approach

To address possible sources of the error in MIREX’s crowdsourced relevance judgments, four approaches are taken:

 1. normalizing workers by their personal habits;
 2. asking new, different judges for judgments;
 3. adding additional redundant judges^[languageAMS];
 4. testing an alternate interface that gives judges more guidance on what rating is appropriate.

^[languageAMS]: Since this chapter involves volunteer contributions, contributors are not uniformly referred to as _workers_, as in the other chapters, except when discussion paid contributors.

## Normalizing for Grader-Specific Effects {#normalizing-workers}

*RQ1: Are intra-judge inconsistencies responsible for the lack of reciprocation in AMS similarity judgments?*

The human judges are given a large amount of leeway regarding how they perform a task.
We set out to see if this contributes to superficial variance, and whether correcting for it can address the poor reciprocation in AMS.
While the BROAD categories are fairly clear, the
FINE scale does not constrain judges to follow a specific codebook.
This is appears to be done by design: workers are told, "You have the freedom to make whatever associations you desire ... we expect to see variations across evaluators as this is a normal part of human subjectivity." Differences in judges’ interpretations of a task can contribute to different internal scales.
This type of error is commonly seen in collaborative filtering for recommendation, where users’ opinions are often treated as a mixture of their nominal rating, adjusted by user-specific and item-specific biases @koren_bellkor_2009.
To normalize judges against their specific biases, FINE judgments were translated to z-score values, represented as standard deviations from the judge’s mean rating habit.
This approach was previously seen in
@hofmann_latent_2004; in our case, adjusted ratings were blocked by a judge’s BROAD score, resulting in three values for each judge: deviation from their typical FINE score for "not similar", "somewhat similar", and "very similar" candidates.

The adjusted rating $r^{'}_{u,b}$ for judge $u$ and BROAD category $b$ was calculated in the following way:

$$r^{'}_{u,b} = \sqrt{\frac{1}{N}* \sum\nolimits_{i=1}^N{ r_{u,b} - \mu_{u,b} } }$$
 where $b \in B$ and $B=\left\{ {``NS'',``SS'',``VS''}\right\}$.
Since this normalization provides ratings against three different scales, we mapped it back into a new FINE score by assuming a normal distribution for each category.
With this mapping, 95% of not similar ratings occur between $FINE=0-27.63$; somewhat similar ratings between $30.21-67.80$; and very similar ratings between $68.74-92.17$.

### Results

Normalizing user FINE judgments weighted against their BROAD judgments resulted in variance of $RMSE=16.15$, a non-significant change.
Thus, there is no evidence that greatly different internal scales by judges were the reason for the low consistency.
In other words, the notion that judges were internally consistent in a way that can be normalized globally is not tractable.

## Verifying Judgments with New Graders

*RQ2: Are problem judges responsible for inconsistent reciprocal ratings?*

*RQ3: Is subjectivity or disagreement of the grading task responsible for inconsistent reciprocal ratings?*

Would the same low consistent been seen if new judges were asked?
Getting a second opinion addresses two possibilities: expected error (good judges, biased task) and unexpected error (agreeable task, bad judges).

To answer these two research questions, $156$ tasks were posted on Mechanical Turk.
Asking paid workers *individually* provides an insight into MIREX judge quality, while asking *multiple* workers helps to see if it is simply a task that is not easily agreed upon, regardless of how well-intentioned a judge is.

In parameterizing the task for this study, worker judges were presented with a query and a single candidate.
The audio files were the same clips used in MIREX.

Restrictions were not placed how fully the clips were listened to, and in fact the average task time was lower than the length of the clips.
The task was carefully designed were also careful to mimic the question phrasing and level of guidance from the original task.
As a result, Turk workers are potentially less fatigued [@lee_crowdsourcing_2010], but may also be less experienced.
This was done both due to the conventions of Mechanical Turk and because our MIREX data was not rich enough to emulate the order or continuity of task sets.
Thus, any priming effects from the series of songs would not translate here.

### Results

Asking individual paid amateur judges to provide judgments yielded an average $RMSE=15.53$, a comparable level of inconsistency.
With regards to *RQ2*, the low consistency when asking a new group of judges for judgments suggests that the MIREX volunteers are not unreliable compared to other workers.

In contrast, aggregating multiple worker judgments toward a normative opinion results in drastic improvements: aggregating two workers by mean judgment improved the RMSE to $9.72$ ($41.4\%$ improvement), while three judge judgments improved the RMSE to $7.45$
($55.1\%$ improvement).
This means that, as asked in *RQ3*, the task is too subjective to trust a single judge and has a high natural variance in judgment.

  Approach                                         RMSE       
  ------------------------------------------ ---------------- --
  Baseline (AMS Graders)                          16.58       
  Normalizing Graders                         16.15 (-0.03%)  
  Second-opinion (Individual turk workers)    15.53 (-6.3%)   
  Aggregating workers: 2 votes/judgment       9.72 (-41.4%)   
  Aggregating workers: 3 votes/judgment       7.45 (-55.1%)   
  Alternate design (individual judgments)     11.44 (-31.0%)  
  Alternate design (2 votes/judgments)        7.55 (-54.5%)   
  Alternate design (3 votes/judgments)        5.40 (-66.1%)   

Table : Deviation (in RMSE) of similarity judgments from expectation.{#tbl:rmse-vals}

