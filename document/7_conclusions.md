Summary and Conclusion
=======================

Crowdsourcing presents a great deal of potential value to information science, in its ability to supplement existing metadata objects with new descriptive information, qualitative reactions, and different perspectives.
However, the benefits of contributions from self-selected amateur humans are also potential pitfalls.

To efficiently and reliably crowdsource descriptive metadata, one has to account for economies of attention, motivational concerns, subjective variations between contributors, misinterpretations and lack of expertise, and differing contributor contexts.

This dissertation focuses on particular area of crowdsourcing -- paid labor though crowd platforms -- and studies these issues as they relate to the quality of data contributed.
This is primary a study of data quality maximization: in what ways can crowdsourcing data be optimized, both before and during collection time, and in both objective and subjective contexts. _How do we control and interpret qualitative user contributions in a quantified system?_

There were three stages to this dissertation: better making sense of collected data, collecting better quality data, and collecting better quality subjective data.

First, a post-collection approach was taken to interpreting objective tasks: what indicators exist that help us identify and use good contributions while excluding poor ones?
The way you ask affects what you receive, so next this study looked at objective tasks at the collection stage.
How does the implementation of the collection instrument improve or otherwise bias the collected contributions?
Following in this direction, this study finally shifted focus to the implementation of subjective tasks, ones that do not have a concept of correctness except in relation to who they are collected for.

What are the properties of data collected from paid crowds for objective and subjective information system tasks, and how can the quality of data -- in terms of consistency and variance -- be optimized? We addressed this motivating question through three broad research questions.

> __Broad Research Question 1__: What are the _post-collection_ indicators of quality in worker-contributed objective task data, and can these be leveraged for improved data modeling?

In _Interpreting Objective Tasks for Paid Crowdsourcing_, time, experience, and agreement were studied as potential indicators of quality in already collected data.

One of the primary findings of this chapter was that for low-granularity tasks such as information retrieval relevance judgments over short documents, crowd quality is not of much concern.
Worker agreement was found to be a notable indicator of quality; however, using this to score workers and weigh their contributions upward or downward was overengineering: a simple majority voting approach worked nearly as well.

Experience was not found to be an indicator of quality for information retrieval judgments.
Since this task appeared to have a two-item learning curve, at least in time spent, it would seem that continued engagement with the task did not belie any improved understanding of performing it well.
Though this is a null finding, it does mean that study of similarly constructed tasks does not not need to block by number of tasks completed in analyzing results.

Finally, the amount of time taken by workers was not found to be significant, except for the first task item of a task set.
Exploring the possibility that this is due to time spent in reading instructions, the measurement of which was confounded with the first task, it was found the otherwise identical workers in their contribution habits could have their eventual performance predicted simply based on the time they spend on the outset of the first task and whether they classify it correctly.

Since poor workers in this class were not exhibiting profit-optimizing behaviours, this finding suggests that interventions during collection time might assist in course-correcting workers -- leading to the next research question.

> __Broad RQ 2__: What are the biases inherent to the task design for objective tasks (i.e., the data collection instrument), and can design manipulations correct for them at _collection time_?

In _Designing Tasks for Objective Needs_, this work moved past an immutable treatment of contributions and looks at how contribution quality can be influenced at collection-time.

This chapter explored the design space, exploding the different task parameterization possibilities and considering possible design manipulations.
Three manipulations were then pursued in practice: a training interface (in both close interaction first-taskset parameterizations and a less involved per-taskset 
approach), a performance feedback intervention, and a speed-encouraging time-limited interface.
Of these, training and performance feedback improved the quality of contributions over the best practices baseline.

Initial interaction training was found to be effective for a task where the best practices are not conditioned on an extra variable.
Whereas the results were not significant for relevance judgments, where subsequent tasks may be for different queries than the training set, it showed considerable promise for tagging tasks.

An alternate training condition was attempted for relevance judgments, which fore-fronted the task instructions with a modal window, one requiring an explicit input to move past, and presented the instructions with strong examples of what each type of judgment would look like.
This condition resulted in more time spent on understanding the codebook and, confirming the suggestion from earlier, subsequently strong gains in performance.

These findings support, to the extent of the types of tasks collected, a position that crowd contribution quality is as much a responsibility of requesters as it is of the contributors.
More to the point, they show that there are ways of improving results at no extra collection cost.
This makes it an asset for practical implementations, and exploring alternative forms of design manipulations and interventions is worthy of further study.

Tying together the preceded two chapters, a small study was next conducted on the low intercoder reliability of audio similarity judgments for music information retrieval.
Correcting the existing data was not found to be effective, but increasing the redundant contribution count and redesigning the collection interface to anchor the categories was able to account for a significant portion of the intercoder error.

Part of this chapter focused on the problem of contributor subjectivity. Despite being performed by trusted contributions, the subjectivity of audio similarity judgment tasks confounded their normative use for system evaluation.

> __Broad RQ 3__: What are the quality losses when treating subjective tasks in objective ways, and can collection-time framing or post-collection modeling approaches reduce these?

_Designing Tasks for Subjective Needs_ again focused on maximizing quality through a priori design and instrumentation choices, this time pursued in the context of subjective tasks.
Focusing on a setting of on-demand personalization, it introduced two approaches.
The first was a collection-time design choice, _taste-grokking_, where workers were asked to infer the needs of a target user.
The second was a post-collection modeling choice, _taste-matching_, where workers were profiled on their preferences, matched to users, and their contributions used to personalize for matched users.

Both approaches improved over an unpersonalized baseline.
Taste-matching was strong in contexts whether the factors affecting a person's tasks were more complex or latent, but in simple contexts taste-grokking performed better and resulted in more satisfied workers.

\newpage 

## Some Answers for Better Crowdsourcing

_Q. How do I start?_

The first step of designing a crowdsourcing task is determining the nature of the task. This work's crowdsourcing typology and related practitioner questions can help in understanding the nature of your task.

One of the first questions to answer is whether a task is subjective or objective.

Tasks with a subjective lean -- when a 'correct' answer is person-specific or context-specific -- require special design. This much is perhaps apparent, but it is not always clear that a task is subjective.
It is useful to pilot a task with multiple trusted, careful contributors: how well do they agree?
Internally consistent disagreement may be a sign of subjectivity, in addition to other problems like varying interpretations of the codebook. 

Collecting subjective information can be aided by taste-matching or taste-grokking, as introduced in this dissertation. A reader in a hurry can consult the discussion section of _Designing Tasks for Subjective Needs_ for advice on which approach is more appropriate. Another possible approach is one where the target person explicitly articulates their needs [e.g., @kokkalis_emailvalet_2013; @zhang_human_2012].

_Q. My task looks to have some subjectivity, but I want a single output. What do I do?_

Though it is often used for quality control to find errant workers, multi-worker aggregation or consensus voting is also useful in deriving a 'normative' objective answer when there is no universal answer.
This was necessary in one of this dissertation's studies, where we wanted to use crowd judgments of music similarity for evaluating music algorithms, even though people themselves often disagree.

As shown in comparison with taste-matching and taste-grokking, however, the overall system performance is worse when taking this approach. Furthermore, it needs to be tested how many redundant workers need to be aggregated: past studies find that this number changes depending on the type of task.

_Q. I have a task with a clear concept of a correct contribution. How do I collect the contributions on a paid platform?_

The pattern that has been repeatedly found to be effective in crowdsourcing is microtasking, which involves breaking down a task into the smallest possible unit of contribution, preferably so that each microtask does not require context-shifting (e.g. writing and editing would be two different tasks in a composition task).

Much focus in this dissertation was on the recoverable error around collection. Some basic rules can be inferred:

- Design task instructions to be short, with the key points highlighted: people skim and overlook details. Show examples of good or bad contributions.
- Detailed codebooks should be taught, not simply shown.
- If possible, forefront instructions with a dismissable window.
- Optional free-text feedback should be included to allow a manner for workers to communicate problems.

A number of practices can be also be recommended based on context:

- Collection mechanisms that may collect at different granularities are more reliable with less choices. For example, a rating scale can be unary (e.g. star, like), binary (e.g. thumbs up/thumps down), five-point, maybe even 100 points: each step up in complexity lowers intercoder reliability. 
- Scales should be anchored with text descriptions: labeling what each choice means.
- If the task is straightforward, performance feedback helps motivate middling workers. If it does not help, there may be instruction issues (i.e., a worker trying to do better cannot figure what they were not doing well).

_Q. I started collecting some test data and it doesn't look right (low agreement, doesn't match what I know is true, etc.). What's wrong?_

You can try to identify poor workers, as described in the chapter _Interpreting Tasks for Objective Needs_, and weigh them down or remove them altogether. As that chapter notes however, in many cases simply using consensus voting from multiple redundant workers smooths over poor workers. For tasks that do not lend themselves to majority selection, it is possible to conduct a second set of microtasks where workers explicitly choose the best option [see verify step of Find-Fix-Verify pattern in @bernstein_soylent_2010].

Before assuming poor workers it is important to consider other possibilities. Are instructions clear enough? Some more testing may be necessary. Are there any bugs in the interface (e.g. are some images failing to load), or are there outlier tasks that cannot be encoded (e.g. not providing a 'spam' or 'broken' option)? Worker feedback forms should be reviewed. Are there multiple possible ways to perform a task and you want a specific approach? A training task can help.

Finally, workers that are confused about a task or simply bad at it can be identified early; for relevance judgments, this study could identify a poor worker after the first item in a task set. This allows you to focus interventions where they are needed.

## Future Directions

\newthought{An array of new questions follow} from those answered in this dissertation.
Some relate to different contexts, practical implementations, or directions grazed but not directly measured.
Other new questions arise as next steps, now that we know more about the makeup of paid crowds and how their contributions may be guided through the collection interface implementation.

**Different contexts**. Applying the methods of this study to different contexts is the most pertinent direction forward.
How amenable is personalized crowdsourcing to other personalization tasks, like film recommendation, personal photo collection filtering, or comparison shopping? How effective are training intervention or performance feedback for activities such as transcription of historical letters, or other types of encoding beyond tagging? Where possible, this work tried to study multiple task types to get a better sense of how they react to different collection methods.
Now that there is a sense of what works when, more focused research can follow in alternate contexts.
For example, in the earlier example of transcribing historical correspondence, a first-task training condition would be promising for a collection of a single author's letters, but in a collection with a mixed of different people's writing, resources would be better spent on per-task training interventions.

**Cost**. One question that was not thoroughly explored in this dissertation is that of cost.
This is because the practical floor for payment is lower than what might be ethical to pay: you are usually paying more than you actually need to.
Some paid workers rely on the money from Mechanical Turk, so studies that push against the low end of payment in order to compare what methods are less costly are difficult to measure directly.
This dissertation looked at cost indirectly, focusing on indicators such a time spent on contribution and, in the case of personalized crowdsourcing, how the number of contributions needed changes in different contexts.
Future work might consider cost not in terms of how low contributions are, but how motivated workers are to continue after they have already been paid [similar to @harris_applying_2012; @mason_financial_2010].

**Targeted interventions**. This study found evidence of intervention efficacy and also noted that early success predicts long-term good workers. The natural next step is to study targeted interventions, specifically targeting workers that need them.

**Typology of contributors**. Studying post-collection indicators of worker quality hinted at different styles of contributor.
@bernstein_soylent_2010 speaks of lazy turkers and eager beavers, but there seem to be many different classes on contributor; e.g., those who skim over instructions^[_rtfmers_, as suggested by my advisor in earlier drafts of this document.], those who stick around as long as tasks are available, those who work slower and speed up, those whose attention drops over time.
A survey of different types of individuals was afield from this dissertation's focus, but would be a valuable future contribution.

**Contribution distributions**. The quantity that people contribute is another behavior worth studying.
In crowdsourcing, the contribution quantity usually follows a curve similar to the inverse power law (i.e., the second most active contributor provides half as many contributions of the most active, the third most active contributor provides 1/4 of the contributions, and so on).
However, while the drop-off is non-linear, the steepness of the curve varies between systems.
A large survey of contribution distributions and a comparison of how different approaches are able to extend the long tail or soften the curve is work that would further contextualize the experiments in this study.

**Long-term effects**. Finally, some of the more novel implementations -- such as the feedback design manipulation or the taste-grokking personalized crowdsourcing protocol -- should be studied in the future within the context of their novelty.
Are some of their effects propped up by the attention associated with 'something different', or do they continue with prolonged interactions?

## Conclusion

\newthought{Crowdsourcing is a promising approach} for teaching us more about the data in our information systems.
Volunteer crowdsourcing inherits various incentivization complexities, something that paid crowdsourcing is able to sidestep.
However, as this study shows, crowds still exhibit biases and economies of attention that can influence their contributions in unexpected ways and -- particularly concerning for practitioners -- unseen ways.

This is part of the territory for crowdsourcing - you benefit from the dynamism of actual humans, but gain it by exchanging some predictability.
Aggregating and cross-checking contributions helps in controlling against such issues, but there is also much to be done at little or minimal extra cost, both financial and human cost.
We discover some of these, including modified implementations of collection instruments and more thoughtful treatment of subjective content.

The primary contribution of this dissertation is in understanding when crowd collected data may be biased, and how to improve upon it.
Particularly, a non-adversarial approach is taken, for the most part, focusing on how changes come from the circumstances _around_ the contributor's context.
This does not mean that there are not good or bad contributions -- rather, by shifting focus to a parallel track, many of the methods describe here can be implemented alongside worker-centric quality control research.

As crowdsourcing matures as a concept and as a focus of research, it is important to remember that well-organized online crowds are individuals, operating differently from the single-minded, simplified 'crowds' described by @le_bon_crowd_1896.
Crowd individuals are capable and intelligent, but subject to the whims of attention and influence that we all are.

Jesse Shera once scolded that the computer "should neither be feared as a competitor nor condemned and ridiculed because it has not yet achieved the intellectual capabilities of the human being" [@shera_librarians_1967].
With crowdsourcing, we see an embrace of the computer as a collaborator, borrowing its efficiencies while turning to humans to assuage its intellectual faults.
The development of crowdsourcing has been fundamentally about the pairing of people with machines, insofar as the machines guide the connection between worker and worker, as well as worker and director.
It is a story of efficiencies: quicker connections between people, greater access through ubiquitous computing, improvements in modularizing tasks.
This work, concerned with raising the value of the individual contribution, contributes to this story: with improvements in designing crowdsourcing tasks and organizing special cases, the abstract and interpretive benefits of crowds can be tapped with fewer people, less uncertainty, and stronger outcomes.
