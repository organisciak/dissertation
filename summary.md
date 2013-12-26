Point-form outline
====================

As per Mike's suggestion, a point-form outline of how I see the dissertation

* Broad Question: How do cognitive biases affect crowdsourcing for information retrieval
* Specific Research Question: Can variance stemming from cognitive biases be accounted for in _descriptive crowdsourcing_, either at the time of data collection or afterward, in a manner that maximizes the information gain for information retrieval?
* Core assumption: That crowd contributors are honest but biased
* Hypothesis: That pursuing the honest-but-biases assumption leads:
	* Contributions that are more valuable for algorithmic use
	* A greater proportion of useful contributions
* This high-level theme for the dissertation is explored in two parts of the dissertation:
	1) A chapter on accounting for cognitive bias at the time of collection
	2) A chapter on accounting for cognitive bias in data that has already been collected

## Accounting for cognitive bias at collection

* This chapter focuses on how the _way_ you ask for contributions changes the nature of the response. 
* Specifically, I'm looking at the design of the task by comparing different types of interfaces for the same task on the same content.
* Problem: there is increasing evidence showing that the design and communication of a task affects how the contributors interpret their role. Utilizing crowdsourcing without knowledge of how this effect is manifested may result in unnecessarily variance and disagreement, dismissed as unrecoverable error from bad users.
* Crowdsourcing Task: identifying the topic of a tweet
	* Why: Tweets are a valuable source of real-time information, but are very terse and emphemeral, possibly never before encountered. Judging the content of a tweet is a real-world task where crowdsourcing is being attempted.
* Site of research: Mechanical Turk
* Methodology
	* Two tasks will be completed in four different parameterizations.
	* Tasks
		* Version 1 of "Identifying the topic of a tweet" task
			* Workers are shown 10 tweets from <!-- TODO --> 
		* Version 2 of task
			* "Find the most self-explanatory tweet from Set A": :Workers are shown 10 tweets and choose the one that best communicates what is being discussed.
	* Parameterizations
		* Design 1: Baseline. Tweets are show in a list, instructions at the top, not forc
		* Design 2: Training. First task explains right and wrong answers. Subsequent tasks resemble the baseline.
		* Design 3: Feedback. Workers are given estimated feedback on their reliability after their first task. e.g. "You are the _X_th best worker, out of _Y_"
		* Design 4: Fast. Workers are given a time limit to complete the task. This approach is to encourage more visceral rather than contemplative actions.
* Data
	* Collected for this study through Twitter Search API
	* What tweets are being evaluated?
		* <!--!!!!!-->

## Accounting for cognitive bias in collected data

* This chapter looks at correcting for perception biases in data that is already collected
* Problem:
* Methodology
	* Part 1: Weighing judgments in paid crowdsourcing
		* A treatment of previous research by @organisciak_evaluating_2012. This study evaluated methods to correct for error in crowdsourced relevance judgments by viewing user habits along three lines: time, experience, and agreement.
	* Part 2: Normalizing opinion judgments in a volunteered setting
		* Data: Yelp.com data for city of Phoenix, with 5-star scale ratings of businesses as well as reviews
		* Review + rating pairs are randomly sampled from the dataset. The reviews are shown to human judges (likely Turk, but not necessary), who suggest what rating they _expect_ the review to provide.
		* Assumption: That there are normative priorities that humans settle on, and that the actual contributor writing the review may have different priorities in how they assign the rating. Since the rating is what is used most commonly for information retrieval -- either formally by a ranking algorithm or informally in the way information-seekers assign their attention to results -- ways to gauge the deviation from normativity may help correct ratings that feed into an averaged rating.
