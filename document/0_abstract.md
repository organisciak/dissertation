\chapter*{Abstract}\label{abstract}

Crowdsourcing offers a valuable approach to improving our understanding of information objects and people's interpretations of them.

Large-scale human contributions open the door to latent information, subjective judgments, and other encoding of data that is otherwise difficult to infer algorithmically.
However, such contributions are also subject to variance from the inconsistencies of human interpretation.

This dissertation studies the problem of variance in crowdsourcing and investigates how it can be controlled both through post-collection modelling and better collection-time design decisions.

Though many crowd design patterns pursue organizational patterns akin to computation, crowd-contributed data is affected by many inconsistencies that differ from automated processes: differences in attention, interpretation, skill, and engagement.
The types of tasks that we require of humans are also more inherently abstract and more difficult to agree on. Particularly, qualitative or judgment-based tasks may be subjective, affected by contributer opinions and tastes.

Approaches to understand contribution variance and improve data quality are studied in three spaces are studied in this dissertation.

First, post-collection modelling is pursued as a way of improving crowdsourced data quality, looks at whether factors including time, experience, and agreement with others provide indicators of contributions quality.

Secondly, collection-time design problems are studied.
Since crowdsourcing is borne out of an interaction, not all crowdsourcing data corrections are posterior: it also matters how you collect that data.
Design manipulation are evaluated for a controlled set of tasks, finding that approaches such as training interventions, performance feedback, and scale anchoring improve certain tasks with minimal extra cost or effort.

Finally, crowds are well-positioned to teach us about how information can be adapted to different person-specific needs, but treating subjective tasks similarly to other tasks results in necessary error.
Thus, designing for subjective contexts is studied, developing two protocols with complementary strengths for organizing such tasks.

The primary contribution of this work is an understanding of crowd data quality improvements from non-adversarial perspectives: that is, focusing on sources of variance or errors beyond identifying poor contributors.
This includes findings that:

 - Collection interface design is a vital influence on the quality of collected data, and strategies to better guide workers can improve crowdsourced contribution quality without greatly raising the cost of collection nor impeding other quality control strategies.
 - Varying interpretations of instructions are an important threat to reliability and accuracy in crowdsourcing, a source of problems that even affects trustworthy, attentive workers. 
 - The accuracy of a worker on the first task in a task set is a significant indicator of their future performance, which can be used to intervene early on expected poor workers.
 - Interventions such as anchoring, training, and performance feedback improve the quality of contributions. Anchoring reduces user-specific bias in scaled forms by tying the interface to more explicit benchmarks. Training helps affirm or correct workers' understanding of the task, particularly in cases where the task stays constant throughout multiple interactions. Performance feedback presents to workers an estimate of their performance, effective for less abstract tasks, except for the absolute worst workers.
 - An intervention that forefronts instructions behind an explicitly dismissable window improved contribution quality in an experiment greatly, despite its simplicity. This efficacy-to-simplicity ratio suggests promise for future research.
 - Training workers on the proper type of contribution is effective for raising their performance, all other circumstances being equal. This is particularly strong in cases where there can be divergent interpretations of the codebook (e.g. what is a good image tag).
 - Paid crowdsourcing, often used for tasks with an assumed ground truth, can be also be applied in subjective contexts. This is particularly promising for on-demand personalization contexts, such as recommendation without prior data to train on.
 - Taste-matching and taste-grokking, introduced as two approaches to crowdsourcing subjective information, are both found to be promising, with strengths in different areas. Matching, where crowd workers are matched to the target person based on their similarity, is good for long-term interactions or for bootstrapping multi-target systems. Grokking, where crowd workers make sense of the target person and customize their contributions based on an intuited understanding of the target, is especially good for tasks with broad decision spaces and is more enjoyable to perform.

The findings in this dissertation contribute to the crowdsourcing research space as well as providing practical improvements to crowd collection best practices.
