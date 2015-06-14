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

[^whyint]: Why are these design manipulations chosen? Later in this chapter, the possibilities for design manipulation are considered, and compared to the existing literature. As will be seen, prior work has lent insight on the effect of 'parameter manipulations' such as payment variation <!-- TODO CITE--> and wording changes<!-- TODO CITE LEASE paper-->, while more drastic design manipulations are only beginning to be studied in the context of crowds.<!--TODO cite Gilbert-->



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



## Research questions

This chapter compares the effect of task design on the quality of crowdsourced objective data.
Scoped to a reasonable parameterization of crowdsourcing as it is commonly practiced in information retrieval -- a typical encoding task performed by paid crowds, the following questions will be pursued:

 * __RQ1__: Which approaches to collection interface design are worth pursuing as alternatives to the basic designs commonly employed in paid crowdsourcing?

 * __RQ2__: Is there a significant difference in the quality, reliability, and consistency of crowd contributions for the same task collected through different collection interfaces?

 * __RQ3__: Is there a qualitative difference in contributor satisfaction across different interfaces for the same task?

 * __RQ4__: Do the questions above generalize to different tasks, task types, and contexts (i.e. outside of paid platforms)?

RQ1 is the question of design, on synthesizing prior work and brainstorming directions to explore.
It is a partially subjective question, but one still worth pursuing with diligence.
As research by @komarov_crowdsourcing_2013 found, the effects seen in traditional user studies are still present in online crowd markets.
Their finding suggests that non-crowdsourcing research in human-computer interaction is informative for our purposes.
This proposal chapter explores some possible design decisions and argues why they should be studied.

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

## Related Work

### Tagging

@sen_quest_2007 study the quality of community tags in the MovieLens film recommendation system, toward methods to prioritize tags in the interface.
They find that high-quality tags, as determined by survey, are not necessarily the most-applied tags, likely because the most common tags are locally useful 'personal' tags.
However, tags that are applied by many _unique_ users are more likely to be useful, as are tags that are clicked by many unique users.
While this form of usage-based quality indicator does not help in collecting good tags, it does affect how to determine quality tags for ground truth in this study.

## Approach

So what design manipulations does this study measure?

As outlined in the overview of my own doctoral research, a few directions look like promising continuations of my research.

 * It is still unclear whether simple encoding tasks benefit more from workers' gut instincts or careful consideration.
   Designs that can change a worker's attentiveness address an interesting problem and may bring potential improvements.
 * Having previously found that reading instructions slowly is important for properly performing work, it should be seen whether a task can push a worker into internalizing the codebook rather than interpreting it.
 * Understanding that many reliability errors are introduced by honest workers that intend to do well, it may also be important to keep workers informed of their performance, at least when they are not performing well.

With those considerations in mind, I propose the three interfaces to study for crowdsourced data collection: a training interface, a feedback interface, and a time-limited interface.

#### Basic interface

The basic interface will resemble an archetypal task, following conventions seen in Mechanical Turk usage.
It will show workers a task with a goal, description, and ten items to perform actions on.
The goal of the interface will be to "identify the topic of a tweet."
For each item, a multiple-choice question will be posed, with the proper noun phrases provided as options, as well as a free-text "Other" category and an "unknown" option.
The description will explain what a "topic" is, and make clear the difference between a topic and simply a mention.
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

#### Training interface

In the training interface, the worker is walked through their first task slowly.
As they complete the tasks, their answers are evaluated against a gold standard and they are informed if they completed it correctly or incorrectly.
Incorrect answers will also be given an explanation of why the actual answer is correct.

<!-- TODO2 Justification for this design: who else has done it?
Ask Mike, possible Jaime for advice, my lit review is failing.
-->

The training tasks will be hand-designed, based on a random sample of items.

<!--TODO2

 * Add figure of mockup -->

#### Feedback Interface

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


#### Time-Limited Interface

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


## Experiment  #1: Tagging

<!--#### Tagging-->

- problem

Why tagging
- Limited metadata
  - information overload
 Difficult to model formats (non-text)

Why paid
- Volunteer practice
   - Many volunteers tag poorly
     - @springer_for_2008 find that tags were the least fulfilling type of information contributed to the Library of Congress account on Flickr. <!--Add sidenote about Flickr, and perhaps the commons--> ...
In a look at social features used in library online catalogues, @spiteri_social_2011 finds tagging to be among the least used.
While the complexities of why this is the case and how closely tied the result is to the implementation, the finding does suggest that features which are arguably more self-serving, such as curating lists of library materials and starring liked works, are easier to collect than more pragmatic features for item description.


<!-- TODO discuss -->

- RQ:

- subjective vs. objective
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

How might Golder and Huberman's tags apply to images?i <!-- TODO -->

<!-- Studies on Flickr tagging-->

@sen_tagging_2006 collapse the seven classes from @golder_structure_2007 into three: _factual_ tags conveying objective information, _subjective_ tags conveying opinions, and _personal_ tags that are intended only for the tagger.
As expected, factual tags were found to be most generally useful, particularly for learning and finding, although personal and subjective tags were useful for self-expression and organizing, respectively.
These are uses that matter to users of online communities, though for the organization purposes of this study's image tagging task, and perhaps more generally for the controlled paid setting, factual tags are the most desired.

In a survey related to the display of prior tags [@sen_quest_2007], users found personal tags less useful.

<!-- Tags used in IR.. what kind -->

Finally, tagging has been used in practice for cultural heritage uses, and preferred types of tags have been discussed, even when actual practice does not yield those ideals.
<!- TODO LIS literature on tagging ->

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

### Tagging


## Experiment #2: Relevance Judgments


## Experiment #3: Music Similarity Judgments

\marginnote{This work was previous reported in <!-- TODO cite-->}

### Old text

* In a sample study comparing the space of incidental crowdsourcing across two systems [@organisciak_incidental_2013], I found that an 'easy' rating interface -- one that puts up less hurdles to contribution -- results in a shifted distribution of ratings than a 'hard' interface.
* In recently-completed research, I looked at low grader consistency in the ground truth for the Audio Music Similarity (AMS) task in the Music Information Retrieval Exchange (MIREX). One of the results found that redesigning the task to attach finer instruction to the rating improved the quality of judgments by crowdsourced judges.
