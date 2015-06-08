
[^language]: In assuming that humans are biased, the biases referred to are the inclinations, leanings, and tendencies [@_bias_] of individuals, quirks that affect their worldview and how they understand and perform tasks.
By this definition, such perceptual differences contribute to a greater statistical variance than if all contributions were expected to be identical, and should not be confused with the statistical definition of 'bias', referring to a model that is overfit, or overly 'biased,' to a particular dataset.

In information science, this is closely related to _intercoder reliability_, the measure of how similar multiple coders will perform in a given parameterization of a task [@neuendorf_content_2002].
When discussing the processes of humans --and only when doing so-- this study may refer to biases, but discussion of effects on data will solely use statistical and information science language.

### Approach

The study of collecting and modeling document metadata through crowdsourcing will be done in two different sites of crowdsourcing:

 * in the design of effective contribution tasks, and
 * in modeling normative meaning of contributions after they have already been collected.

Doing so will both adopt work that I have performed during my doctoral studies and contribute new research.

This study cannot account for all possible situations and methods for crowdsourced document enrichment.
Rather, each chapter will focus on a novel sub-problem within the area, providing a grounding from which I can more thoroughly explore the larger problem space.

In the first sub-study, the performance of workers completing the same document description task will be compared across different design interface.
In the second sub-study, I develop strategies for making use of crowdsourced information.
 Here, an information retrieval model is developed that incorporates a crowdsourcing-heavy system's user contributions in retrieval.
Both studies stay true to the assumption of honest-but-biased workers, focusing on the responsibilities of a system designer in managing and interpreting the crowd rather than the faults of individuals in the crowd.

<!--
Also, in a traditional setting such as that seen in cataloguing, few coders are making many contributions with a strong overlap between them.
In contrast, crowdsourcing deals with many contributors submitting generally few contributions and with little overlap.
In instances of paid crowdsourcing, there is more control over the way that contributions are made, but since contributors are usually self-selected, it is still possible to run into fatigue, misunderstanding, or inattentiveness.
-->

### Contribution variance

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

### Benefits of Recovering Error from Crowd Contributions

Why try to account for human error in crowdsourcing collection?
With large enough numbers, it doesn't matter.
Problems of user quality get smoothed over when enough honest people collaborate, while problems stemming from perception biases in many cases will converge on the normative understanding of the task.
However, by recovering a cleaner signal from human contributions, a system is reliant on less workers.
Doing so thus helps keep system less affected by the ebbs and flows of motivating volunteers, or the costs of paying workers.
Since the attention that contributors is not uniform across all items in a system, usually resembling an inverse power-law distribution, understanding crowdsourced information with less aggregation means more of the middle of the distribution can be represented.

In other words, accounting for individual biases seeks to make each individual contribution more valuable.

## Chapter Outline

The proposed dissertation follows the below structure, delineated by chapters.

#### Introduction

The first chapter will introduce the use of crowdsourcing for information retrieval and outline the problems of variance and low intercoder reliability in crowdsourced data.
The scope will be drawn out as this document has done, making clear that the focus within crowdsourcing is on uses that augment our knowledge of existing information objects, and the focus in information retrieval is in improving retrieval, rather than evaluation, in a reliable manner.
Subsequently, the assumption of honest but biased contributors will be outlined, and the hypothesis on this assumption will be outlined along with the two studies that will be pursued to test it.
