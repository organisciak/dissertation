\chapter*{Abstract}\label{abstract}

Text, images, video and other types of information objects can be described in many ways.
Having detailed metadata and a various people's interpretations of the object helps in providing better access and use.
While collecting novel descriptions is challenging, crowdsourcing is presenting new opportunities to do so.

Large-scale human contributions open the door to latent information, subjective judgments, and other encoding of data that is otherwise difficult to infer algorithmically.
However, such contributions are also subject to variance from the inconsistencies of human interpretation.

This dissertation studies the problem of variance in crowdsourcing and investigates how it can be controlled both through post-collection modeling and better collection-time design decisions.

Crowd-contributed data is affected by many inconsistencies that differ from automated processes: differences in attention, interpretation, skill, and engagement.
The types of tasks that we require of humans are also more inherently abstract and more difficult to agree on. Particularly, qualitative or judgment-based tasks may be subjective, affected by contributer opinions and tastes.

Approaches to understanding contribution variance and improve data quality are studied in three spaces.

First, post-collection modeling is pursued as a way of improving crowdsourced data quality, looking at whether factors including time, experience, and agreement with others provide indicators of contributions quality.
Secondly, collection-time design problems are studied, comparing design manipulations for a controlled set of tasks.
Since crowdsourcing is borne out of an interaction, not all crowdsourcing data corrections are posterior: it also matters how you collect that data.
Finally, designing for subjective contexts is studied. Crowds are well-positioned to teach us about how information can be adapted to different person-specific needs, but treating subjective tasks similarly to other tasks results in unnecessary error.

The primary contribution of this work is an understanding of crowd data quality improvements from non-adversarial perspectives: that is, focusing on sources of variance or errors beyond poor contributors.
This includes findings that:

 1. Collection interface design has a vital influence on the quality of collected data, and better guiding contributors can improve crowdsourced contribution quality without greatly raising the cost of collection nor impeding other quality control strategies.
 2. Different interpretations of instructions threaten reliability and accuracy in crowdsourcing. This source of problems even affects trustworthy, attentive contributors. However, contributor quality can be inferred very early in an interaction for possible interventions.
 3. Certain design choices improve the quality of contributions in tasks that call for them.
 Anchoring reduces contributor-specific error, training affirms or corrects contributors' understanding of the task, and performance feedback can motivate middling contributors to exercise more care. Particularly notable due to its simplicity, an intervention that forefronts instructions behind an explicitly dismissable window improves contribution quality greatly.
 4. Paid crowdsourcing, often used for tasks with an assumed ground truth, can be also be applied in subjective contexts. It is promising for on-demand personalization contexts, such as recommendation without prior data for training.
 5. Two approaches are found to improve the quality of tasks for subjective crowdsourcing.
 Matching contributors to a target person based on similarity is good for long-term interactions or for bootstrapping multi-target systems. Alternately, explicitly asking contributors to make sense of a target person and customize work for them is especially good for tasks with broad decision spaces and is more enjoyable to perform.

The findings in this dissertation contribute to the crowdsourcing research space as well as providing practical improvements to crowd collection best practices.
