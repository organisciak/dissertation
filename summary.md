Point-form outline
====================

Title: Crowdsourcing descriptive metadata for information retrieval indexing: Reliably augmenting documents with crowd contributions
	 
* Broad Question: How can crowdsourcing be used for collecting algorithmically valuable information about documents while accounting for qualitative differences in how individuals contribute? 
* Specific Research Question: How should qualitative differences stemming from human variance be accounted for in _descriptive crowdsourcing_, at the time of data collection or afterward, in a manner that maximizes the information gain for information retrieval?
* Core assumption: That crowd contributors are honest but biased
* Hypothesis: That pursuing the honest-but-biased assumption leads to:
	* Contributions that are more valuable for algorithmic use
	* A greater proportion of useful contributions
* This high-level theme for the dissertation is explored in two parts of the dissertation:
	1) A chapter on accounting for human variance at the time of collection. How does the task design affect the task output?
	2) A chapter on accounting for human variance in data that has already been collected

## Designing for increased reliability at collection time

* This chapter focuses on how the _way_ you ask for contributions changes the nature of the response. 
* Specifically, I'm looking at the design of the task by comparing different types of interfaces for the same task on the same content.
* Problem: there is increasing evidence showing that the design and communication of a task affects how the contributors interpret their role. Utilizing crowdsourcing without knowledge of how this effect is manifested may result in unnecessarily variance and disagreement, dismissed as unrecoverable error from bad users.
* Crowdsourcing Task: identifying the topic of a tweet
	* Why: Tweets are a valuable source of real-time information, but are very terse and ephemeral, possibly never before encountered. Judging the content of a tweet is a real-world task where crowdsourcing is being attempted.
* Site of research: Mechanical Turk
* Methodology
	* Two tasks will be completed in four different parameterizations.
	* Tasks
		* Task 1: "Is this tweet about topic X" task
		* Task 2: "Find the most self-explanatory tweet from Set A"
	* Parameterizations
		* Design 1: Baseline. Tweets are show in a list, instructions at the top, workers not forced into a particular style.
		* Design 2: Training. First task explains right and wrong answers. Subsequent tasks resemble the baseline.
		* Design 3: Feedback. Workers are given estimated feedback on their reliability after their first task. e.g. "You are the _X_th best worker, out of _Y_"
		* Design 4: Fast. Workers are given a time limit to complete the task. This approach is to encourage more visceral rather than contemplative actions.
* Data
	* Collected for this study through Twitter Search API
* Evaluation questions
	* How much variance is there among multiple Turkers for each task design?
	* How likely are Turkers to settle, by 3-person majority, on the answer given by a trusted, carefully assessor?
	* What is the cost per classification?
	* What is the time spent per classification?
	* What is the average time per dollar earned for workers? This is a fairness metric, because cost and time are not linearly dependent on Mechanical Turk, and thus just looking at time or cost is misleading.
	* What is the mean and median agreement of workers with other workers performing the same task?

## Accounting for cognitive bias in collected data

* This chapter looks at correcting for perception biases in data that is already collected.
* Problem: People have different contexts for what a rating scale means and what parts of the item being rated are meaningful. In contexts where a normative rating is required, you need to be sensitive to the community's priorities rather than those of individuals. 
* Methodology
	* Part 1: Weighing judgments in paid crowdsourcing
		* A treatment of previous research by @organisciak_evaluating_2012. This study evaluated methods to correct for error in crowdsourced relevance judgments by viewing user habits along three lines: time, experience, and agreement.
	* Part 2: Normalizing opinion judgments in a volunteered setting
		* Data: Yelp.com data for city of Phoenix, with 5-star scale ratings of businesses as well as reviews.
			* A subset of the data will be used, with a sample that includes all of the reviews for a number of businesses, and a sample that includes all the reviews by a random selection of users.
		* Review + rating pairs are randomly sampled from the dataset. The reviews are shown to human judges (likely Turk, but not necessary), who suggest what rating they _expect_ the review to provide.
		* Assumption: That there are normative priorities that humans settle on, and that the actual contributor writing the review may have different priorities in how they assign the rating. Since the rating is what is used most commonly for information retrieval -- either formally by a ranking algorithm or informally in the way information-seekers assign their attention to results -- ways to gauge the deviation from normativity may help correct ratings that feed into an averaged rating.
		* Approach
			* This study will first be observational, analyzing the differences between actual ratings and expected ratings, followed by an attempt to formalize this information into a term-based model for deviations from expectation
		* Evaluation questions
			* What terms are indicative of reviews are expected to be negative? Positive?
			* Does deviation from the normative expectation for a review correlate to specific users?
			* Do the terms used in a review offer extra information over normalizing against the distribution of user's ratings?

## Other Notes

* IRB
	* IRB approval will be necessary for the first new research study, since I am studying the turkers themselves
	* The review correction study shouldn't require IRB, since I'm using an existing dataset. When using Turk for annotations, it will be in the capacity of workers, hired by myself and not the university, and not human subjects.



