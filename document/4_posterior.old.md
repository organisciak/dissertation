Various types of crowdsourcing data have been used for understanding information retrieval documents, including page links[@page_pagerank_1999], microblogging discussion of the documents[@dong_time_2010], social tags[@lamere_social_2008], <!-- TODO2: having trouble finding reasearch for this, but there has to be something out there about using "opinion ratings" in IR--> and implicit relevance feedback[@agichtein_improving_2006].
On contribution-heavy Pinterest, this study will look at how curated lists can expand a system's language model of the typically text-sparse Pinterest documents.

## Scope

My past research has already looked at issues around interpreting a contribution in paid-crowdsourcing, post-collection.
It is also generally a well-explored space in research [notably including: @ipeirotis_quality_2010; @raykar_supervised_2009; @eickhoff_increasing_2012; @sheng_get_2008; @welinder_online_2010; @whitehill_whose_2009; @snow_cheap_2008; @novotney_cheap_2010].
Others have looked at similar situations of consensus-making among experts [@wallace_who_2011].

## Motivation 

It is common to see differences in the habits of contributors that are trying to achieve the same thing.
Many tasks that assume an objective, correct contribution are nonetheless are subject to interpretation, especially in volunteered contributions where detailed codebooks are deterrents to casual contributions.
Likewise, even when a task is subjective, where a contribution is understood to be related to each individual's tastes and opinion, there are still problems of reliability beyond differences of opinion.
One person's definition of a 3-star opinion judgment or their threshold for what is needed to click an approving 'thumbs up' button might be different from another person's, even if their underlying opinions are identical.

Speaking about tagging in the context of information retrieval, @zhou_exploring_2008 warn that "a tag represents an abstract of the document from a _single_ perspective of a _single_ user."

<!--## Subjective vs. Objective Assumptions-->

Subjective crowdsourced contributions can be treated either through a personalized approach and a consensus-seeking approach.

For personalization, a system assumes that each opinion is representative of a specific type of user, and that the data can be used to model the individual users.
Collaborative filtering usually makes this assumption.
Doing so keeps closer to a user's tastes in highly divisive domains, separating Black Sabbath from Black-Eyed Peas, or Doctor Zhivago from Doctor Doolittle.
This was the assumption made in @organisciak_personalized_2013.

Another approach to subjectivity is to seek consensus.
This approach is not as nuanced to the differences of opinions between humans, but has a few benefits.
First, it is easier to communicate to users a single description or opinion.
If five out of six users call a film 'funny' but the last person states the opposite, it's easier to tell a user at a glance that the film is 'funny' then trying to communicate the nuance.
Secondly, it accommodates users that have never been seen before: recommending the option that has the maximum likelihood of satisfy any user is safe for new users.
This is the _Beatles_ option: even if you admit, rightly, that the context is highly subjective, you still need to consider the global best-guess.

In a context like Pinterest, users might search for terms that do not have a single right answer, but rather one that is interpreted or negotiated.
When a user searches for 'rustic wedding' or 'cute dress', it is difficult to infer what their interpretation of 'rustic' is or what they find to be 'cute' what they consider 'rustic' or 'cute' without knowing anything about the user.

It is this latter approach to representing subjective aspects of document, to seek consensus among many individuals, which is the focus of this study.
When using crowdsourced information to inform a general understanding of a document, how do you model the variety of interpretations and what are the pitfalls to avoid?

<!--Much work has been completed in posterior corrections for paid crowdsourcing contributions.-->
<!--## Measuring Reliability of Human Raters-->

#### Evaluation Queries

Additional evaluation queries will be sampled from auto-complete suggestions on Pinterest.
When a user starts to type in a query, five suggestions appear.
For example, typing 'r' will suggest 'recipes', 'red hair', 'rings', 'relationship quotes', and 'rustic wedding'.
These appear to be the five-most probable queries starting with the provided string.
For an insight of what types of queries are in the sampling frame and more generally what topics are popular among Pinterest users, Table \ref{pop_pinterest} lists the auto-complete suggestions when each letter of the alphabet is entered into the search box.

It should be noted, however, that a sample frame of just the most popular terms is too general.
To shift the sample away from the head of the distribution, the sampling frame will also include 500 queries derived from auto-complete suggestions based on two character strings: specifically, the one hundred most common two-character pairs occurring at the start of the English language.[^twoletter]

[^twoletter]: Using the frequencies calculated by @norvig_english_, these are: TH, OF, AN, IN, TO, CO, RE, BE, FO, PR, WH, HA, MA, WI, HE, IS, NO, WA, ON, DE, ST, SE, AS, IT, CA, HI, SO, WE, AR, DI, MO, AL, SU, PA, FR, ME, OR, SH, LI, CH, WO, PO, EX, BY, AT, FI, PE, BU, LA, NE, UN, LE, SA, TR, HO, YO, LO, DO, FA, SI, GR, EN, AC, MI, TE, BO, BA, GO, SP, OU, PL, EV, AB, TA, RA, US, BR, CL, DA, GE, TI, FE, AD, MU, IM, AP, RO, NA, SC, PU, EA, CR, VI, CE, OT, AM, AG, UP, RI, VE.

For each query, a description of what constitute the different levels of relevance will be written by myself, and the relevance of the first one hundred results will be rated by paid workers on a graded relevance scale.

-------------------------------------------------------------------------------
appetizers, art,
ab workout, animals, apartment decorating, christmas, christmas decorations,
chicken recipes, crockpot recipes, christmas crafts, diy, dinner recipes,
dresses, desserts, disney, easter, engagement rings, elf on the shelf ideas,
eye makeup, easter crafts, food, fashion, funny, funny quotes, fall, garden,
gift ideas, gluten free, girls bedroom, gardening, hair styles, hair, healthy
recipes, halloween costumes, halloween, inspirational quotes, interior design,
ikea, i love you, italy, jewelry, jennifer lawrence, jello shots, jeans, jokes,
kitchen, kitchen ideas, kids crafts, kitchen decor, kids, love quotes, love,
living room, long hair, lingerie, makeup, medium hair styles for women, mothers
day, mothers day gifts, master bedroom, nail art, nails, nail designs, nail art
designs, nail art for short nails, ombre hair, organization, organization tips,
outfits, organizing, prom dresses, pregnancy, prom hair, paleo, puppies, quotes,
quinoa, quinoa recipes, quilts, quotes about change, recipes, red hair, rings,
relationship quotes, rustic wedding, spring fashion, shoes, short hair styles
for women, short hair, sexy, tattoos, thanksgiving, tattoo ideas, thanksgiving
recipes, travel, updos, updo hairstyles, ugly christmas sweater, updos for
medium length hair, valentines ideas, valentines day gifts for him, valentines
day, vintage, valentines crafts, wedding, wedding dresses, wedding hair,
wedding rings, wedding ideas, xmas, x, xmas crafts, xmas decorations, x rated,
yoga, yoga poses, yoga pants, yellow, yoga workout, zucchini recipes, zucchini,
zac efron, zara, zucchini bread

-------------------------------------------------------------------------------
Table: Popular queries on Pinterest, showing the 5 search input auto-complete suggestions for each letter of the alphabet. Though Pinterest requires users to be logged-in, this list does not appear to be personalized: the same list was derived when I asked other users to run the collection code. \label{pop_pinterest}



### Related question: stylistic congealment in crowdsourcing 

How does the stylistic variance of contributions change through the lifespan of a system?
We hypothesize that as crowdsourcing systems grow in size, their contributions also grow less variant in their approach.
This question is related to the research questions of the proposed dissertation and this chapter, and will be useful to consider it.

- Directionality of influence
  - _If_ structure is being solidified: why is it being systematized?
- Contribution attrition 
- Simplicity vs. Hand-holding

If our hypothesis holds true, it would suggest that system designers (or self-governed crowds) steer their system toward more algorithmically tractable forms of contributions over time.
Such a shift might be afforded by crowds large enough to allow the attrition associated with more complexity, or by the increase of well-experienced participants that are comfortable adapting to tighter guidelines.

One notable example of this type of shift is happening is in Wikipedia.
Wikipedia does not set explicit rules, but conventions are established and policed by the community.
For example, after a recommendation in 2006, editors began insisting on well-sourced information underlying all significant statement on the website [@wales_insist_2006].
The structure has also enabled efforts such as DBPedia, structured data representing the entities in Wikipedia pages.
It has also informed information retrieval approaches to understanding entities beyond a query, such as with Google's Knowledge Graph and Microsoft's Satori.
