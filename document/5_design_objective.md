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

Evidence suggests that the design of a data collection interface affects the quality and distribution of user contributions[@alonso_crowdsourcing_2008; @howe_crowdsourcing_2008; @mason_financial_2010; @mitra_comparing_2015;].<!--TODO better citations, remove citations to work being reported here -->
The manner to improve on a basic task/description/items interface design is not immediately clear, though: some success has been attained by slowing workers down, while other times it has been beneficial to encourage cheaper, more impulsive contributions in larger numbers<!-- TODO2 cite -->.

\newthought{If we consider crowdsourcing data quality} as something that can be addressed not only through post-collection modeling but through the choices made in designing the collection task, the latter approach is surely the lesser studied problem.
  However, in cost-time considerations, design promises more efficient improvements.
A design that is more interesting to workers or less prone to error may result in better contributions at no extra cost, while designs that offer bonuses or training include short term costs.
When studying intrinsic motivation in Mechanical Turk tasks, @mason_financial_2010 found that a small change in instrumentation -- changing remuneration to less tightly govern the task -- resulted in more work contributed with happier contributors.
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

While parameterization studies have compared how shifts in description [e.g. @grady_crowdsourcing_2010] or payment structure [e.g. @mason_financial_2010] affect contribution, very few studies looking at more drastic design manipulations have been performed on a controlled task ^[The recent paper by @mitra_comparing_2015 a notable exception].^[TODO add more citations above]

Still, some unresolved questions in the area are necessary to understand in the pursuit of quality crowd contributions.
For example, it is still unclear whether simple encoding tasks benefit more from workers' gut instincts or careful consideration.
Designs that can change a worker's attentiveness may help -- or perhaps hinder -- the quality of contributions.

Having found in the previous chapter that reading instructions slowly is important for properly performing work, it should be seen whether a task can push a worker into internalizing the codebook rather than interpreting it.
Understanding that many reliability errors are introduced by honest workers that intend to do well, it may also be important to keep workers informed of their performance, at least when they are not performing well. Other work, to be reported in later chapters, finds that a task redesign for an evaluation task can improve collected data immensely at little extra cost, while in the case of simple item ratings, over-thinking the task is actually detrimental.

With those considerations in mind, this study compares data collected through three interfaces for crowdsourced data collection: a training interface, a feedback interface, and a time-limited interface.
The training interface takes more care to slow down the task and walk new workers through the codebook and the style of a good contribution.
The feedback interface tries to reflect performance back to workers, to check their understanding of the codebook.
Finally, the time-limited interface contrasts the introspective approach of the other interface by encouraging quicker contributions.

### Basic interface (Baseline)

The basic interface resembles an archetypal task, following conventions seen in Mechanical Turk usage.
It shows workers a task with a goal, description, and ten items to perform actions on.
Prior to submission, there is also an optional feedback form.
Though it is a baseline, it is not a hobbled baseline, designed around recommended practices.

The _goal_ is the summarized statement for the task requirement, such as 'Tag images with descriptive words' or 'judge the relevance of documents in a search'.

The _instructions_ describe, clearly but succinctly, the parameters of the task and any necessary details about completing the task.
Part of doing so is explaining what a good contribution is: that is, delineating between good and bad tags in the tagging task, or explaining what a relevant or non-relevant document is for the relevance judgment task.
The reason that instructions are intended to be succinct is again by convention.
Amazon's advice for designing good tasks states that the task should not require scrolling to start [@_requester_2011].
In addition to conciseness, the instructions for this study's basic interface strive to follow other recommendations in a conservative and uncontroversial manner: specificity, examples, and clarity about poor work [@_requester_2011; @_guidelines_2014].

It is difficult to balance the various needs of a good instruction set.
With concern to succinctness and ease of readability, key information was italicized, examples were added as mouse-over popups, and secondary information (e.g. 'Tips') was hidden behind a tab.
Another tab held a reference copy of the IRB disclosure (which, for this condition and all others, was shown fully when a worker was previewing the task before acceptance).
Finally, an empty 'tab' to collapse[^Collapse] the instructions completely was added. This is not a common feature of archetypal tasks, but given the difficulty of scrolling in the embedded window on Mechanical Turk, was deemed a humane addition.
Figure {@fig:basic-inturk} shows the limited task space when it is embedded within the Mechanical Turk interface.[^TagDifficulty]
Collapsible instructions have been recommended previously by Chen (TODO cite Edwin Chen post) and by the Twitter Turk platform which Chen work on (TODO cite Clockwork Raven).

![Screenshot of task within the Mechanical Turk interface.](images/design-basic-inturk.png) {#fig:basic-inturk}

[^TaggingInterface]: Incidentally, Figure {@fig:basic-inturk} also shows some of the more challenges images to tag. How would you tag them? 

[^TaggingInterface]: TODO: Add figure of instructions from basic condition of tagging task. The substance of the instructions is discussed in the Tag Task section.

[^Collapse]: This option was tweaked after the first batch of data was already collected. It was considered a convenience feature that had little little effect on how a worker considers and completes a task, and does not appear to have notably changed the collected data. <!--TODO verify. Check the time difference for parts of the task that weren't actively being measured, and eyeball the difference in feedback-->

Following the advice laid out by the unofficial Guidelines for Academic Requesters[@_guidelines_2014][^Workers], a time estimate for task completion was also provided.
The time estimate was determined based on testing and updated following an initial batch of tasks.

It is recommended to be clear about what work is rejected [@_requester_2011; @_guidelines_2014].<!--_-->
Given that an underlying premise of this chapter is investigating whether the work requester is sometimes to blame for poor work, it would be a troublesome foregone conclusion to actually reject work, so for ethical reasons no work was rejected.
Instead, even for the basic interface, improper work that would have been rejected in other settings was validated by the system when possible.
For example, workers were asked for a minimum of two tags in the tagging task; as shown in Figure {@fig:basic-validation}, they could not submit before entering two tags.
To account for instances where a second tag was too difficult to create, workers could also add a placeholder 'TOOHARD' tag, which the interface alerted a worker to if their cursor was inactive for a few seconds (Figure @fig:tippopup).

![An example of the suggestion message in the basic condition of the tagging task, which appears after the input field is active for a small period of time.](images/design-basic-tippopup.png) {#fig:tippopup}

[^Validation1]: TODO - Add figure of validation
![Screenshot of contribution validation, which informas contributors of issues before submission](images/design-basic-validation.png) {#fig:basic-validation}

[^Validation2]: TODO - Add info popup

[^Workers]: These unofficial guidelines, on the Dynamo Wiki, were written collaboratively by academic researchers and Mechanical Turk workers.

The _task set_ of items to perform work on, again followed a basic archetypal pattern, listing each item in a grid.
The tasks themselves were small and did not require context shifting, as Amazon recommends [@_requester_2011].

Finally, the basic interface included an open-ended feedback form at the end.
While this is far from a standard convention, many have recommended it as a standard element in task design [<!-- TODO cite Chen, cite dynamo, cite alonso? -->].
The ability to respond easily provides valuable information on worker satisfaction and task problems.[^feedback]

[^feedback]: Based on my own experiences, I have treated feedback forms as a necessity for the past few years. Interestingly, as noted early, when @alonso_design_2011 tried to mandate the feedback form responses, they found that their quality fell.

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

Not all crowdsourcing contribution cases require more focus; sometimes a worker in a quicker mode of thinking contributes more consistent and reliable work.
This was the case in an incidental finding reported in Chapter 6, where asking workers performing subjective opinion-based tasks to explain their judgement seemed to change the judgment habits themselves.

In contrast to the training and feedback interfaces, which served, in a way, to slow down workers and make them more focused on their contributions, the final data collection interface pursues the opposite approach.
The time-limited interface encourages quicker interactions by giving users a timer to complete all tasks.

The goal and instructions do not differ greatly from that of the basic interface, with the exception of texts saying 

It is important not to distress the worker when trying to push them into a visceral form of task completion, as this might have the opposite effect.
Instead, this design encourages _flow_ ^[TODO citation], where a user moves seamlessly through the tasks without over-thinking their answers.
To avoid the potential distress of thinking about what is to come, this interface does not show a list of tasks to complete (e.g. "complete these ten tasks in a minute").
Instead, tasks are shown one at a time (e.g."See how many tasks you can complete in a minute"), with bonuses paid for each complete task and increased for correct answers.

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

Lowering the barrier to custom evaluation is one of the most important uses of crowdsourcing for information retrieval research.
While production systems benefit from actual humans in the machine to identify topics and correct algorithmic quirks^[TODO cite Twitter, Google, Bing], research aiming to improve pure information retrieval performance still needs ways to appropriately evaluate different models and approaches.
Paid crowdsourcing platforms offer a way to tap into large and diverse groups of people for relevance judgments, making custom evaluation datasets -- and subsequently research over novel corpora -- greatly more accessible.^[Previously]

^[Previously]: The role and value of crowdsourcing for information retrieval evaluation was discussed at length in the previous chapter.
  For brevity, it is only lightly recalled here.

To judge the effect of design manipulations on relevant judgment collection, a set of experiments were set up for image information retrieval results.

### Related Work

### Data

The dataset being evaluated consisted of XXX^[TODO] query -- image document pairs, evaluating 20 results each^[TODO confirm] for 15 queries, against a corpus of XXXXXX ^[TODO confirm] Pinterest documents.
All the data, control and experiments, were collected specifically for this study, allowing for a fair comparison of design manipulations against a baseline that was competently implemented.

<!-- What is pinterest -->
\newthought{Pinterest is a social network} centered on the saving, sharing, and curation of online images.
It is built entirely on crowd contributions.
On Pinterest, the document unit is a 'pin': an image, associated with a web URL and page title, and a required text description provided by the user.
Though the most common type of pin is saved from an external website, it is also possible to upload personal content.
The 'descriptions' are required but free-text, meaning they do not necessarily _describe_ the image.

Pins are sorted into curated lists, referred to as 'boards'.
Like pins, classification into boards is not controlled.
While adding a pin to a board is an act of classification, the classes are user-defined and can be created for various reason, such as quality judgments (e.g. "Neat stuff"), thematically descriptive (e.g. "dream wedding"), or miscellany of various sorts (e.g. "inspiration", "funny").
Boards are user-specific, created by a user with a title, description, category, and optional map.

<!--Why study Pinterest?-->
i\newthought{Pinterest is a novel website} for studying ways to incorporate crowdsourced information into web retrieval.
This study, concerned with the methodology of crowdsourcing, is not dependent on Pinterest, but Pinterest is nonetheless an appropriate site to underpin it.
Structurally, it resembles the archival form of many library and museum systems, albeit at a larger scale, it is itself a product of [volunteer] crowdsourcing, and it deals in the type of sparse, simple content that crowdsourcing is appropriate for.

 * The organizational form of Pinterest, grouping documents into curated lists called 'boards', is a interface pattern that is relevant to many forms of information repository.
   Social OPACs, for example, allow library patrons to collect books into similarly uncontrolled lists.
 * Pinterest contains very little information about the source web document.
   It is feasible to crawl the full text of the source, but as it stands, a Pinterest 'pin' alone offers a record of a _human's interpretation_ of the source.
   It is simple, and helps us avoid confounding the focus on crowd contributions.
 * Since the primary form of Pinterest document is a human reaction to a web document, the user contributions on the site may have possible future use for web retrieval.
 * For the purpose of this study, collecting relevance judgments for retrieved pins, the image-centric form is the type of task that crowds should be capable at.
   Good tasks should focus on one thing, with little context switching [@_guidelines_2014], and understanding an image is a quick, natural activity for people.^[Even when it is not so for machines (TODO citation].

Finally, Pinterest is an interesting but understudied website.
Demographically there is a female skew, interesting precisely it counter-balances the typical male-heavy community demographic.

<!-- TODO talk about TREC crowdsourcing track -->

<!-- data collection-->
Two types of information were collected from Pinterest for this experiment: pins and boards.

Sampling was done according to Pinterest's provided sitemap.
An initial survey (August 2014) suggested that Pinterest had approximately 107.5 million users, with 207.5 million pins and 572 million boards containing those pins.

<!--
Users: 107.5m 	4300 packages of 25000 users, 1.1 MB each
Boards: 571.95m 22878 packages of 25k boards
Pins: 207.5m 	8300 packages of 25k pins --> 

This is a very large amount of data, and only a sample was needed for this study. For the sample, 

- Random 25000 pin sitemap listings were downloaded
- A process randomly pulled out pin listings, with each listing holding a 1% of being preserved
- The collected pins were randomly ordered, and the full metadata of pins was collected against this master list.

For the information retrieval system underlying this experiment's relevance judgments, a sample of 20k pins was collected and indexed.^[Attrition]

^[Attrition]: This sample was collected in 40k pin batches, and not all at once. As a result, the final number of pins successfully downloaded was lower, at TODO. The time difference between batches provides a sense of attrition on Pinterest.
  The first two batches of pins were collected against a five-month old sitemap, and 1.4-1.5k pins were no longer accessible per batch ($~3.4%$). 
  Another batch was scraped when the sample list was 9 months old, and $6.4%$ of the links were no longer active, the final two batches were collected 2 months later, with $TODO UPDATE$ links missing.
  TODO update after last batch

### Evaluation

### Results

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

<!--##Fast Interface-->

\newthought{For the timed interface}, ...

<!--#### Fast Interface design-->
<!--#### Fast Interface Payment-->
The payment structure was developed to approximate the payment of the basic interface if completion behaviors were equal.
That is, since the first batch of basic tagging contributions averaged 23 seconds each for 10 tasks at $\$0.50$, the payment for the timed interface was intended to match that reimbursement rate at 4 tasks
<!-- TODO: trailed off while writing... go back in the morning and finish-->


### Results

\newthought{In completion time}, the most drastic difference was in the fast condition.

\newthought{In the fast interface}, the payment struc


## Evaluation

- Ground Truth creation
  - tags that are applied by many unique users are likely to be better tags [@sen_quest_2007]
  - In rating tag quality, both positive and negative ratings are important [@sen_quest_2007]
