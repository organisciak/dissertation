Summary and Conclusion
=======================

Crowdsourcing presents a great deal of potential value to information science, in its ability to supplement existing metadata objects with new descriptive information, qualitative reactions, and different perspectives.
However, the benefits of contributions from self-selected amateur humans are also potential pitfalls.

To efficiently and reliably crowdsource descriptive metadata, one has to account for economies of attention, motivational concerns, subjective variations between contributors, misinterpretations and lack of expertise, and differing contributor contexts.

This dissertation focuses on particular area of crowdsourcing -- paid labor though crowd platforms -- and studies these issues as they relate to the quality of data contributed.
This is primary a study of data quality maximization: in what ways can crowdsourcing data be optimized, both before and during collection time, and in both objective and subjective contexts. _How do we control and interpret qualitative user contributions in a quantified system?_

There were three movements to this study.
First, a post-collection approach is taken to interpreting objective-normative tasks: what indicators exist that help us identify and use good contributions while excluding poor ones?
Sometimes, the way you ask affects what you receive, so next this study looks at objective tasks at the collection stage.
How does the implementation of the collection instrument improve or otherwise bias the collected contributions?
Following in this direction, this study finally shifts focus to the implementation of subjective tasks, ones that do not have a concept of correctness except in relation to who they are collected for.

What are the properties of data collected from paid crowds for objective and subjective information system tasks, and how can the quality of data -- in terms of consistency and variance -- be optimized? We addressed this motivating question through three broad research questions.

> __Broad Research Question 1__: What are the _post-collection_ indicators of quality in worker-contributed objective task data, and can these be leveraged for improved data modelling?

In _Interpreting Objective Tasks for Paid Crowdsourcing_, time, experience, and agreement were studied as potential indicators of quality in already collected data.

One of the primary findings of this chapter was that for low-granularity tasks such as information retrieval relevance judgments over short documents, crowd quality is not of much concern.
Worker agreement was found to be a notable indicator of quality; however, using this to score workers and weigh their contributions upward or downward was overengineering: a simple majority voting approach worked nearly as well.

Experience was not found to be an indicator of quality, perhaps because the task type that was studied only had about a two-task learning curve.
One of the benefits of this null finding is that it simplifies further study of similar tasks, because blocking conditions by number of tasks completed does not appear necessary.

Finally, the amount of time taken by workers was not found to be significant, except for the first task of task set.
Exploring the possibility that this to be due to time spent in reading instructions, the measurement of which was confounded with the first task, it was found the otherwise identical workers in their contribution habits could have their eventual performance predicted simple based on the time the spend on the outset of the first task and whether they classify it correctly.

Since poor workers in this class were not exhibiting profit-optimizing behaviours, this finding suggests that interventions during collection time might assist in course-correcting workers -- leading to the next research question.

> __RQ 2__: What are the biases inherent to the task design for objective or non-normative tasks (i.e. the data collection instrument), and can design manipulations correct for them at _collection time_?

In _Designing Tasks for Objective Needs_, this work moved past an immutable treatment of contributions and looks at how contribution quality can be influenced at collection-time.

This chapter explored the design space, exploding the different task parameterization possibilities and considering possible design manipulations.
Three manipulations were then pursued in practice: a training interface (in both close interaction first-taskset parameterizations and a less involved per-taskset 
approach), a performance feedback intervention, and a speed-encouraging time-limited interface.
Of these, training and performance feedback improved the quality of contributions over a best practices baseline.

Initial interaction training was found to be effective for a task where the best practices are not conditioned on an extra variable.
Whereas the results were not significant for relevance judgments, where subsequent tasks may be for different queries than the training set, it showed considerable promise for tagging tasks.

An alternate training condition was attempted for relevance judgments, which fore-fronted the task instructions with a modal window, one requiring an explicit input to move past, and presented the instructions with strong examples of what each type of judgment would look like.
This condition resulted in more time spent on understanding the codebook and, confirming the suggestion from earlier, subsequently strong gains in performance.

These findings support, to the extent of the types of tasks collected, the assumption that crowd contribution quality is as much a responsibility of requesters as it is of the crowd.
More to the point, they show that there are ways of improving results at no extra collection cost.
This makes it an asset for practical implementations, and exploring alternative forms of design manipulations and interventions is worthy of further study.

Tying together the preceded two chapters, a small study was next conducted on the low inter-grader reliability of audio similarity judgments for music information retrieval.
Correcting the existing data was not found to be effective, but increasing the redundant contribution count and redesigning the collection interface to anchor the categories was able to account for a significant portion of the inter-grader error.

Part of this chapter focused on the problem of contributor subjectivity. Despite being performed by trusted contributions, the subjectivity of audio similarity judgment tasks confounded their normative use for system evaluation.

> __RQ 3__: What are the quality losses when treating non-normative tasks in objective ways, and can collection-time framing or post-collection modeling approaches reduce these?

_Designing Tasks for Subjective Needs_ again focused on maximizing quality through a priori design and instrumentation choices this pursued in the context of subjective tasks.
Focusing on a setting of on-demand personalization, it introduced two approaches.
The first was a collection-time design choice, _taste-grokking_, where workers were asked to infer the needs of a target user.
The second was a post-collection modeling choice, _taste-matching_, where workers were profiled on their preferences, matched to users, and their contributions used to personalize for matched users.

Both approaches improved over an unpersonalized baseline.
Taste-matching was strong in contexts whether the factors affecting a person's tasks were more complex or latent, but in simple contexts taste-grokking performed better and resulted in more satisfied workers.

\newthought{Crowdsourcing is a promising approach} for teaching us more about the data in our information systems.
Volunteer crowdsourcing inherits various complexities of motivation, something that paid crowdsourcing is able to sidestep.
However, as this study showed, there are still biases and 
