Conclusion
=============

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

- __Broad Research Question 1__: What are the _post-collection_ indicators of quality in worker-contributed objective task data, and can these be leveraged for improved data modelling?

In _Interpreting Objective Tasks for Paid Crowdsourcing_, time, experience, and agreement were studied as potential indicators of quality in stu

TODO






- __RQ 2__: What are the biases inherent to the task design for objective or non-normative tasks (i.e. the data collection instrument), and can design manipulations correct for them at _collection time_? ^[Reported in both parts of Chapter 5.]

- __RQ 3__: What are the quality losses when treating non-normative tasks in objective ways, and can collection-time framing or post-collection modeling approaches reduce these? ^[Reported in Chapter 6.]

Though in each chapter there are concrete solutions proposed and evaluated, the first step of each research question is to understand the scope of the problem.
Regardless of implementation, this dissertation's _pertinent and valuable contribution_ is in understanding some ways that crowdsourced data may have unexpected and perhaps overlooked variance, bias, and low-consistency.

\newthought{Before conducting our own experiments}, Chapters 2 and 3 present an in-depth look at crowdsourcing.

Chapter 2 presents a brief overview of crowdsourcing.
One can consider this chapter the seed of what might be taught in the first two weeks of a course on crowdsourcing.

Chapter 3 then presents an information-science typology of crowdsourcing, a necessity for appreciating the expansive area of crowdsourcing and this study's particular scoping.
Both of these chapters are general, and literature reviews pertinent to the experiments in this study are reported in the relevant research chapters.

\newthought{Chapter 4 applies a post-collection lens to crowdsourcing error}, looking to identify and promote high-quality contributions from strong contributors, while adjusting for poor work.

The chapter is largely analytical, hoping to understand what we can infer from crowd behaviors about the strength of their contributions and evaluating strategies for better paid crowdsourcing.
By taking this approach, this chapter seeds some the expected outcomes driving later chapters.

The questions this chapter asks are the following:

 - __RQ 1.1__: Do worker contributions improve predictably with experience?
 - __RQ 1.2__: Does the length of time that a worker spends on a question reflect the quality of their rating?
 - __RQ 1.3__: Does a worker's agreement or disagreement with other workers reflect their overall quality as a worker?
 - __RQ 1.4__: If so, can disagreement be used for data improvements?

\newthought{Considering the data quality of crowdsourcing} as an immutable set of contributions is an important avenue toward properly analyzing and controlling  crowd data, and also pays proper reverence toward a popular stream of crowdsourcing research.

However, in many circumstances, contributions are _not_ a hallowed set of data, bestowed upon a researcher to work with.
They are collected, and as such the _way they are collected_ can change what they look like at the end.
Chapter 5 turns our attention toward this less-explored corollary of post-collection data modelling: the effect of the collection instrument on the resultant contributions, toward understanding and potentially optimizing the contribution collection process.
This is about how you ask, and how it affects what you are told.

Chapter 5 is presented in two parts, both studies conducted for this dissertation, one published previously and one presenting work for the first time.

The first part (5.1) selects two control tasks, and measures the effect of three different design manipulations on the makeup of the data -- consistency and quality, but also contribution patterns.
Looking at interfaces that give users training, performance feedback, or timer-driven nudges, it asks:
<!--These design manipulations are looked at again over a subjective context in Chapter 6.-->

 * __RQ 2.1__: Which approaches to collection interface design are worth pursuing as alternatives to the basic designs commonly employed in paid crowdsourcing?

 * __RQ 2.2__: Is there a significant difference in the quality, reliability, and consistency of crowd contributions for the same task collected through different collection interfaces?

 * __RQ 2.3__: Is there a qualitative difference in contributor satisfaction across different interfaces for the same task?

 * __RQ 2.4__: Do the findings generalize to different tasks, task types, and contexts (i.e. outside of paid platforms)?

The second part of Chapter 5 (5.2) bridges chapters 4 and 5 in a real world setting, applying post-collection corrections as well as collection-time task manipulations to the human judgments used in evaluating audio similarity for the Music Information Retrieval Exchange (MIREX).
Finding the inter-grader consistency to be very low, this small chapters asks:

 - __RQ 2.5__: Are grader differences responsible for low inter-grader consistency in MIREX judgments?
 - __RQ 2.6__: Are problem graders responsible for low inter-grader consistency?
 - __RQ 2.7__: Is subjectivity or disagreement of the grading task responsible for low inter-grader consistency?
 - __RQ 2.8__: Does the task design affect the quality of contributions?

\newthought{Chapter 6 focuses on completing subjective tasks} through paid crowdsourcing, again focusing on maximizing quality through a priori design and instrumentation choices.
Subjective tasks are rarely done in paid contexts, so _personalized crowdsourcing_ is introduced as a way to formalize and argue for the approach.
Two protocols for personalized crowdsourcing are then presented, referred to as _taste-matching_ and _taste-grokking_, and compared.

<!-- Reminder: update any changes here and in the actual chapter -->

 - __RQ 3.1__: Is it feasible to apply paid crowdsourcing to subjective problems?
 - __RQ3.2__: Does the taste-matching protocol reduce the amount of error in personalized crowdsourcing?
 - __RQ 3.3__: Does the taste-grokking protocol reduce the amount of error in personalized crowdsourcing?
 - __RQ 3.4__: How do different types of subjective tasks affect the efficacy of personalized crowdsourcing approaches?
 <!-- - __RQ 3.5__: How do task design manipulations affect the quality of crowd contributions?-->

### Goal

The goal of this work is to leave you, the reader, with an understanding of how online crowds can reliably generate metadata about information system objects, both for subjective or objective ends.
The main contribution of this study is _methodological_: understanding issues related to proper -- or improper -- crowdsourcing in information sciences.
It is written in the service of uncovering issues and answering them thoroughly, where a reader may develop realistic expectations or hypotheses for tasks beyond the tasks used for this study's experiments.

A reader of this work will understand:

 * the issues related to using crowdsourcing contributions for improving document metadata, particularly for information retrieval indexing and evaluation, and user-based filtering or recommendation;
 * the effect of different designs of crowdsourcing collection tasks on the resulting reliability and consistency of the collected data, particularly designs that train workers, give them feedback, or hurry them;
 * sources of contributor-specific error in information retrieval evaluation tasks; and
 * how these findings may assist future working in information science and cultural heritage.
