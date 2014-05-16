Introduction
=============

> In these democratic days, any investigation in the trustworthiness and peculiarities of popular judgments is of interest -- @galton_vox_1907

<!--## Introduction-->

The internet is growing increasingly interactive as it matures.
Rather than simply transmitting information to readers, web pages allow their audience to react and interact with their information.
The products of these interactions are a trove of qualitative judgements, valuable to modelling information objects.
In recent years, this form of creation through collaboration has been studied as _crowdsourcing_.

Effective information retrieval depends on reliable, detailed information to index.
Crowdsourcing has the potential to improve retrieval over web documents by having humans produce descriptive metadata about documents.
Humans are able to provide latent information about documents that would not be possible to ascertain computationally, such as quality judgments or higher-level thematic description.
They are also good at critical actions such as correcting, describing in different language, or inferring relationships with other documents.
More importantly, crowdsourcing looks at human contribution at scales that are potentially useful for retrieval.

<!-- Broad Research Question -->
However, humans have predictable and unpredictable biases that make it difficult to systematically adopt their contributions in an information system.
How do we control and interpret qualitative user contributions in an inherently quantitative system?
This study looks at the effect of human error on crowdsourcing for document metadata, which I refer to by the shorthand of _descriptive crowdsourcing_, and how it affects information retrieval uses of human contributions.

<!-- Specific Research Question -->
Concretely, I am proposing a study in two parts, separated by their focus on _collecting_ descriptive metadata reliably, and on _using_ it in an appropriate information retrieval context.

 1. In the first half, I will look at the effect of different collection interface designs on the intercoder reliability of the collected data.
    This is a study motivated by prior work done by myself and others, with a problem often mentioned but, to my knowledge, not pursued formally.

 2. In the second half of this dissertation, I will look at improving retrieval using already-collected crowdsourcing data.
    I focus on the system _Pinterest_, because it is a valuable resource of human-encoding descriptive metadata, while sparse in its other textual content.
    It is also a example of the loosely constrained form of crowdsourcing contribution that is often required to encourage participation, a trade-off that is less structured than a retrieval model may prefer.

<!-- LEFT OFF EDITING HERE-->
Particularly, this study looks at the issue of recoverable error in human-contributed data, alternately viewed as intercoder reliability when studied from the data end.
Can error in descriptive crowdsourcing be accounted for, either at the time of data collection or afterward, in a manner that maximizes the intercoder reliability of contributions and subsequently the usefulness for information retrieval?

<!--### Hypothesis-->
I will argue that reliability of crowdsourced data can be improved by making an assumption that crowd contributors are honest-but-biased[^language]. This is an assumption supported by prior work and not uncommon in research on classification, but understudied in crowd research.
The proposed study follows the hypothesis that such an assumption leads to 
a) more algorithmically valuable crowdsourced description and 
b) a greater proportion of useful contributions.

<!-- -->

[^language]: In assuming that humans are biased, the biases referred to are the inclinations, leanings, and tendencies [@_bias_????] of individuals, quirks that affect their worldview and how they understand and perform tasks.
By this definition, such perceptual differences contribute to a greater statisticalvariance than if all contributions were expected to be identical, and should not be confused with the statistical definition of 'bias', referring to a model that is overfit, or overly 'biased', to a specific dataset.
In information science, this is closely related to _intercoder reliability_, the measure of how similar multiple coders will perform in a given parameterization of a task [@neuendorf_content_2002].
When discussing the processes of humans --and only when doing so-- this study may refer to biases, but discussion of effects on data will solely use statistical and information science language.

### Approach

The study of human-introduced variance will be done in two different sites of crowdsourcing:

 * in the design of contribution tasks in order to minimize variance, and
 * in the normalization of contributions after they have already been collected.

Doing so will both adopt work that I have performed during my doctoral studies and contribute new research.

This study cannot account for all possible situations and methods for accounting for human-introduced variance before and after crowdsourcing collection.
Rather, each chapter will focus on a more narrowly scoped sub-problem in the area, to give this study the grounding necessary for a thorough exploration of the larger problem space.

In the first sub-study, the performance of workers completing the same task will be compared across different design implementations for collecting that information.
In the second sub-study, an information retrieval model that incorporates crowdsourced information will be compared to a baseline which does not, then compared to a system that normalizes user contributions against user behavior.
Both of these stay true to the assumption of honest-but-biased workers in focusing on the responsibilities of a system designer in managing and interpreting the crowd.

### Take Away

A reader of the proposed dissertation will understand:

 * the issues related to using crowdsourcing contributions for information retrieval indexing;
 * the effect of designing collection tasks that are are quicker or slower on a paid crowdsourcing platform, with a sense of how this information generalizes to different tasks or collection spaces;
 * corrective measures for variance in already-collected descriptive metadata, particularly corpus-based methods for modeling documents for retrieval
   and
 * the tractability of making an assumption of honest-but-biased contributors.

## Crowdsourcing
 
Crowdsourcing is the distributed, large-scale collaboration of users contributing to a common product.
Significantly, the term describes the _act_ of a system opening up for contributions from distributed users.
Users do not necessarily collaborate directly with each other -- though they can -- so the crowd in the term refers broadly to the collective users of the system.
Sourcing describes the act of soliciting user contribution, regardless of whether it is successfully executed or not.

Crowdsourcing is an umbrella term preceded by a number of more narrowly scoped concepts, such as 
commons-based peer production [@benkler_wealth_2006],
open source software development [@raymond_cathedral_1999; @lakhani_how_2003],
and human computation [@von_ahn_games_2006; @law_human_2011].<!--_-->

Surowiecki discussed aggregate crowd intelligence as the ‘wisdom of the crowds’ [@surowiecki_wisdom_2004]; one way to interpret crowdsourcing is the process of trying to utilize that wisdom.

## Problem

The growth of digital collections has outpaced the ability to comprehensively clean, transcribe, and annotate the data.
Similar roadblocks are affecting born-digital information, where the rapid creation of documents often follows from passive or unrestricted forms of creation.
The lack of strong descriptive metadata poses an obstacle for information retrieval, which must infer the aboutness of a document in order to surface it for an interested user.
<!-- TODO: there should a good citation on this somewhere... -->
Crowdsourcing is increasing being used to address this problem.

Many of the benefits of crowdsourcing follow from the fact that humans approach tasks in qualitative and abstract ways that are difficult to emulate algorithmically.
A human can respond to complex questions on a Q&A website, judge the quality of a restaurant/product/film, or decipher a sloppy piece of handwriting.

Since many information systems are intended to serve an information-seeking user, the information that crowdsourcing collects can better reflect the needs of users.
For example, a user-tagged image in a museum collection can fill in terms that are more colloquial than the formal vocabulary employed by a cataloguer [@springer_for_2008; trant_investigating_2006].
Such information is invaluable in indexing items for information retrieval, where the goal is commonly to infer what a user is searching from their textual attempt to describe it in a query.

Similarly, other uses of crowdsourcing capitalize on humans' abilities to spot when algorithmic attempts at understanding an information object have failed.
ReCaptcha uses human contributions to transcribe transcriptions of OCR problem text from Google Books and the New York Times [@_what_????].
The National Library of Australia's Trove also crowdsources corrections of scanned text, by allowing readers of their scanned newspapers to edit transcript text when they come across problems [@holley_many_2009].

Humans are also being used to encode parsable text descriptions for non-text materials or higher-level latent concepts.
In libraries, this approach is being adopted with crowd transcription of materials which are too difficult for computer vision, such as digitized letters.
For example, the Bentham Project at University College London has a pilot project for crowdsourcing the transcription of Jeremy Bentham’s letters [@moyle_manuscript_2010; @causer_transcription_2012].

More than typical description, additional useful information can be reactionary or critical.
Indexing human judgments of a document's quality, for example, can enable a information retrieval system to rank the best version of multiple similarly relevant document.

While the complex qualitative actions of human contributions are the cornerstone of such contributions' usefulness, they present a challenge for algorithmic use because they can be highly variable.

A task becomes more open to interpretation the more complex it becomes.
Some projects revel in the broad interpretive nature of complex tasks.
We see large art projects like Star Wars Uncut embrace the quirkiness of humans, where hundred of people re-filmed small snippets of Star Wars in a charming hodgepodge of styles.
Coding challenges, like those seen on TopCoder, also are interesting for the widely varying ways that a programming language allows you to express a problem.
However, in cases where there is a goal to find either an objective truth, manifest or latent, or to gauge the subjective approaches and opinions of people in a comparable way, the breadth of interpretations possible for a task presents a problem for reliably understanding it in aggregate.

<!--When users contribute a binary rating (e.g. thumbs up/thumbs down)-->
<!-- TODO finish paragraph! See Hu and Lee JCDL paper, on inconsistencies of 100-point scale, and other similar literature-->

The variability seen in human interpretations of complex tasks is not a novel issue.
It is a problem that we call low _intercoder reliability_, and can result from a variety of problems.
Four 'threats to reliability' that @neuendorf_content_2002 lists echo issues in crowdsourcing document description:
 an insufficient coding scheme,
 inadequate training,
 fatigue,
 and problem coders.

Whereas much research has looked at the fourth problem, when the contributors are the source of low reliability<!--TODO: examples? -->, this study looks at the improvements in crowdsourcing for descriptive metadata that can be recovered from external factors: assuming an honest but biased rater.

### Assumption of Honesty

Much crowdsourcing research makes an adversarial assumption, focusing on removing variability by detecting or smoothing over cheaters.

For example, @eickhoff_increasing_2012 note that a significant proportion of Mechanical Turk workers sacrifice correctness for speed, in order to maximise their profits.

However, 'sacrificing quality for speed' is not always the case. <!--While observable in some cases[], including suspicious behaviors that we observed during @organisciak_personalized_2013, <!-- TODO FIGURE-->, other studies on contribution conflict it.-->
For example, in @organisciak_evaluating_2012, we found that the fastest workers generally did not contribute worse labor, except for one case: when workers spent less time on the instructions and first task.
The fact that time was only significant in this one case suggests that the effect for this particular dataset was not a result of 'cheaters' as much as workers that did not interpret the instructions close enough.
Similarly, during the research for @organisciak_personalized_2013 we found that slowing workers down resulted in lower quality contributions, both in terms of internal consistency by workers and quality of the data for training a recommendation algorithm.

Following from signals that low-quality results stem from a number of causes, this research assumes that the quality of a contribution is not only affected by the objective quality of the worker, but also due to subjective differences in the worker's perception of the task.

\begin{equation}
Contribution = truth + \text{quality error} + \text{perception error}
\end{equation}

This simplifying assumption underlies this proposal.
While keeping in mind the possibility that variance can stem from good or bad quality contributors, this study is pursuing an understanding of that second bias: when contributors introduce variance that is stimulated by differing interpretations of task, ones that deviate from the instructive or normative ways to approach the task.

This assumption is not novel in areas of social research, but is neglected in crowdsourcing research.
In views on intercoder reliability in tradition social science settings, reliability is treated as the responsibility of both the designer of the work and the workers themselves.
In fact, bad workers are one of the last considerations when there are data problems.

The inclusion of the researcher/coordinator as a responsible party has not been common in crowdsourcing research.
Perhaps it is because participants in crowdsourcing are more abstract than a local worker or survey taker, or maybe because the history of the Internet has justifiably encouraged a level of aloofness against dishonestly, but this dissertation hopes to see if this oversight is detrimental.

### Intercoder reliability

In crowdsourcing, increasing intercoder reliability is sometimes at odds with the collection strategy.
The most effective crowdsourcing deals with large numbers of people, and part of maximizing the involvement of contributors, especially those which are volunteers, is to minimize the restrictions on a contribution. <!-- TODO back up w/ references -->
To enforce a strong coding scheme or training contributors will reduce the number of individuals willing to perform the task.
Whether the improvements in quality are worth the losses in contributions will be looked at in the first chapter of new research in this dissertation.

Other times, controlling the circumstances under which the contribution is created is not possible, such as in information retrieval over web documents.
The second chapter of new research will look at such a case: how can you make sense of existing data that appears to have low intercoder reliability?
For tasks where the contribution is numeric and ordinally or continuously coded, methods exist for interpreting when coders are similar but operating with different frame.
These include using covariation instead of agreement [@neuendorf_content_2002], and normalizing by a user mean [@hofmann_latent_2004; @bell_bellkor_2008].

Also, in a traditional setting such as that seen in cataloguing, few coders are making many contributions with a strong overlap between them.
In contrast, crowdsourcing deals with many contributors submitting generally few contributions and with little overlap.
In instances of paid crowdsourcing, there is more control over the way that contributions are made, but since contributors are usually self-selected, it is still possible to run into fatigue, misunderstanding, or inattentiveness.

### Contributor variance

#### Subjective Versus Objective Tasks

The variance that exists between different contributors adds noise both to tasks that make a subjective assumption and tasks that make an objective assumption.
<!--TODO: Haven't really made a case for "the variance that exists"-->

In subjective tasks, it is assumed that there is no universally correct form of contribution.
For example, when crowd contributions are used to inform recommendations, such as for music or film, it often assumed that different types of people enjoy different products.
We thus see approaches to recommendation such as collaborative filtering, where users are matched to similar users based on the overlap between their tastes rather than a global definition of 'good' or 'bad' products.
In such a case, inter-rater consistency is still important, to make it possible to identify similar users.
Modern approaches to collaborative filtering commonly normalize ratings against
 a user-specific bias (i.e. "how does this rating compare this user's average rating") and sometimes against 
 an item-specific bias (i.e. "how does this rating compare to what the rest of the community thinks about the item").
<!--TODO cite cf normalization-->

#### Manifest Versus Latent Content

For objective tasks, @neuendorf_content_2002 differentiates between two types: manifest and latent.

In a simplified comparison, tasks with manifest content are ones where there is a clear correct contribution.
Correcting or transcribing text from a scanned image would be grouped in the category.

In contrast, latent tasks are assumed to have a theoretical truth, but one that is not outwardly stated.
When a person tags a photograph with a free-text label or a worker classifies the sentiment of an opinionated tweet, they are interpreting the content.
As @neuendorf_content_2002 notes, "objectivity is a much tougher criterion to achieve with latent than with manifest variables". 

### Benefits of Recovering Error from Crowd Contributions 

Why standardize crowdsourcing collection?
With large enough numbers, it doesn't matter.
Problems of user quality get smoothed over when enough honest people collaborate, while problems stemming from perception biases in many cases will converge on the normative understanding of the task. 
However, by recovering a cleaner signal from human contributions, a system is reliant on less workers.
Doing so thus helps keep system less affected by the ebbs and flows of motivating volunteers, or the costs of paying workers.
Since the attention that contributors is not uniform across all items in a system, usually resembling an inverse power-law distribution [<!--TODO-->], understanding crowdsourced information with less aggregation means more of the middle of the distribution can be represented.

In other words, accounting for cognitive bias seeks to make each individual contribution more valuable.

## Relevance

### Practical application

The contribution of this work is in the application of corrective techniques to the crowd-based encoding of metadata about existing information objects, and the broader understanding of the nature of such contributions.

There are many ways to apply a lens to such research.
This study reflects my own field of information retrieval, and more broadly in information science.

<!-- ### Relevance in Information Science -->

Information science deals with the representation of information objects, giving crowdsourcing considerable potential as a tool for item description.

By way of example, consider crowd curation of materials.
In the presence of large collections of information objects, information-seeking and discovery can be aided by user-curated lists of thematically-similar objects. 
Sites like Amazon, LibraryThing and the new Delicious let people create lists of products, books, and websites, respectively.
The themes binding the lists are also user-defined, so a list can be about 
 quality (e.g. "favorites", "worst of"), 
 thematic (e.g. "teen vampire romance novels"), 
 or administrative (e.g. "to buy", "read this year"). 
This crowdsourced information is useful to users directly, but it also provides high-quality information for understanding the content in a collection and its relationship to other materials.

Inversely, this can return value to users curating content themselves: consider a system that can discover further items for a user that are thematically in line with a group that they have compiled.

New OPACs are increasing giving users the ability to classify and curate content, connecting to user habits that are commonly associated with public libraries.
For example, BiblioCommons -- employed at the Edmonton and New York Public Libraries -- positions list-making as a “curated topic guide,” a way to “share your expertise with others” [@_lists_????].
According to one study of social OPACs, the list feature in BiblioCommons is heavily used, many times greater than commenting and more than ratings [@spiteri_social_2011].

Similarly, cultural heritage collections have reported past success in using crowd contributions for increasing discoverability to content, improving metadata quality, or even contributing to item description.
For example, after a pilot partnership with Flickr, the Library of Congress implemented a workflow for review public comments on images for research or information to integrate back into item records [@springer_for_2008].

Crowd curation is just one example of a use of crowdsourcing to create information.
Table 1<!--TODO doublecheck numbering--> shows a number of different actions that have been observed for collecting descriptive metadata.<!--TODO... name other examples -->

While crowdsourcing has shown itself as a useful method for enriching information objects, there remains the question of how the method of collection affects the way the data can be used.
Contributors are self-selected and often without verified reliability, training or expertise.
Agreement is sometimes a useful metric for objective information, but sometimes there is meaning in disagreement, such as in collaborative filtering.

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

_Table 1: Types of actions seen in descriptive crowdsourcing_ 
<!-- TODO: format properly; 
	   Change examples to focus on information science or library examples;
           note that this was originally observed for incidental crowdsourcing paper 
-->


--------------------------------------------------------------------------------------------
     Action              User Use                        System Use
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

_Table 2: Chart comparing user and system uses for a selection of incidental crowdsourcing actions_ 
<!--TODO: add citations whenever possible, 
	not origin in incidental crowdsourcing independent study 
	format properly
-->

<!-- TODO relevance in IR section -->

## Definitions and important distinctions

Before proceeding, the terminology of this study should be established. As this work spans multiple domains, and makes reference to recently introduced concepts, it is important to establish a shared understanding of language within these pages.

Note that the treatment here is cursory; a more in-depth look can be found in Chapter 2.

### Descriptive crowdsourcing
This paper focuses on crowdsourcing for descriptive metadata.

The distinction here is that the human contributions are reactive.
There is an information object that already exists, and crowdsourcing workers add information about it.
The response can be subjective, such as ratings or interpretations, or objective, such as descriptions or corrections.

Crowdsourcing descriptive metadata stands in contrast to crowdsourcing that _creates_, introducing new information objects into the world.
One example of this is T-shirt design contests on Threadless[^1]. 

[^1]: http://www.threadless.com

This approach to crowdsourcing was looked at in  @organisciak_incidental_2013 when defining the concept of _incidental crowdsourcing_.
Incidental crowdsourcing is an approach to crowdsourcing that is unobtrusive and non-critical.
This form of peripheral collection of data was noted to favour descriptive activities. 

### Human computation

Human computation is a separate but closely related concept to crowdsourcing.
It refers to activities where humans perform work in a paradigm reminiscent to computing, and which could conceivably one day be done by computers [@law_defining_2011; @quinn_human_2011].
Human computation does not need to be crowdsourced, but many such tasks benefit from crowdsourcing.
Likewise, while a notable portion of crowdsourcing tasks are creative, such as writing or commenting, human computation represents a large portion of the types of crowdsourcing seen in the wild.

### Worker, volunteer, contributor

The space of crowdsourcing is large and the incentives for contributors are varied. 
The most significant distinction within crowdsourcing is in comparing uses that pay their contributors and those that do not.
It's valuable to make this distinction because paying a person changes they way that they perform (<!-- TODO cite-->), while also simplifying some of the concerns that are necessary in retaining volunteers.

In general, I refer to crowd individuals as _contributors_.
When the distinction is necessary, paid contributors are referred to as _workers_, while elective contributions are made by _volunteers_.

## Chapter Outline

The proposed dissertation follows the below structure, delineated by chapters.

#### Introduction

The first chapter will introduce the use of crowdsourcing for information retrieval and outline the problems of variance and low intercoder reliability in crowdsourced data.
The scope will be drawn out as this document has done, making clear that the focus within crowdsourcing is on uses that augment our knowledge of existing information objects, and the focus in information retrieval is in improving retrieval, rather than evaluation, in a reliable manner.
Subsequently, the assumption of honest but biased contributors will be outlined, and the hypothesis on this assumption will be outlined along with the two studies that will be pursued to test it.

#### Literature review

The literation review will serve as a comprehensive review of the field around the research.
It consist of the following sections, some of which have already been performed for this proposal:
* define all the necessary concepts in crowdsourcing and provide their history,
* provide an extensive taxonomy of crowdsourcing,
* discuss the existing research into using crowdsourcing information for improving retrieval,
* discuss the most notable research in library and information science,
* list the most notable projects to utilize crowdsourcing, and
* provide a "greatest hits" list crowdsourcing research that any interested reader should be familiar with.

#### Increasing reliability at collection time: the "Design Study"

Not all crowdsourcing designs are equal, and the resulting differences in contributions from different designs is an often neglected issue in crowdsourcing.
The third chapter will look at the ways that task design changes the nature of contributions.
Focusing on an existing use of crowdsourcing for improving information retrieval -- annotating microblogging messages -- this chapter will run multiple controlled studies with different interface design options.

#### Increasing reliability in collected data: the "Deviation from Expectation Study"


#### Discussion and conclusions


Details of the proposed study designs for chapters 3 and 4 are provided later in this proposal, and an initial literation review is provided next.
