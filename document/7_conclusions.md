Conclusion
=============

## Workplan

This dissertation will be performed over the course of 7 months, starting immediately in September 2014.
Both parts of the dissertation -- the study on the effect of task design and the study on retrieval over crowd content on Pinterest --  will be pursued concurrently, with early priority on the former because it helps in designing the instruments for the latter.

Throughout this research, I will stay in weekly contact with my advisor, and hope to consult with the committee with increasing frequency as the research progresses.

### Designing Crowdsourcing Tasks

_Admin_
    1. Prepare and submit IRB Application. In studying the behaviors of workers, they are being treated as human subjects, requiring IRB approval.
    2. Search for dissertation funding opportunities to alleviate cost.

_Study Tasks_
    1. Incorporate dissertation committee feedback into study design
    2. Find or collect Twitter dataset
    3. Annotate gold standard set
    4. Build measurement instruments
        1. Basic Design
            * Prepare Infrastructure for collecting data. The collection interface will be built in JavaScript using the Backbone library, with Node.js and Express powering the back-end.
        2. Feedback Design
        3. Training Design
        4. Time-Limited Design
    5. Testing. It is important to understand a crowdsourcing design as a user before subjecting others to it.
    6. Data Collection. The Payment amount will be determined based on statistics of time spent.
    7. Analysis. How variable is the data? How accurate is it, relative to the gold and silver standards? How quickly do users perform the task, and how much do they enjoy it? What do the free text feedback forms say? How can the trade-off between cost/speed and quality (reliability/consistency/accuracy) be fairly compared.
    8. Writing.

### Modeling Crowd-contributed Document Metadata in Retrieval

_Administrative_

1. Secure server and disk space.

_Study_

 1. Incorporate dissertation committee feedback into study design
 2. Dataset building
    * Build crawler
 3. System development
    * Prepare baseline system
    * Implement board language model and broader item language model
    * Which mixtures of features will be tested? What is most promising from testing data, informal empirical impressions? Why?
 4. Evaluation
    * Develop front-end for evaluation. The evaluation interface can build upon early impressions from the other chapter.
    * Generate a test collection for better sensitivity to methods during development.
    * Recruit evaluators
    * Sample evaluation queries
    * Collect relevance judgments
 5. Analysis. Which approaches worked? Which didn't? What types of documents are favoured? What's being neglected? What types of queries do the retrieval models fail on?
 6. Writing


### Other Tasks

 * Write richer literature review
 * Publish code source online
 * Tertiary studies
   * Develop taxonomy of crowdsourcing, from this proposal's literature review, into a paper.
   * Pursue study on the variability of crowdsourcing site design over time, testing the hypothesis that style congeals over time into a more rigid and computationally tractable form.

## Publication Targets

There are a number of conferences that represent the target audience of this dissertation, generally mixed-domain areas that combine computer science or information science with sensitivity to social or human-centered issues.
Research from the chapter on design of crowdsourcing tasks would be appropriate at HCOMP, CSCW, CHI, or ASIS&T.
The research from the chapter on retrieval over crowdsourced information on Pinterest would be appropriate at JCDL, CIKM, or potentially SIGIR.

## Risks

In addition to the concerns discussed throughout this paper, it will be important to stay sensitive to the unforeseen.
There are the unforeseen effects: both paid and volunteer crowdsourcing are motivated by a complex array of choices that may affect the user's interpretation and performance of a task.
There are also unforeseen precedents: while this study is grounded in information science, human-computer interaction, and the growing crowdsourcing literature, it is important to stay aware of other fields that may offer relevant research, such as social psychology or marketing.
Finally, there are the unforeseen unknowns, potential study pitfalls that are only learned through practice.
For all of these, the best protection is to seek the advice of colleagues and mentors throughout the study.

It is possible that the studies within the proposed dissertation may have null results.
While this may be deflating, there is nonetheless value in learning from failure.
The research proposed in this dissertation is novel and will contribute to a better understanding of how information system designers can interact with human contributors.
