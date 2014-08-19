Literature Review
===================

Crowdsourcing is a simple concept that has received considerable research attention in the past few years, alongside a realization of the power of the internet for effectively connecting people in great numbers.

Perhaps unsurprisingly, the concept of crowdsourcing precedes the language that we have developed around it in recent years, and the research in crowdsourcing has not been evenly distributed.

In this section, I provide an overview of crowdsourcing and the notable research within it.

## Definitions and History

Crowdsourcing broadly describes the use of distributed crowds to complete a task that would otherwise have been done by one or a few people.
Beneath this large umbrella, there are many concepts that are either in its purview or overlap with it.

### Crowdsourcing

Crowdsourcing refers to "groups of disparate people, connected through technology, contributing to a common product" [@organisciak_why_2010].
It broadly captures the abilities of the internet, as a communications medium, to efficient connect people.

Nothing about crowdsourcing is fundamentally tied to the internet.
It is entirely possible to bring together large groups of people in different ways, but the access and efficiency of the internet is both
what made the concept seem so novel and what gave it value in the various realms where it was applied. Whereas crowds have long been noted for their collective simplicity [@le_bon_crowd_1896] or irrationality [@mackay_memoirs_1852],
through the internet one can perform human-specific tasks at a scale usually only seen for computational tasks.

The term is recent and has an unambiguous source, but immediately upon introduction, it was adopted and expanded on through public discourse.

The term _crowdsourcing_ was coined in a 2006 Wired article by Jeff Howe [@howe_rise_2006].
Howe was writing from a labor perspective, looking at online marketplaces for people to solve problems and create content.
His focus was on systems like InnoCentive, a site for companies to outsource research and development problems for a bounty, and iStockPhoto, a website that allowed amateur photographers to sell their images as stock photos.
The article briefly looked at user-generated online content, though in the context of television programs that use online video as content.

Despite the somewhat specific initial definition, the term _crowdsourcing_ struck a chord more broadly and was culturally co-opted.
This happened very quickly: within nine days Howe noted a jump from three Google results to 189,000 [@howe_birth_2006].
Within a month, Howe addressed the co-opting of the term, "noticing that the word is being used somewhat interchangably with Yochai Benkler's concept of commons-based peer production" [@howe_crowdsourcing_2006].
He gives his own definition, but also notes that language is slippery and he's "content to allow the crowd define the term for itself (in no small part because [he's] powerless to stop it.)".

Thus, crowdsourcing was adopted to refer broadly to a series of related concepts, all related to people being connected online.
These concepts included
 the 'wisdom of the crowds'[@surowiecki_wisdom_2004], 
 human computation[@ahn_labeling_2004],
 commons-based peer production[@benkler_wealth_2006], and
 free and open-source development [@lakhani_how_2003; @raymond_cathedral_1999].

While there have been occasional semantic attempts to redefine crowdsourcing again as a more granular term, its colloquial adoptions seems to have comented its use as a broad concept.

### Wisdom of the Crowds

_The Wisdom of the Crowds_[@surowiecki_wisdom_2004] is a book written by journalist James Surowiecki in 2004.
The book observes the strength of human decision-making when one in aggregate, and the term 'wisdom of the crowds' has survived the book to refer to cases that make use of this.

### Human-Computation

_Human Computation_ emerged from from the doctoral dissertation work by Luis von Ahn in 2005, popularized alongside the ESP Game [@ahn_labeling_2004; @von_ahn_games_2006]. <!--_-->
It refers to a process of computation -- the "mapping of some input representation to some output representation using an explicit, finite set of instruction" [@law_human_2011] -- performed by humans.

In synthesizing the definition of human computation in relation to crowdsourcing, collection intelligence, and social computing, Quinn and Bederson note two characteristics of consensus:
 that "the problems fit the general paradigm of computation, and as such might someday be solvable by computers", and 
 that "the human participation is direction by the computational system or process" [@quinn_human_2011].

As noted by @law_human_2011, Turing defined the purpose of computers as carrying out operations that humans would normally do.
Human Computation, then, refers to utilizing humans for operations that computers simply are not capable of performed yet.

By this definition, much human computation aligns with crowdsourcing, but large swaths of crowdsourcing are not relevant to human computation.
For example, the types of large creative crowdsourcing projects like t-shirt design website Threadless and online encyclopedia Wikipedia are not human computation.
Inversely, human computation does not have to sustained by self-selected workers; a more traditionally hired closed system can suffice [@law_human_2011].

### Open-Source

An early model reflecting the properties of crowdsourcing is open source software development.

With open source, software's underlying source code is freely accessible.
As a consequence of this form of transparency, open-source development began to adopt some unique properties: users and distributed developers could jump into the code to fix a bug, or add a feature that they wanted to see.
The significance of this became apparent when Linus Torvalds released Linux in 1992 with a development model that accepted external code contributions heartily, released early and often, and followed the pulse of user needs closely.
Eric Raymond compared this form of software development to a bazaar, "open to the point of promiscuity", and contrasted it to the traditionally managed 'cathedral' style seen in the commercial world and earlier open source projects [@raymond_cathedral_1999].

The many hands approach to open-source demonstrated that technologically-connected crowds can coherently delegate and create works.
Like with crowdsourcing, open source software development often does not discriminate on credentials or background; if a contributor is able to make an adequate contribution, it can be used.

Crowdsourcing's roots in open source are noted Jeff Howe's short definition of crowdsourcing, formulated after his Wired article: "the application of Open Source principles to fields outside of software."

### User Innovation and Commons-Based Peer Production

It should not be surprising that recent cultural observers have noted the behaviours seen in crowdsourcing through various lens.
Crowdsourcing emerges from various affordances <!--TODO1 cite affordances (Barry Wellman?-->of modern information networks.
Such as seen with open-source software development, networked society encourages new forms of cultural creation, not by intention but by consequence of the type of connectedness it allows.

As networked society has developed and the internet has grown ubiquitous, a great numbers of scholars have noted the cascading consequences in how individuals interact with culture and participate in the creation of cultural objects.
Two such streams of study are von Hippel's work on _user innovation_ and Benkler's study of the networked information economy, including his concept of _commons-based peer production_.
Both of these borrow from economic and market-driven theory rather than sociological theory, but they offer valuable language for understanding crowdsourcing as a cultural phenomenon.[^consequence]

[^consequence]: One might argue for the term _consequence_ rather then _phenomenon_, because it positions crowdsourcing as neither an accident nor a product of intention, but acknowledges a history for it where it is a side-effect of external influences.

If crowdsourcing is a generalized version of open source principles, von Hippel's work on user innovation[@von_hippel_sources_1988;@von_hippel_democratizing_2006] was an early observation of the trend toward a greater user focus in computer tools and services.

With user innovation, new information products or physical products are generated by users -- those that benefit from using rather than selling the product.
Particularly, von Hippel focuses on 'lead users', users with specific needs that precede broader trends.
These users either develop new products to fill their needs, or modify existing products.

Not all crowdsourcing creation is user innovation, though we see echos of von Hippel's work in companies that turn to the Internet for help in conducting their business, whether it is soliciting feedback and suggestions (e.g. MyStarbucksIdea [^Starbucks]), bug reports, or even work at a bounty (e.g. advertising contests).
User sharing of work performed for themselves is another similar area: for example, when a music service allows users to share their playlists publicly, their realization of a personal need has potential value to other users.

Benkler's work takes a political economy view on what he calls the 'networked information economy', but arrives at a very similar place to von Hippel.
He argues that the unique landscape of the 'networked information economy' empowers
individuals to do more for themselves and in collaborative groups outside of established economic spheres [@benkler_wealth_2006].
This agency allows commons-based peer-production: for innovation and creation to rise out of the commons rather than from firms.

Benkler[@benkler_wealth_2006] singles out two user behaviors borne out of access to information networks, which in turn underlie the rise of crowdsourcing.
First, individuals are more empowered to operate autonomously, for themselves with less reliance on mass-market goods.
At the same time, loose collaborations are easier to organize, allowing individual needs to be pursued at scales beyond the capabilities of a single person.

[^Starbucks]: http://mystarbucksidea.force.com/

<!--### Social Computing-->
<!-- See Law 2011, and see Bederson 2011 -->
<!--
### Collective Intelligence

<!-- also see law and bederson papers -->
-->

### Classical Work on crowds

#### Extraodinary Madness of the Crowds (Mackay [sp?])

#### The Crowd (LeBon)

## Taxonomies of Crowdsourcing

The space of crowdsourcing is large, and there have been a number of attempts to organize the sub-concepts within it or to reconcile it in a space alongside other areas of research.
Some of the most important questions in differentiating crowdsourcing include:

<!--Contributors-->
 * Who are the contributors? What are their skills?
 * How are contributors motivated? Are they paid or do they volunteer for other incentives?
<!--Contributions-->
 * Are contributions new, or do they react to existing documents or entities?
 * Are contributions presented or used as a whole, or are they combined into a larger contribution?
 * What do the contributions look like? Are they subjective or objective?
<!--Beneficiaries and directors -->
 * Who is asking for the contributions? Who is benefiting?
<!--Collaboration-->
 * Is the collaboration indirect (i.e. contributors work on parts independently) or manifest?
<!--Design-->
 * Is the crowdsourcing central to the system?
 * How is quality controlled for?

### Overview

 * Motivation
   * Primary/Secondary, Contribution/commitment
   * Extrinsic/Intrinsic
   * Paid/Volunteer
     * Form of renumeration
 * Type of Work
   * Creative / Reactive
 * Aggregation
  * Selective
  * Integrative
     * Summative / Iterative / Averaged
 * Type of Crowd 
 * Beneficiary
   * Autonomous / sponsored
   * Requester/contributor relationship: Symbiosis / parasitism / commensalism
 * Object of Interest
 * Centrality 
   * Core / Peripheral (incidental)
 * Quality Control



### Motivation

The incentives for contributors to participate in crowdsourcing are complex and not always consistent from contributor to contributor.

#### Intrinsic / Extrinsic Motivation

Motivation in crowdsourcing follows related work in the motivations of humans in general [e.g. @maslow_theory_1943; @alderfer_empirical_1969; @ryan_intrinsic_2000].
While a review of that work is beyond the scope of this work, many views<!--(TODO1: 'many views' needs citations)--> of crowdsourcing motivation adopt the lens of motivation as a mixture of _intrinsic_ factors and _extrinsic_ factors [@ryan_intrinsic_2000].
In the former, fulfillment is internal to the contributor, psychologically motivated, while in the latter the rewards are external.

The spectrum of intrinsic to extrinsic motivators is commonly paralleled in crowdsourcing literature through dichotomy of paid and volunteer crowdsourcing [<!--TODO1-->].

Paid and volunteer crowdsourcing are not exclusive, and there are extrinsic motivators beyond money.
However, this separation is common because of it accounts for some of the starkest differences between how crowdsourcing is implemented and motivated.
There are differing design implications around people being paid and performing work for other reasons: money is a direct currency for obtaining labor, while convincing volunteers to contribute requires a greater sensitivity of their needs and ultimately more complexity in engineering the crowdsourcing system.

It has been shown that intrinsic motivation still plays a part in paid crowdsourcing [@mason_financial_2010], and some systems mix intrinsically motivated tasks with payment or the chance at renumeration.
For example, some contest-based marketplaces are popular among users looking to practice their skills, such 99Designs for designers or Quirky for aspiring inventors.

Some taxonomies make a distinction between forms of payment.
@geiger_managing_2011 makes the distinction between fixed renumeration, with a pre-agreed fee, and success-based renumeration, such as contest winnings or bonus.

#### Specific Motivators

<!-- TODO1
 - commitment/contribution
 - add more from @kraut_building_2011; @kraut_encouraging_2012
-->

Taxonomies of specific motivators seen in crowdsourcing have been previously attempted, with varying results that touch on similar issues.
In @organisciak_why_2010, I identified a series of primary and secondary motivators from a diverse set of crowdsourcing websites.
Below I adopt the categories from that study, as they accommodate related work well.

_Primary motivators_ are those that are considered critical parts of a system's interaction.
Systems do not require all of them, but to attract and retain contributions, they need one or more of them.
In contrast, _secondary motivators_ are system mechanics that generally were not observed as necessary components of a system, but were elements that encourage increased interaction by people that are already contributors.
@kraut_building_2011 similarly differentiate between encouraging contributions, and encouraging commitment.

The motivators in @organisciak_why_2010 were observed from a content analysis of 13 crowdsourcing websites and subsequent user interviews.
For sampling, 300 websites most commonly described as 'crowdsourcing' in online bookmarks were classified with a bottom-up ontology, then the 13 final sites were selected through purposive stratified sampling, to represent the breadth of the types of crowdsourcing seen.

The primary motivators seen in @organisciak_why_2010 were:

 * __Money and extrinsic reward__. Paying crowds is not particularly novel, but it is the most reliable approach for collecting contributions.
In the absence of other motivators or where certainty is required, reimbursement will attract contributors.
However, it also introduces bottlenecks of scale, and negates some of the benefits of intrinsic motivation.
@mason_financial_2010 note that, while intrinsic motivation still exists on paid crowdsourcing platforms, it is overwhelmed when tasks are too closely tied to reimbursement, resulting in contributions that are done minimally, briskly, and with less enjoyment.
 * __Interest in the Topic__. Sites that cater to people that have a pre-existing interest in their subject matter or outcomes tend to get longer, more consistent engagement.
For example, the Australian Newspaper Digitisation Project (now know as a larger project called Trove) found that that amateur genealogists, with pre-existing communities and a willingness to learn new technologies, took “to text correction like ducks to water” @holley_many_2009.
Similarly, Galaxy Zoo found similar success with amateur astronomers.<!--TODO2 citation-->
 * __Ease of entry and ease of participation__. Low barriers to entry and participation were cited by every single user interviewed for the study.
Wikipedia has a low barrier to entry but its interface and demanding community standards have been criticized in recent years for raising the barrier to participation [@angwin_volunteers_2009; @sanger_fate_2009].
 * __Altruism and Meaningful contribution__. People like to help if they believe in what they’re helping.
Writing about Flickr Commons, Library of Congress noted that they "appear to have tapped into the Web community's altruistic substratum by asking people for help.
People wanted to participate and liked being asked to contribute". [@springer_for_2008].
With Galaxy Zoo <!-- TODO2 cite GZ study and my own-->, people often cite the fact that it is a tangible way to contribute to real science.
 * __Sincerity__. <!-- TODO1 write about sincerity -->
 * __Appeal to knowledge and opinions__. One curious source of motivation observed in the study is simply asking the right people.
Online visitors presented with a question are often compelled to answer it simply because they know the response, be it part of their knowledge, skills, circumstance, or opinions.

<!---
TODO1
Talking through taxonomies
Centrality
Sincerity
Seen in academia with scholars getting weary of free work for Elsevier
Novelty
vs. curiosity?

Appeal to knowledge
Implicit vs. explicit
irritation as implicit appeal to knowledge: Mike’s first Wikipedia contribution

--> 

One motivator overlooked in @organisciak_why_2010 is _novelty_.
Novelty is ephemeral and unsustainable, but nonetheless a unique idea can attract contributions for a short amount of time.

The supplemental secondary motivators observed in the study were:

 * __"Cred": External indicators of progress and reputation__.
 * __Feedback and impression of change__.
 * __Recommendations and the social__.
 * __Window fixing__.

<!-- TODO1: brief descriptions of secondary motivators -->

<!-- TODO1: Discuss Kraut and Resnick -->

### Aggregation

@schenk_crowdsourcing_2009 and @geiger_managing_2011 discuss two types of aggregation: _integrative_ and _selective_.
Integrative aggregation pools contributions into a common product, like a wiki, while selective aggregation tries to choose the best contributions, such as in contests.

This simple separation hides some of the complexity seen in aggregation approaches.
Integrative aggregation can be approached in a number of ways.
I argue the following finer views on integrative aggregation are useful:

 * __Summative__. In summative aggregation, people contribute to an ever-expanding base of information. Contributions are clearly part of a bigger whole, but their individual form is retained. Examples: online reviews
 * __Iterative__. In versioned aggregation, multiple contributions are used toward a larger product, but the contributions are permutations of a common work. Examples: wikis
 * __Averaged__. In averaged aggregation. Contributions are still pooled, but a consensus-seeking processing tries to reconcile them. Examples: ratings, multiple-keyed classifications 
<!-- COMMENT: This can be its own short paper -->

<!-- See also @quinn_human_2011 -->

### Director / Beneficiary

Who directs the crowdsourcing activities and who benefits from the contributions?

Considering the director of a crowdsourcing task, @zwass_cocreation_2010 distinguishes between _autonomous_ and _sponsored_ forms of crowdsourcing.

_Sponsored_ crowdsourcing is when there is a entity at the top soliciting the contributions: a client of sorts. 
In contrast _autonomous_ crowdsourcing serves the community itself.
Autonomous crowdsourcing can be in a centralized location, like a community-written wiki or video-sharing website, or exist loosely, as in blogs.
@zwass_cocreation_2010 explains: "Marketable value is not necessarily consigned to the market—it may be placed in the commons, as is the case with Wikipedia."

Considering the soliciting party as a case of sponsorship or autonomy is useful, though a further distinction should be made between the collective (the _crowd_) and the individual (the _contributors_).
Crowds collaborate toward a shared goal, as with Wikipedia or a type of open-source software development, while individuals are more self-possessed.
For example, in citation analysis through web links, as was done with PageRank (<!--TODO1 cite pagerank paper-->), the large-scale benefits of the crowds are unrelated to what the individuals creating the links are thinking.

<!-- TODO1: next few lines -->

 - The relationship between the director 
 - My effort vs. my benefit vs. their benefit

 - Symbiosis (both benefit) vs. Parasitism (one benefits at the expense of the other) vs. Commensalism (relationship between two organisms where one organism benefits without affecting the other)


### Object of Interest

I

<!-- TODO1: Creation vs. Reaction -->
* Creation vs. Reaction

### Criticality of Crowdsourcing

<!-- TODO1 I used "centrality above, is it better or worse than criticality?-->

<!-- TODO1 Write this section -->
 * How important in the crowdsourcing to the larger project? 
 * Peripheral / Core
 * Fairly neglected in literature
 * Relates to incidental crowdsourcing, which looked at the space of 'peripheral and non-critical' crowdsourcing [@organisciak_incidental_2013]
 * Notes
   * Soylent: is Soylent incidental or full-system?

### Type of Work

The type of work performed by crowds can vary greatly in its complexity and style. 

One notable form of crowdsourced work is represented by the concept of human computation, where "the problems fit the general paradigm of computation, and as such might someday be solvable by computers" [@quinn_human_2011].
Understanding that crowdsourcing is not solely human computation tasks, the inferred corollary to these types of tasks are those that are expected to be too complex for computers: creative, judgment-based, or requiring critical thinking.
Creative crowdsourcing might take the form of artistic human expression, such as online contributors collectively animating a music video (Johnny Cash Project) or the sum of Youtube.
Opinion or judgement-based crowdsourcing often does not have a definitive answer, and is seen in areas such as movie reviews or product ratings.
More complex critical thinking tasks do not fit the paradigm of computation and are much more complex, such as Wikipedia or protein-folding project FoldIt.

@schenk_crowdsourcing_2009 distinguish between three types of crowdsourcing.
First are routine tasks, such as crowdsourcing of OCR text correction with ReCaptcha.
The majority of human computation tasks would likely fall within this category of rote tasks.
Second are complex tasks, such are open-source software development.
Finally, they suggest creative tasks. An examples would be a system like MyStarbucksIdea, where people suggest changes they would like to see at the coffee chain Starbucks.
Since @schenk_crowdsourcing_2009 focus on crowdsourcing when there is a client, usually a corporate client, they do not consider the wider space of creative crowdsourcing tasks.

#### Subjective vs. Objective Crowdsourcing

<!-- TODO2 add research -->
Another parallel being drawn in recent years is that of objective or subjective crowdsourcing tasks.

Objective tasks are assumed to have an authoritative truth, even if it is unknown.
For example, in transcribing scanned texts, it is assumed that there is a 'correct' passage in the work that has been scanned.

In contrast, subjective tasks have a variable concept of correctness, as they are are not expected to be consistent between contributors.

Human computation undertakings are commonly objective tasks, and taxonomic effort of human computation -- such as Schenk's split of routine, complex, and creative -- does not touch on the subjective/objective separation in a direct way [@schenk_crowdsourcing_2009].

This designation also applies to aggregation.
Multiple contributions can be aggregated with an objective assumption, expecting a truth a deviations from it as bad work or data.
Other systems try to aggregate a normative opinion or judgment of subjective contributions.
This latter assumption is seen often in opinion ratings, such as film or restaurant ratings: just because there is an aggregated rating presented, there is an understanding that some people might disagree and that they are not incorrect for doing so.

### Type of Crowd

Vukovic and Batolini [@vukovic_towards_2010] define two extremes of crowd types: _internal_ and _external_.
Internal crowds are composed solely of contributors from the organization that is crowdsourcing, if it is thus centralized.
External crowds are members outside of the institution.
Vukovic and Batolini also note that _mixed_ crowds are observable.

#### Necessary Skills

A potential separation between crowd methods is the skills required to perform the work.
_Unskilled_, _locally training_, and _specialized_ are all seen among crowdsourcing systems.
Where unskilled labour encourages contributions from anybody at anytime, systems that use methods for authority control leave certain tasks to long-term, involved contributors.
For example, on Stack Overflow, a user's administrative ability grows more open as they contribute more to the management of the system, a way of ensuring that those users have learned the proper management of the site.

### Quality Control

The classification of human computation systems by @quinn_human_2011 includes quality control as a primary dimension.
Here they consider how the system protects against poor contributions, such as reputation systems, input or output agreement, multi-contribution redundancy, a crowd review workflow, expert review, and designs that disincentivize poor quality or obstruct the ability to do so.

### Common Design Patterns

A number of design patterns have been established and repeated in crowdsourcing, some organically and some, like the ESP Game, carefully engineered.
These include:

__Microtasking__: the concept of splitting a large task into many smaller parts to be worked on by different people was an important tide change in the history of open-source software [@raymond_cathedral_1999], and the same models have been emulated in crowdsourcing.
With so-called 'microtasks', the overhead to participation is low, and the pressure or dependence on any one contributor is low.

__Gamification__: Gamification is predicated on a reframing of what would traditionally be labour into a game-like or leisurely tasks.
Gamification follows in the philosophy, as Twain wrote, "that work consists of whatever a body is obliged to do, and that play consists of whatever a body is not obliged to do." [@twain_adventures_1920]
The ethics of gamification have been argued for as an extension of contributors' desire to perform meaningful work.
Shirky, for example, argues that people have a 'cognitive surplus' to give during their leisure time, a desire to spend their free time doing useful, creative or stimulating tasks.
Gamification is an extension of serious games -- games meant to do more than simply entertain [@abt_serious_1987; @michael_serious_2005; @ritterfeld_serious_2010].
In areas of crowdsourcing and human computation, Games with a Purpose [@von_ahn_games_2006] is an extension of serious games in the context of distributed, collaborative crowds.
Harris and Srinivasan [@harris_applying_2012] consider the applicability of applying games with a purpose to various facets of information retrieval, concluding it is a feasible approach for tasks such as term resolution, document classification, and relevance judgment.
Eikhoff et al. [@eickhoff_quality_2012] have investigated the gamification of relevance judgements further, augmenting the financial incentive on paid crowdsourcing platforms.

__Opinion Ratings__: A standard and highly familiar activity online is soliciting qualitative judgments from visitors.
These ratings have different granularities, most commonly 5-level (e.g. 1 to 5 stars) or binary (e.g. thumbs up/thumbs down).
Unary judgments have grown in popularity as ways of showing support with minimal effort.
Their popularity seems to stem from when social network Friendfeed implement a unary voting button labelled, succinctly, "I like this" [@taylor_friendfeed_2007] and subsequently when similar wording was adopted by Facebook after acquiring Friendfeed.

_Platforms_: There is a cottage industry of services that offer the infrastructure for requesters to crowdsourcing, using in domain-specific ways.
For example, Kickstarter and Indiegogo ease crowdfunding, 99Designs enables contest-based design tasks, and Mechanical Turk offers the tools and people for microtasks.

_Contests_: In the contest design pattern, a requester offers a bounty to the best solution to a problem or task of their choosing, such as in design (e.g. 99Designs), coding (e.g. TopCoder), and research and development (e.g. Innocentive).
Here the "crowdsourcing" is simply using internet to connect to many potentially talented individuals, though contests have been integrated into more collaborative workflows.
For example, with the collaborative product incubator Quirky, the community votes on the best ideas to develop into products, discussing how to improve the ideas openly.
One reason for this may be that, in addition to the large portion of future profits that an idea originator may earn if it is voted into development, the rest of the community also receive points for supporting the best ideas.

_Wisdom of crowds_: Wisdom of the crowds is a design pattern which emphasizes the effectiveness of human judgment in aggregate [@surowiecki_wisdom_2004], provided the participants are rationally organized.
This is embodied by multiple-keying for tasks which are expected to have a real answer, such as classifying galaxies, or averaging opinions for subjective tasks to derive a normative judgment.

### Other Taxonomies

@geiger_managing_2011 identify crowdsourcing processes by four defining characteristics: the pre-selection process for contributors, the accessibility of peer contributions, the aggregation of contributions, and the form of renumeration for contributors.
While these are all valid ways of viewing crowdsourcing, I believe more qualitative or naturalistic separations are also necessary in order to understand crowdsourcing websites, such as motivation or centrality.

@quinn_human_2011 provide a taxonomy of human computation along six facets: motivation, quality control, aggregation, human skill, process order, and task-request cardinality.
Their taxonomy is thorough and relevant to crowdsourcing in general.

<!--
## Top research in crowdsourcing

<!-- TODO1: write -->
<!--
### ESP Game

### VizWiz

### Soylent

### Mason and Watts

### Kraut and Resnick


### Benkler - Wealth of Networks
-->

## Crowdsourcing in the Wild

There is a great deal of crowdsourcing "in the wild", including notable successes and failures.
Some of the successful project provide archetypal blueprints of crowdsourcing dimensions, and will be good to understand moving forward.

__Wikipedia__ is a collaboratively written encyclopedia, where the majority of contributors are volunteers.
Wikipedia, formed in 2001 and now containing 4,579,708 articles (as August 13, 2014 [@_wikipedia:size_2014]),<!--_--> has an open editing policy that allows anonymous contributions and only restricts who can edit a page for few special cases where vandalism is likely.
The policy also ensures that readers are latent editors [@shirky_here_2009], helping police, correct, and improve poor quality content.

__Threadless__ is a community of artists that design and vote on t-shirt designs.
Winning designs are licensed by Threadless to print and sell, providing a commission to the designer and additional profit for subsequent shirt reprintings.

The __Netflix Prize__ was a competition run by film rental (and now streaming) company Netflix, offering a million dollar bounty to the person or team that could improve film recommendation by 10% over the root-mean-squared-error performance of Netflix's own system.
Claiming the prize required the winner to publish their results but did not require transfer of intellectual property, only a license for Netflix.
A 2008 New York Times article about the prize noted that the community of participants were notably open in sharing their insights[@thompson_if_2008].

### Academic
<!-- TODO1 Academic Projects
#### Zooniverse

#### FoldIt

#### ReCaptcha
-->

<!-- TODO2
## Failures and Concerns

 but don't overdo it-->

<!-- TODO2
### Ethics
-->


## Research in Information Science

<!-- TODO1 -->

<!-- Much TODO1 -->

In information retrieval, the focus on crowdsourcing has been predominantly in the use of paid crowds for generating evaluation datasets, though there have been efforts to use crowds to improve document representation or even query specific ranking.

The benefit of paid crowds for relevance judgments is that it allows on-demand evaluation datasets to exist.
This has been a costly and exhausting process in the past, making it difficult to perform IR research on more novel datasets than the judged sets available from TREC.
Relevance judgments benefit from the agreement among multiple human

### Crowdsourcing for evaluation

- relevance judgments
- alonso et al.
- TREC crowdsourcing track

### Crowdsourcing in the machine

- PageRank
- Lamere - social tagging

## Research relevant to study

### Coding Aggregation / Ground Truth generation


<!--TODO1: Rename header-->




