Introduction
==============

\newthought{The internet} is growing increasingly interactive as it matures.
Rather than merely transmitting information to readers, web pages allow their audience to react and interact with their information.
The products of these interactions are a trove of qualitative judgments, valuable to modeling information objects.
In recent years, this form of creation-through-collaboration has been studied as _crowdsourcing_.

\marginnote{In the style of modern mass communications, this work described in under 140 characters:
\em{Maximizing data quality in using paid crowds for objective and subjective encoding tasks} }

There are many circumstances where access to human encoding and human judgments is invaluable to information science, whether it is in transcribing scanned material, organizing or judging the quality of documents within a collection, building evaluation datasets for information retrieval, or preparing training data for better inferential algorithms.
People can provide latent information about documents that would not be possible to ascertain computationally, such as quality judgments or higher-level thematic description.
They are also adept at critical actions such as correcting, describing in different language, or inferring relationships with other documents.
Most importantly, crowdsourcing looks at human contribution at scales that are difficult to attain in alternate ways.

<!-- Broad Research Question --><!--TODO add sidenote about Broad research Questions-->
\newthought{However, humans have predictable and unpredictable biases} that make it difficult to systematically adopt their contributions in an information system.
_How do we control and interpret qualitative user contributions in a quantified system?_

This work focuses on understanding the characteristics of data collected through crowdsourcing, toward two ends: awareness of potentially unanticipated biases in crowd data collection, and ways to improve the quality of crowd-collected data.
As will be demonstrated, crowdsourcing research is sensitive to various circumstances of instrumentation, context, and community.
This work seeks to _understand_ the intricacies of these biases: looking at how tasks are completed when they are more or less engaging, restrictive, or subjective.
Valid research needs to be aware of how circumstance affects crowds, as well as know what information is important to report for reproducibility.
Understanding leads to practical recommendations for maximizing data quality in crowdsourced data, and this study focuses on a priori instrumentation choices and posterior data normalization for improving how both subjective and objective tasks are collected.

<!-- Scoping -->

\newthought{This work is scoped} to a particular type of crowd production -- metadata about existing information objects -- and a particular form of collection: microtasks in paid crowd platforms.
These are viewed in the space of subjective and objective types of tasks.

It is important to stay aware of the broader space of crowdsourcing and how characteristics of paid microtasks generalize to it.
However, as the typology presented in _Chapter 3_ makes clear, crowdsourcing is a broad expanse; the treatment here is controlled to a subset pertinent to information science research.

Details of each part of this scope will follow -- crowdsourcing metadata, microtasks, paid crowd platforms, and subjective/objective crowdsourcing -- but it is important to understand why it matters first.

## Problem

The growth of digital collections has outpaced the ability to comprehensively clean, transcribe, and annotate them.
Similar roadblocks are affecting born-digital information, where the rapid creation of documents often follows from passive or unrestricted forms of production.
The lack of strong descriptive metadata poses an obstacle for information retrieval, which must infer the aboutness of a document in order to surface it for an interested user.
Crowdsourcing is increasingly being used to address this problem.

Crowdsourcing is the distributed, large-scale collaboration of users contributing to a common product.
It describes the _act_[^CrowdVerb] of a system opening up for contributions from distributed users.
Users do not necessarily collaborate directly with each other -- though they can -- so the crowd in the term refers broadly to the collective users of the system.

[^CrowdVerb]: Crowdsourcing as a verb is a technical point worth noting. Sourcing describes the act of soliciting user contribution, regardless of whether it is successfully executed or not.

It is an umbrella term preceded by a number of more narrowly scoped concepts, such as
commons-based peer production [@benkler_wealth_2006],
open source software development [@raymond_cathedral_1999; @lakhani_how_2003],
and human computation [@von_ahn_games_2006; @law_human_2011].<!--_-->
Surowiecki discussed aggregate crowd intelligence as the ‘wisdom of the crowds’ [~@surowiecki_wisdom_2004]; one way to interpret crowdsourcing is _the process of trying to utilize that wisdom_.

Many of the benefits of crowdsourcing follow from the fact that humans approach tasks in qualitative and abstract ways that are difficult to emulate algorithmically.
A human can respond to complex questions on a Q&A website, judge the quality of a restaurant/product/film, or decipher a sloppy piece of handwriting.

Since many information systems are intended to serve an information-seeking user, the information that crowdsourcing collects can better reflect the needs of users.
For example, a user-tagged image in a museum collection can fill in terms that are more colloquial than the formal vocabulary employed by a cataloguer [@springer_for_2008; @trant_investigating_2006].
Such information is invaluable in indexing items for information retrieval, where the goal is commonly to infer what a user is searching from their textual attempt to describe it in a query.

Similarly, other uses of crowdsourcing capitalize on humans' abilities to spot when algorithmic attempts at understanding an information object have failed.
ReCaptcha uses human contributions to transcribe transcriptions of OCR problem text from Google Books and the New York Times [@_what_]
The National Library of Australia's Trove also crowdsources corrections of scanned text, by allowing readers of their scanned newspapers to edit transcribed text when they come across problems [@holley_many_2009].

Humans are also being used to encode parseable text descriptions for non-text materials or higher-level latent concepts.
In libraries, this approach is being adopted with crowd transcription of materials which are too difficult for computer vision, such as digitized letters.
For example, the Bentham Project at University College London has a pilot project for crowdsourcing the transcription of Jeremy Bentham’s letters [@moyle_manuscript_2010; @causer_transcription_2012].

More than typical description, additional useful information can be reactionary or critical.
Indexing human judgments of a document's quality, for example, can enable an information retrieval system to rank the best version of multiple similar documents.^[TODO citation]

While the complex qualitative actions of human contributions are the cornerstone of such contributions' usefulness, they present a challenge for algorithmic use because they can be highly variable.

A task becomes more open to interpretation the more complex it becomes.
Some projects revel in the broad interpretive nature of complex tasks.
We see large art projects like Star Wars Uncut^[http://www.starwarsuncut.com/] embrace the quirkiness of humans, where hundred of people re-filmed small snippets of Star Wars in a charming hodgepodge of styles.
Coding challenges, like those seen on TopCode^[https://www.topcoder.com/], also are interesting for the widely varying ways that a programming language allows you to express a problem.

However, in cases where there is a goal to find either an objective truth, manifest or latent, or to gauge the subjective approaches and opinions of people in a comparable way, the breadth of interpretations possible for a task presents a problem for reliably understanding it in aggregate.

The variability seen in human interpretations of complex tasks is not a novel issue.
It is a problem that we call low _intercoder reliability_, and can result from a variety of issues.
Four 'threats to reliability' that @neuendorf_content_2002 lists echo issues in crowdsourcing document description: an insufficient coding scheme, inadequate training, fatigue, and problem coders.

\newthought{How do you account} for the variability of human contributions in leveraging online crowds? This study looks to understand the threats to reliability in the context of paid crowdsourcing, in three spaces: error introduced by contributors (e.g. problem coders), error owing to the external factors (e.g. an insufficient coding scheme, inadequate training), and error owing to the task (i.e. subjective or non-normative tasks treated objectively).

## Overview

What are the properties of data collected from paid crowds for objective and subjective information system tasks, and how can the quality of data -- in terms of consistency and variance -- be optimized?

Each research chapter turns the lens on a piece of this question.
The broad research questions informing the chapters are as follows:

- __Broad Research Question 1__: What are the _post-collection_ indicators of quality in worker-contributed objective task data, and can these be leveraged for improved data modelling? ^[Reported in Chapter 4, with an additional approach comprising part of Chapter 5.2.]

- __RQ 2__: What are the biases inherent to the task design for objective or non-normative tasks (i.e. the data collection instrument), and can design manipulations correct for them at _collection time_? ^[Reported in both parts of Chapter 5.]

- __RQ 3__: What are the quality losses when treating non-normative tasks in objective ways, and can collection-time framing or post-collection modeling approaches reduce these? ^[Reported in Chapter 6.]

Though in each chapter there are concrete solutions proposed and evaluated, the first step of each research question is to understand the scope of the problem.
Regardless of implementation, this dissertation's _pertinent and valuable contribution_ is in understanding some of the ways that crowdsourced data may have unexpected and perhaps overlooked variance, bias, and low-consistency.

\newthought{Before conducting our own experiments}, Chapters 2 and 3 present a in-depth look at crowdsourcing.

Chapter 2 presents a brief overview of crowdsourcing.
One can can consider this chapter the seed of what might be taught in the first two weeks of a course on crowdsourcing.

Chapter 3 then presents an information-science typology of crowdsourcing, a necessity for appreciating the expansive area of crowdsourcing and this study's particular scoping.
Both of these chapters are general, and literature reviews pertinent to the experiments in this study are reported in the relevant research chapters.

\newthought{Chapter 4 applies a post-collection lens to crowdsourcing error}, looking to identify and promote high-quality contributions from strong contributors, while adjusting for poor work.

The chapter is largely analytical, hoping to understand what we can infer from crowd behaviors about the strength of their contributions and evaluating what strategies are promising for better paid crowdsourcing.
By taking this approach, this chapter seeds some of the expected outcomes driving later chapters.

The questions this chapter asks are the following:

 - __RQ 1.1__: Do worker contributions improve with experience in a predictable way?
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
<!--TODO Finally, the design manipulations evaluated in Chapter 4 are evaluated in personalized crowdsourcing.-->

<!-- Reminder: update any changes here and in the actual chapter -->

 - __RQ 3.1__: Is it feasible to apply paid crowdsourcing to subjective problems?
 - __RQ3.2__: Does the taste-matching protocol reduce the amount of error in personalized crowdsourcing?
 - __RQ 3.3__: Does the taste-grokking protocol reduce the amount of error in personalized crowdsourcing?
 - __RQ 3.4__: How do different types of subjective tasks affect the efficacy of personalized crowdsourcing approaches?
 <!-- - __RQ 3.5__: How do task design manipulations affect the quality of crowd contributions?-->

### Goal

The goal of this work is to leave you, the reader, with an understanding of how online crowds can reliably generate metadata about information system objects, both for subjective or objective ends.
The main contribution of this study is _methodological_: understanding issues related to proper -- or improper -- crowdsourcing in information sciences.
It is written in the service of uncovering issues and answering them in a thorough manner, where a reader may develop realistic expectations or hypotheses for tasks beyond the tasks used for this study's experiments.

A reader of this work will understand:

 * the issues related to using crowdsourcing contributions for improving document metadata, particularly for information retrieval indexing and evaluation, and user-based filtering or recommendation;
 * the effect of different designs of crowdsourcing collection tasks on the resulting reliability and consistency of the collected data, particularly designs that train workers, give them feedback, or hurry them;
 * sources of contributor-specific error in information retrieval evaluation tasks; and
 * how these findings may assist future working in information science and cultural heritage.


## Scope

As mentioned at the outset, this work focuses on a particular, but pertinent, corner of crowdsourcing.
The form of crowd production studied is metadata about existing work, and the type of collection is microtasks in paid crowd platforms.
Both subjective and objective types of tasks are considered, however, given that they manifest very distinctly.
Let's consider each of these parts in order.

_Metadata about existing work_: an important albeit rarely formalized distinction in crowdsourcing contributions is whether the crowd _creates_ new intellectual works, or whether they _react_ to existing information objections. Generally, the uses of crowdsourcing of interest to information scientists, librarians, and information retrieval researchers are in the latter category.

_Paid crowdsourcing_: Paid crowdsourcing platforms are markets for on-demand online labour.
They reduce much of the overhead seen in volunteer crowdsourcing related to attracting and motivating users, replacing intrinsic motivation with financial incentive.
The most popular paid platform platform is Amazon's Mechanical Turk, which also happens to be one of the first such platforms and the one used to run experiments in this study.

_Microtasks:_ Microtasking refers to the common practice of breaking tasks down to small practical units, which both simplifies the task distribution process in a Fordist style and accommodates the short interaction style that is common online.
 For example, consider a task where you are transcribing and annotating the themes in scanned correspondence: rather than asking workers to do everything in one task, there may be a set of tasks to transcribe the text, another set of tasks to annotate the themes of the text, and a final set of tasks to check for errors.
 Breaking a task into microtasks prevents workers from too much context switching [@_guidelines_2014], making it easier to short, on-demand interaction and making it easier to find errors.

Microtasks are often associated with paid platforms, where interactions are generally shorter than in volunteer crowdsourcing contexts. In fact, paid platforms are sometimes called "microtask markets" [e.g. @kittur_crowdsourcing_2008; @ambati_towards_2011], although this is a misnomer given that they are not inherently or necessarily based on microtasks, nor is microtasking unique to paid contexts.

_Objective-Subjective contexts_:
  Objective tasks assume the existence of a universal ground truth, while subjective tasks have truth relative to different individuals.
  This works start off looking at objective contexts, which are less complicated to study. In Part 2 of Chapter 5, a study of poor intercoder reliability in music information retrieval evaluation is found to be due, at least partially, to the task being quite subjective. Following this, Chapter 6 looks at how tasks that are known to be subjective can be performed on paid platforms. 
  An intermediate category is considered in this study, that of _normative_ tasks: ones that do not have a factual 'truth' but have an expectation of an agreed-upon truth.

The experiments in this work general follow this scoping. While I will aim to discuss broader generalizations to other forms of crowdsourcing, like volunteer-driven crowdsourcing (e.g. Wikipedia), this will follow from secondary sources and not original research.

Chapter 3 provides a more thorough language for understanding these subclasses, through an Information Science-centric crowdsourcing typology.

## Relevance

The contribution of this work is in the application of corrective techniques to the crowd-based encoding of metadata about existing information objects, and the broader understanding of the nature of such contributions.

There are many ways to apply a lens to such research.
This study reflects my own field of information retrieval, and more broadly in information science.

\newthought{Information science deals with representation} of information objects, an area where crowdsourcing holds tremendous potential as a tool for item description.

By way of example, consider crowd curation.
In the presence of large collections of information objects, information-seeking and discovery can be aided by user-curated lists of thematically-similar objects.
Sites like Amazon^[https://www.amazon.com. The online store includes a curated feature called "Listmania Lists", one of a series of crowdsourcing features they refer to as the "Amazon Community". Others include customer reviews, customer communities, a pre-release review program, customer images, and the similar "So You'd Like to.." guides.], LibraryThing^[https://www.librarything.com/. A community for 'book lovers' that includes a curated 'Lists" feature for books. Other crowdsourcing features include member recommendations, tagging, and rating.] and the new Delicious^[TODO: change this example. This site seems to have been redesigned since last year] let people create lists of products, books, and websites, respectively.
The themes binding the lists are also user-defined, so a list can be about
 quality (e.g. "favorites", "worst of"),
 thematic (e.g. "teen vampire romance novels"),
 or administrative (e.g. "to buy", "read this year").
This crowdsourced information is useful to users directly, but it also provides high-quality information for understanding the content in a collection and its relationship to other materials.

Inversely, a well-designed system can make use of the additional user-supplied information on co-occuring objects. This in turn can return value to users curating the content themselves: consider a system that can discover further items for a user that are thematically in line with a group that they have compiled.

New Online Public Access Catalogues (OPACs) are also giving users the ability to classify and curate content, connecting to user habits that are commonly associated with public libraries.
For example, BiblioCommons -- deployed at many library systems in North America, including the New York Public Library -- positions list-making as a “curated topic guide,” a way to “share your expertise with others” [@_lists_].
According to one study of social OPACs, the list feature in BiblioCommons is heavily used, many times greater than commenting and more than ratings [@spiteri_social_2011].

Similarly, cultural heritage collections have reported past success in using crowd contributions for increasing discoverability to content, improving metadata quality, or even contributing to item description.
For example, after a pilot partnership with Flickr, the Library of Congress implemented a workflow for review public comments on images for research or information to integrate back into item records [@springer_for_2008].

Crowd curation is just one example of a use of crowdsourcing to create information.
Table @tbl:crowd_actions shows a number of different actions that have been observed for collecting metadata.

--------------------------------------------------------------------------------------------
           Action            Examples
---------------------------- ---------------------------------------------------------------
           Rating            Rating helpfulness of online comments or reviews (e.g. Amazon),
                             rating the quality of online content (e.g. items on Youtube,
                             Netflix, LibraryThing, etc)

Classification / Curation    tagging (e.g. Delicious), labeling, adding to lists

   Saving / Recommending     Starring, liking/recommending (i.e. Facebook), adding to
                             favourites (e.g. Flickr)

         Editing             Translations (e.g. Facebook), Corrections (e.g. National
                             Library of Australia)

         Feedback            Marking online comments as inappropriate (e.g. ABC News),
                             “Did you find this helpful?” (e.g. Edmunds)

          Other              Commenting, sharing, encoding

--------------------------------------------------------------------------------------------

Table: Types of metadata contribution activities often seen in crowdsourcing. {#tbl:crowd_actions}

The desires of the contributor do not necessarily have to align with the needs of the system or the requester of the contributions. At the most basic level, a contributor may be a paid worker, where their motivation is simply to earn some money or pass the time. Other times, a contributer may contribute because of an interest in the topic, some form or personal benefit, or even as an altruistic time-killer. Table @tbl:user_system shows how some commonly observed forms of contributions may mean different things to the contributor or the collecting system.

--------------------------------------------------------------------------------------------
     Action              Contributor Use                        System Use
------------------------ ------------------------------- -----------------------------------
Tagging a photo /        Easy personal retrieval,        Improved search, improved browsing
bookmark                 appeal of collecting,
                         item grouping for easy sharing

Rating an product        Sharing opinion                 improved recommendations,
                                                         prioritize good values

Rating a digitally       sharing opinion, communicating  Identifying and promoting quality
digested item i.e.       approval
video, Comment

Flagging content         cleaning windows for the        Higher signal-to-noise in editorial
                         community, catharsis            maintenance

Starring                 communicating approval,         Identifying quality content
                         saving for future reference

Sharing                  showing items to friends,       Identifying popular/interesting
                         referring or curating content   content

Feedback                 sharing personal knowledge and  Correct problem data, discover system
                         opinions, altruism              issues

--------------------------------------------------------------------------------------------

Table: Chart comparing contributor and system uses for a selection of crowdsourcing actions {#tbl:user_system}

<!--TODO1: add citations whenever poddssible, -->

\newthought{While crowdsourcing has shown itself as a useful method} for enriching information objects, there remains the question of how the method of collection affects the way the data can be used.
Contributors are self-selected and often without verified reliability, training or expertise.
Agreement is sometimes a useful metric for objective information, but sometimes there is meaning in disagreement, such as in collaborative filtering.

Variance that exists between different contributors adds noise both to tasks that make a subjective assumption and tasks that make an objective assumption.

In subjective tasks, it is assumed that there is no universally correct form of contribution.
For example, when crowd contributions are used to inform recommendations, such as for music or film, it often assumed that different types of people enjoy different products.
We thus see approaches to recommendation such as collaborative filtering, where users are matched to similar users based on the overlap between their tastes rather than a global definition of 'good' or 'bad' products.
In such a case, inter-rater consistency is still important, to make it possible to identify similar users.
Modern approaches to collaborative filtering commonly normalize ratings against
 a user-specific bias (i.e. "how does this rating compare this user's average rating") and sometimes against
 an item-specific bias (i.e. "how does this rating compare to what the rest of the community thinks about the item").

For objective tasks, @neuendorf_content_2002 differentiates between two types: manifest and latent.

In a simplified comparison, tasks with manifest content are ones where there is a clear correct contribution.
Correcting or transcribing text from a scanned image would be grouped in the category.

In contrast, latent tasks are assumed to have a theoretical truth, but one that is not outwardly stated.
When a person tags a photograph with a free-text label or a worker classifies the sentiment of an opinionated tweet, they are interpreting the content.
As @neuendorf_content_2002 notes, "objectivity is a much tougher criterion to achieve with latent than with manifest variables".

## Key concepts

Before proceeding, the terminology of this study should be established. As this work spans multiple domains, and makes reference to recently introduced concepts, it is important to establish a shared understanding of language within these pages.

Note that the treatment here is cursory; a more in-depth look is available in chapters 2 and 3.

\newthought{Descriptive crowdsourcing} is a shorthand that used in this study to refer to crowdsourcing of descriptive metadata.

The distinction here is that the human contributions are reactive.
There is an information object that already exists, and crowdsourcing workers add information about it.
The response can be subjective, such as ratings or interpretations, or objective, such as descriptions or corrections.

Crowdsourcing descriptive metadata stands in contrast to crowdsourcing that _creates_, introducing new information objects into the world.
One example of this is T-shirt design contests on Threadless[^1].

[^1]: http://www.threadless.com

This approach to crowdsourcing was looked at in @organisciak_incidental_2013 when defining the concept of _incidental crowdsourcing_.
Incidental crowdsourcing is an approach to crowdsourcing that is unobtrusive and non-critical.
This form of peripheral collection of data was noted to favour descriptive activities.

\newthought{Human computation} is a separate but closely related concept to crowdsourcing.
It refers to activities where humans perform work in a paradigm reminiscent to computing, and which could conceivably one day be done by computers [@law_human_2011; @quinn_human_2011].
Human computation does not need to be crowdsourced, but many such tasks benefit from crowdsourcing.
Likewise, while there are many creative crowdsourcing tasks, such as writing or commenting, human computation represents a large portion of the types of crowdsourcing seen in the wild.

Most of the experiments in this study fall into the paradigm of human computation: collecting relevance judgments for information retrieval research (Chapters 4 and 5), collecting descriptive labels (tags) of images on image-sharing social network Pinterest (Chapter 5), collecting judgments of how similar songs are for music information retrieval evaluation (Chapter 5-2), and collecting opinion judgments of products and food for the purpose or recommendation (Chapter 6).

\newthought{Worker, volunteer, contributor:} there are many labels for people within the crowd.
The space of crowdsourcing is large and the incentives for contributors are varied.
The most significant distinction within crowdsourcing is in comparing uses that pay their contributors and those that do not.
It's valuable to make this distinction because paying a person changes they way that they perform, while also simplifying some of the incentive concerns that are necessary in retaining volunteers.

In general, crowd individuals are referred to here as _contributors_.
When the distinction is necessary, paid contributors are referred to as _workers_, while elective contributions are made by _volunteers_.
The former is used more commonly because more of the work in this study is paid.

\newthought{In discussing 'data quality', intercoder reliability, consistency, and variance} are the primary measures used.

Intercoder reliability refers to the "extent to which two or more independent coders agree" [@lavrakas_intercoder_2008], and usually is used to refer to the ability of a collection method to measure what needs to be measured. An example of low reliability would be if two raters have the same opinion for a question, for example "is this a good tag for this image", but they choose different values on a five-point scale to register that opinion.

It is important to consider the trade-offs of intercoder reliability.
In crowdsourcing, increasing intercoder reliability is sometimes at odds with the collection strategy.
The most effective crowdsourcing deals with large numbers of people, and part of maximizing the involvement of contributors, especially those which are volunteers or self-selected workers, is to minimize the restrictions on a contribution.
Whereas reliability can be increase by strictly enforcing a strong coding scheme or vigorously training contributors, it is also likely to reduce the number of individuals willing to perform the task.
Whether the improvements in quality are worth the losses in contributions will be considered during this study.

Other times, controlling the circumstances under which the contribution is created is not possible, such as in information retrieval over web documents.
For tasks where the contribution is numeric and ordinally or continuously coded, methods exist for interpreting when coders are similar but operating with different frame.
These include using covariation instead of agreement [@neuendorf_content_2002], and normalizing by a user mean [@hofmann_latent_2004; @bell_bellkor_2008].

A related concept is that of variance, which refers to how much measurements deviate. High variance means that many measurements of the same thing will vary quite a bit.
Variance has this conceptual meaning, and it has a statistical meaning. 
Generally in this study, variance will not be used in the statistical sense; instead, the standard deviation will be used (root of the variance) or root-mean-squared-error (similar to standard deviation in most circumstances).
Instead, variance is used in this study to refer broadly to varying measurements, including circumstances that do not fit into the statistical definition; e.g. "how much or how little the tagging vocabulary expands when new workers tag an image."


## Chapter Outline

The following dissertation is organized into seven chapters:
  three chapters contextualizing this dissertation and crowdsourcing in general,
  three chapters contributing original research,
  and a concluding chapter to tie it all together.

The next chapter, _Chapter 2_, provides a general overview of crowdsourcing.
Here, a reader less familiar with the history and significant general research in the area will be introduced to them.
  Chapter 2 presents what would amount to the first few weeks of an introductory crowdsourcing course.
  _Chapter 3_ subsequently provides a typology of crowdsourcing, tailored to understanding the breadth of online crowd systems through an information science lens.
  As in the previous chapter, the typology is general, intended to provide a language for speaking about crowdsourcing in the reset of the dissertation.

_Chapter 4_ looks into the interpretation of already collected objective or normative data from paid crowd tasks.
Particularly, this chapter focuses on methods to remove data variance and user noise. Post-hoc data corrections and problem contributor identification has been studied from numerous angles, so Chapter 4 is careful to present past work.
In addition, a study on the sources of error in crowdsourced information retrieval relevance judgments is presented, looking at the problem from the contexts of agreement, experience, and temporality.

_Chapter 5_ delves into the design of objective or normative tasks for paid crowdsourcing.
This is one of the most common uses of crowds, to collect or encode information with a ground truth or deriving a consensus.
Designing tasks that adequately motivate contributors and which collect the information that a requester thinks that are collecting is an important but often overlooked part of crowdsourcing.

Presented in this chapter are three studies that ask, _how does crowdsourcing task design affect the resulting data?_

First, a small study tracks the differences in product rating habits by users of two differently designed systems. In that given example, the distribution of ratings shifts between the two systems, and the possible design reasons for this difference are discussed.

Secondly, a new set of experiments directly compares the effect of design manipulations in a paid crowdsourcing platform. The same two tasks - an image retrieval relevance task and an image tagging task - are presented in drastically different ways, the designs motivated by incomplete or peripheral observations of past studies.

Finally, a study of paid music similarity judgments is presented, which finds systematic problems in the consistency of ground truth for a task of the Music Information Retrieval Exchange attributable to task design concerns.
Because the finding of this study bridge well into the later look at subjective crowdsourcing, this study is presented as a standalone half-chapter.

The final research chapter, _Chapter 6_, shifts the focus to subjective crowdsourcing.
While paid crowdsourcing is often applied to objective or normative goals, this chapter asks how collection-time strategies can improve the quality of contributions where the task goals are conditioned on a specific person's tastes or needs.
Building on work developed by @organisciak_personalized_2013, we present methods to perform subjective crowdsourcing for on-demand personalization, showing it to be feasible for our evaluated settings. Following from the earlier study on the effect of design manipulations for objective tasks, this chapter also studies the influence of task design changes in how crowds contribute using one of our subjective crowdsourcing protocols, taste-grokking.

## Summary of Findings

TODO (or TODO remove?)

<!--
- CHAPTER 1: Introduction
  - Overview
  - Scope: Maximizing "understanding" data quality of information collected through paid crowdsourcing
  - Research questions
  - brief summary of findings
- CHAPTER 2: Brief Overview of Crowdsourcing (not dissertation specific, think of it as the first two classes of a course on Crowdsourcing)
- CHAPTER 3: Typology of Crowdsourcing in Information Science (iConference 2015)
  - Incidental crowdsourcing (rework DH paper)
  - Low-effort crowdsourcing (short reference to HCOMP poster)
- CHAPTER 4: Designing Objective/Normative Tasks for Paid Crowdsourcing (Effect of design manipulations on data)
  - Literature review (introduce past in a way that my new research naturally follows. It should be clear 'why')
  - 4.1 Difference in rating distributions between differently designed Google and Amazon app stores (DH 2012, brief)
  - Image relevance judgments (new work)
  - 4.2: Recovering error from music similarity judgments (JCDL 2015)
  - 4.3: Design manipulations for tagging Pinterest (new work)
- CHAPTER 5: Interpreting Objective/Normative Tasks for Paid Crowdsourcing (how do you find and account for quality problems?)
  - 5.1: Literature review
  - 5.2: Recovering error from relevant judgments (ASIS&T 2012)
  - 5.3: Normalization section of MIR study
- CHAPTER 6: Subjective Tasks in Paid Crowdsourcing (writing as a JAIR article)
  - 6.1 Literature review
  - 6.2 Personalized crowdsourcing
  - 6.3 Design manipulations for taste-grokking (new work)
- CHAPTER 7: Conclusions
  - RQs
  - Summary of findings (bold headings, easy to read: this should be the skimmable chapter of the dissertation)

-->
