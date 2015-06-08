Designing Objective Tasks
===========================

## Related Work

## Tagging

Sen et al. 2007<!--TODO cite--> study the quality of community tags in the MovieLens film recommendation system, toward methods to prioritize tags in the interface.
They find that high-quality tags, as determined by survey, are not necessarily the most-applied tags, likely because the most common tags are locally useful 'personal' tags.
However, tags that are applied by many _unique_ users are more likely to be useful, as are tags that are clicked by many unique users.
While this form of usage-based quality indicator does not help in collecting good tags, it does affect how to determine quality tags for ground truth in this study.


## Approach

## Design Conditions

### Tasks

#### Tagging

- subjective vs. objective
  - desire some sort of variability
However, it would be ill-advised to view tagging as a fully relativist activity.
It has been found that tagging begins to converge on a set of popular, common tags <!--TODO cite, Golder and Huberman 2006, Cattuto 2006 -->, and there certainly are notions of 'good' or 'bad' tags <!-- TODO cite.. Sen et al. 2007, what else?-->.



##### Instruction

<!-- What is a 'good' tag, what is a bad tag? -->

If the goal is to collect high quality tags, it must first be clear what a 'good' or 'bad' tag is.
When studying tag quality in a film recommendation system, Sen et al. 2007 found that only 21% of tags are worthy of display to other users.

- Personal tags (bad - sen et. al)
- 


##### Training Interface

Given the more detailed, specific approach taken in the training interface condition, more prior work on tagging is used in guiding users.
It has been found that user tagging habits resemble other tags that they see <!-- TODO cite Sen et al. 2006)-->.
Given this, the training interface offers a set of examples, with good and bad tags shown.
The quality of these tags was determined through a Mechanical Turk task, where workers rated previously submitted tags.
<!--TODO this hasn't been done yet... aspirational text -->
<!-- TODO details -->


## Evaluation

- Ground Truth creation
  - tags that are applied by many unique users are likely to be better tags (Sen et al 2007)
  - In rating tag quality, both positive and negative ratings are important (Sen et al 2007)

### Tagging
