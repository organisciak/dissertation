# A Typology for Crowdsourcing

\newthought{The scope of crowdsourcing is broad} and the myriad approaches to collaboration among distributed crowds lend a lack of coherence which may intimidate a practitioner.
To address the sprawl and provide a structure for the rest of this work, this chapter presents a typology of crowdsourcing for information science.[^iConfCite]

[^iConfCite]: A version of this chapter was previously presented at iConference 2015 with co-author Michael B. Twidale [@organisciak_design_2015].
 Co-authorship notes in appendix. Copyright retained by authors.

Crowdsourcing, the collaboration of distributed contributors on a common product, promises value to library and information science in a variety of ways.
Information systems and digital repositories deal with overwhelming amounts of materials that can be annotated with help from many hands, and the relationship that cultural heritage collections hold with their audience can potentially be strengthened by pursuing meaningful collaboration between the two.
@holley_crowdsourcing_2010 notes some potential uses to crowdsourcing, including tapping into the expertise of the community,
building loyalty of users while tapping into their altruistic tendencies, adding value to data such as with quality ratings, and improving information access to materials.

\newthought{There have been earlier attempts} at crowd taxonomies [e.g.
@geiger_managing_2011; @vukovic_towards_2010; @schenk_crowdsourcing_2009; @rouse_preliminary_2010].
However, these have primarily emerged from other domains, with a focus on economic or quantitative variables.
Perhaps the most valuable prior work is in Quinn and Bederson's taxonomy of human computation [-@quinn_human_2011], a field focusing on humans performed work in the mode of computing.
Human computation often overlaps with crowdsourcing but focuses on a more narrow type of labor and is not necessarily performed by distributed crowds.
@wiggins_goals_2012 also offer a typology of a useful related concept, citizen science.

@geiger_managing_2011 identify crowdsourcing processes by four defining characteristics: the pre-selection process for contributors, the accessibility of peer contributions, the aggregation of contributions, and the form of remuneration for contributors.
While these are all valid ways of viewing crowdsourcing, more qualitative or naturalistic models are also necessary in order to understand crowdsourcing websites, such as motivation or centrality.

@schenk_crowdsourcing_2009 provide a management science view on crowdsourcing, with a typology along two dimensions.
First, crowdsourcing is distinguished by how work is collaborated on: in an integrative or selective manner.
Secondly, the type of work that is performed is faceted into routine, complex, and creative tasks.
@vukovic_towards_2010 take yet another frame, of business-centric crowdsourcing uses.
Crowd type, incentives, quality assurance, government and legal, and social factors play into a parsing of crowdsourcing in this scope.
Finally, @rouse_preliminary_2010 propose a taxonomy based on the nature of the crowdsourcing, focusing on capabilities (simple, moderate,
sophisticated), benefits (community, individual, or mixed), and motivation.
Their hierarchical taxonomy notes motivations relative to the other two conditions.

Each of these taxonomies has features to inform our understanding of crowdsourcing.
However, they are generally grounded in different domains than information science, focusing more on crowds as labour and missing ways of conceptualizing the product or the volunteer contributor that are useful for our purposes.

## An Information Science Typology of Crowdsourcing

The space of crowdsourcing is large, and there have been a number of attempts to organize the sub-concepts within it or to reconcile it in a space alongside other areas of research.
Some of the most important questions in differentiating crowdsourcing include:

-   Motivation: How are contributors motivated? Are they paid or do they volunteer for other incentives?

-   Crowd type: Who are the contributors? What are their skills?

-   Contribution type: Are contributions new, or do they react to existing documents or entities?
    What do the contributions look like? Are they subjective (involving
    opinions or ranking) or objective (there is an agreed best
    response)?

-   Aggregation and style of collaboration: Are contributions preserved in the form they are submitted, or are they combined into a larger contribution?
    Is the collaboration indirect (i.e. contributors work on parts independently) or truly collaborative?
    How is quality controlled for?

-   Beneficiary / Director: Who is asking for the contributions? Who is benefiting?

-   Centrality: Is the crowdsourcing central to the system?


Table 1 provides an overview of this crowdsourcing typology, including references when the dimensions are influenced closely by prior work.
In the next section, we consider existing work more thoroughly, adapting it into our typology, explain how we reinterpret it, and argue for new facets not present in non-IS taxonomies or classifications.



\bigskip
\begin{center}
\footnotesize

\begin{table}[h]
\begin{tabular}{p{3cm}p{6cm}p{6cm}}
\toprule Category & Description & Sub-categories \\
\midrule Motivation &
How are contributors incentivized? &
Primary/Secondary \autocite{organisciak_why_2010}, Contribution/commitment \autocite{kraut_building_2011} \\
&
&
Extrinsic/Intrinsic \\

\midrule Type of Crowd &
What are the dimensions of the crowd and how they are expected to perform? &
Unskilled, locally trained, specialized \\
&
&
heterogeneous / diverse \\

\midrule
Type of Contribution &
What is the nature of the work? &
Human computation / Creative \\
&
&
Generative / Reactive \\
&
&
Subjective / Objective \\

\midrule Aggregation &
How are diverse contributions reconciled into a common product? &
Selective /Integrative \autocite{geiger_managing_2011, schenk_crowdsourcing_2009} \\
&
&
Summative / Iterative / Averaged \\

\midrule Beneficiary / Director &
Who benefits? What is their relationship to contributors? &
Autonomous / sponsored \autocite{zwass_cocreation_2010} \\
&
&
Crowd / individual \\

\midrule Centrality &
How central is the crowdsourcing to the overall project? &
Core / Peripheral \autocite{organisciak_incidental_2013} \\

\bottomrule
\end{tabular}
\caption[][-24pt]{Overview of facets in this study's crowdsourcing typology.}
\end{table}
\end{center}
<!--_-->

\newpage

### Motivation

The incentives for contributors to participate in crowdsourcing are complex and not always consistent from contributor to contributor.

\newthought{Motivation in crowdsourcing} follows related work in the motivations of humans in general [@maslow_theory_1943; @alderfer_empirical_1969; @ryan_intrinsic_2000].
While a review of that work is beyond the scope of this paper, many views of crowdsourcing motivation adopt the lens of motivation as a mixture of *intrinsic*
factors and *extrinsic* factors [@ryan_intrinsic_2000].
In the former,
fulfillment is internal to the contributor, psychologically motivated,
while in the latter the rewards are external.

The spectrum of intrinsic to extrinsic motivators is commonly paralleled in crowdsourcing literature through a dichotomy of paid and volunteer crowdsourcing
[@rouse_preliminary_2010; @geiger_managing_2011; @kraut_building_2011; @schenk_crowdsourcing_2009].

Paid and volunteer crowdsourcing are not exclusive, and there are extrinsic motivators beyond money.
However, this separation is common because it accounts for some of the starkest differences between how crowdsourcing is implemented and motivated.
There are differing design implications around people being paid and performing work for other reasons: money is a direct currency for obtaining labor, while convincing volunteers to contribute requires a greater sensitivity of their needs and ultimately more complexity in engineering the crowdsourcing system.

It has been shown that intrinsic motivation still plays a part in paid crowdsourcing [@mason_financial_2010], and some systems mix intrinsically motivated tasks with payment or the chance at remuneration.
For example,
some contest-based marketplaces are popular among users looking to practice their skills, such 99Designs for designers or Quirky for aspiring inventors.

Some taxonomies make a distinction between forms of payment.
@geiger_managing_2011 makes the distinction between fixed remuneration, with a pre-agreed fee, and success-based remuneration, such as contest winnings or bonus.

\newthought{Taxonomies of specific motivators} seen in crowdsourcing have been previously attempted, with varying results that touch on similar issues.
@organisciak_why_2010 identified a series of primary and secondary motivators from a diverse set of crowdsourcing websites.
We adopt the categories from that study for our typology, as related work is accommodated well.

*Primary motivators* are those that are considered critical parts of a system's interaction.
Systems do not require all of them, but to attract and retain contributions, they need one or more of them.
In contrast,
*secondary motivators* are system mechanics that generally were not observed as necessary components of a system, but were elements that encourage increased interaction by people that are already contributors.
[@kraut_building_2011] parallel the primary/secondary split by differentiating between encouraging contributions and encouraging commitment.

The motivators in [@organisciak_why_2010] were observed from a content analysis of 13 crowdsourcing websites and subsequent user interviews.
For sampling, 300 websites most commonly described as ‘crowdsourcing’ in online bookmarks were classified with a bottom-up ontology, then the 13 final sites were selected through purposive stratified sampling, to represent the breadth of the types of crowdsourcing seen.
These cases were studied in case studies followed by user studies.

Below is a list of primary motivators seen in @organisciak_why_2010, but also paralleled and supported by the similar broad view social study published by @kraut_building_2011.

-   **Money and extrinsic reward**.
    Paying people is the most reliable
    approach for collecting contributions, and is an option in the
    absence of other motivators or where certainty is required.
    However,
    it also introduces bottlenecks of scale, and negates some
    benefits of intrinsic motivation.
    @mason_financial_2010 note that, while intrinsic
    motivation still exists on paid crowdsourcing platforms, it is
    overwhelmed when tasks are too closely tied to reimbursement,
    resulting in contributions that are done minimally, briskly, and
    with less enjoyment.
    @kraut_building_2011 point to psychology research that shows the
    ability of reward in other settings to subvert intrinsic motivation,
    leading to less interested contributors.

-   **Interest in the Topic**.
Projects catering to people that have a
    pre-existing interest in their subject matter or outcomes tend to
    get longer, more consistent engagement.
For example, the Australian
    Newspaper Digitisation Project (now part of a larger project called
    *Trove*) found that that amateur genealogists, with pre-existing
    communities and a willingness to learn new technologies, took "to
    text correction like ducks to water" [@holley_many_2009].
Similarly,
    Galaxy Zoo found similar success with amateur astronomers helping
    annotate galaxies.
Kraut and Resnick likewise argue that asking
    people to perform tasks that interest them results in more
    engagement than asking people at random.

-   **Ease of entry and ease of participation**.
Low barriers to entry
    and participation were cited by every user interviewed in @organisciak_why_2010.
    Wikipedia has a low barrier to entry but its interface and demanding
    community standards have been criticized in recent years for raising
    the barrier to participation @angwin_volunteers_2009
    [@sanger_fate_2009].
"Simple requests" generally lead to more
    productive contributions, according to @kraut_building_2011.

-   **Altruism and Meaningful contribution**.
    People like to help if
    they believe in what they’re helping.
    Writing about Flickr Commons, Library of Congress noted that they "appear to have tapped into the Web community's altruistic substratum by asking people for help.
    People wanted to participate and liked being asked to contribute" [@springer_for_2008].
    With Galaxy Zoo, the appeal for many
    contributors that it offers a tangible way to contribute to
    real science.
    @rouse_preliminary_2010 also argues for altruism's place in a taxonomy of
    crowd motivation.
    @kraut_building_2011 argue that appeals to the value of a contribution
    are more effective for people that care about the domain.

-   **Sincerity**.
"People are more likely to comply with requests the
    more they like the requester," @kraut_building_2011 note.
A recurring theme among
    interview participants in @organisciak_why_2010 was whether a project seems sincere or
    exploitative.
Since crowd contributions often exist as a parallel to
    labour, crowds are often weary of anything that smells like them
    being taken advantage of.

-   **Appeal to knowledge and opinions**.
One curious source of
    motivation is simply asking the right people.
Online visitors
    presented with a question are often compelled to answer it simply
    because they know the response, be it part of their knowledge,
    skills, circumstance, or opinions.
The ‘appeal’ itself can be
    explicit or implicit.
@kraut_building_2011 refer to this sort of
    appeal as "Ask and Ye Shall Receive", asserting that online
    communities stand to benefit from easily accessible lists of what
    work needs to be done.
They also assert that direct requests for
    contribution are better than broadcast.

One motivator overlooked in @organisciak_why_2010 is *novelty*.
Novelty or curiosity is ephemeral and unsustainable, but nonetheless a unique idea can attract contributions for a short amount of time.
    @kraut_building_2011 also note structure, goals,
and deadlines as incentives.
Such an effect is strongly felt on Kickstarter, where the tenor of crowdfunding for projects changes relative to the funding end date.

The supplemental secondary motivators, based on @organisciak_why_2010, which encourage more engagement but not initial contribution, are:

-   **External indicators of progress and reputation**.
Using games,
    badges, or leaderboards encourages more contribution among certain
    people.
An important caveat is that this form of performance
    feedback needs to be perceived as sincere [@kraut_building_2011].

-   **Feedback and impression of change**.
Showing the contribution in
    the system or conveying how it fits into the whole.
    @kraut_building_2011 tie feedback to goals, emphasizing the
    importance of showing progress relative to personal or site-wide
    goals.

-   **Recommendations and the social**.
Prodding by friends, colleagues,
    and like-minded individuals.
Simply seeing that other people have
    contributed makes a person more likely to contribute
    [@kraut_building_2011].
This motivator factors into the taxonomy by as
    *social status*.

-   **Window fixing**.
Nurturing a well-maintained community where the members feel compelled to support its health.

### Type of Crowd

@vukovic_towards_2010 define two extremes of crowd types: *internal* and *external*.
Internal crowds are composed solely of contributors from the organization that is crowdsourcing, if it is thus centralized.
External crowds are members outside of the institution.
@vukovic_towards_2010 also note that *mixed*
crowds are observable.

\newthought{A point of separation between crowd methods} is the skills required to perform the work.
*Unskilled*, *locally training*, and *specialized* are all seen among crowdsourcing systems.
Where unskilled labour encourages contributions from anybody at anytime, systems that use methods for authority control leave certain tasks to long-term, involved contributors.
For example, on question and answer service *Stack Overflow*, a user's administrative ability grows more open as they contribute more to the management of the system, a way of ensuring that those users have learned the proper management of the site.

\newthought{In additional to what the crowd is}, there is a distinction to be made on what the crowd is desired to be.
Here, it is helpful to think of a spectrum between *diverse* and *homogeneous* crowds.
In some cases, the crowdsourcing task benefits from multiple unique viewpoints.
When online players compete to fold proteins in the most efficient way possible for
*FoldIt*, the project's success is predicated on the ability of people to problem-solve in variable ways.
In contrast, for a project like
*Building Inspector* where participants outline building boundaries from scanned survey records, the desire is for the participants to perform in a standard way.
Here, reliability and consistency are important traits.

### Type of Contribution

The type of work performed by crowds can vary greatly in its complexity and style.

\newthought{One notable form of crowdsourced work} is represented by the concept of human computation, where "the problems fit the general paradigm of computation, and as such might someday be solvable by computers"
[@quinn_human_2011].
Understanding that crowdsourcing is not solely human computation tasks, the inferred corollary to these types of tasks are those that are expected to be too complex for computers: creative,
judgment-based, or requiring critical thinking.
Creative crowdsourcing might take the form of artistic human expression, such as online contributors collectively animating a music video (*Johnny Cash Project*) or the sum of YouTube.
Opinion or judgment-based crowdsourcing often does not have a definitive answer, and is seen in areas such as movie reviews or product ratings.
More complex critical thinking tasks do not fit the paradigm of computation and are much more complex, such as Wikipedia or protein-folding project FoldIt.

@schenk_crowdsourcing_2009 have previously distinguished between three types of crowdsourcing.
First are routine tasks, such as crowdsourcing of OCR text correction with ReCaptcha.
The majority of human computation tasks would likely fall within this category of rote tasks.
Second are complex tasks, such are open-source software development.
Finally, they suggest creative tasks, with a slightly different meaning than our typology's usage as a disjunct to human computation.
An example of their final category would be a system like *MyStarbucksIdea*, a space where people suggest changes they would like to see at the coffee chain Starbucks.
Since @schenk_crowdsourcing_2009 focus on crowdsourcing when there is a client, usually a corporate client, they do not consider the wider space of creative crowdsourcing tasks.

\newthought{Another view that touches on the nature of the contribution} is
*generative* versus *reactive*.
In the former, new intellectual products are created.
With reactive work, the work is a reaction or interpretation of an existing information object: reviews, ratings,
encoding.

Such a distinction is neglected in most views of crowdsourcing, but important in information science.
At the heart of many projects by libraries, museums, and cultural heritage institutions, is a focus on information objects.
There is much effort expended in archiving, enriching, appreciating, and sharing works, and a reactive view of crowdsourcing products places the public within this tradition.

\newthought{A final view of types of work}, one adopted strongly in this dissertation, is the spectrum between *objective* and *subjective* tasks.

Objective tasks are assumed to have an authoritative truth, even if it is unknown.
For example, in transcribing scanned texts, it is assumed that there is a ‘correct’ transcription in the work that has been scanned.

In contrast, subjective tasks have a variable concept of correctness, as they are not expected to be consistent between contributors.

Human computation undertakings are commonly objective tasks, and taxonomic efforts for human computation – such as Schenk and Guittard's split of routine, complex, and creative
[-@schenk_crowdsourcing_2009] – do not touch on the subjective/objective separation directly.

The subjective-objective distinction has consequences for training and quality control.
Objective tasks lead to a training approach where the ideal result is that everyone performs the task in the same one right way.
Quality control on those tasks can employ approaches such as intercoder reliability, since it can be assumed that there is an objective set of results that raters are striving for.
Subjective tasks can still need training and quality control, but it will necessarily be of a different kind.
For example, certain subjective tasks want to take advantage of the diversity of human activity and so explicitly do not want everyone to do the same thing in the same way.

This distinction is still present with different forms of aggregation.
Multiple contributions can be aggregated with an objective assumption,
expecting a truth and deviations from it as bad work or data.
Other systems try to aggregate a normative opinion or judgment of subjective contributions.
This latter assumption is seen often in opinion ratings,
such as film or restaurant ratings: just because there is an aggregated rating presented, there is an understanding that some people might disagree and that they are not incorrect for doing so.

### Aggregation

@schenk_crowdsourcing_2009 and @geiger_managing_2011 discuss two types of aggregation: *integrative* and *selective*.
Integrative aggregation pools contributions into a common product, like a wiki, while selective aggregation tries to choose the best contributions, such as in contests.

This simple separation hides some complexity seen in aggregation approaches.
Reconciling multiple different contributions can be difficult, and integrative aggregation can be approached in a number of ways.
We argue the following finer views on integrative aggregation are useful:

-   **Summative**.
In summative aggregation, people contribute to an
    ever-expanding base of information.
Contributions are clearly part
    of a bigger whole, but their individual form is retained.
For
    example, with online reviews, each individual contributor writes
    their own review with their own interpretation of the given product,
    movie, travel destination; at the same time, the collection of
    reviews forms a more comprehensive document of people’s attitudes.

-   **Iterative**.
In versioned aggregation, multiple contributions are
    used toward a larger product, but the contributions are permutations
    of a common work.
For example, with collaboratively written wikis,
    such as Wikipedia, each user’s iterates on the work of all the
    previous writers of the page.

-   **Averaged**.
In averaged aggregation, contributions are still
    pooled, but a consensus-seeking process tries to reconcile them.
Our
    use of *averaged* here alludes to quantified consensus seeking, even
    when it is not simply a case of derive a statistical mean.
With
    contributions such as opinion ratings of information objects the
    process might be to average; with multiple-keyed classification, the
    aggregation process may be a vote majority, where the most popular option is retained; with starring (sometimes
    referred to as favoriting, liking, or recommending), the averaged
    aggregation may simply show the number of people that have performed
    the action.

A consideration related to aggregation is that of quality control,
something other typologies have considered as a top-level dimension in its own right.
@quinn_human_2011 consider how the system protects against poor contributions, such as reputation systems, input or output agreement,
multi-contribution redundancy, a crowd review workflow, expert review,
and designs that disincentive poor quality or obstruct the ability to do so.
@quinn_human_2011 likewise look at quality assurance, noting the large focus on improving quality for quantifiable contributions.

In our typology, we consider quality as a best practices issue that follows from how users are aggregated.
With summative aggregation, for example, quality is often pursued by a separate crowdsourcing step:
allowing online visitors to flag low-quality or otherwise problematic contributions.
Other times, such as with question and answer websites
*Stack Overflow* or *Quora*, visitors vote on the quality of answers to surface the best ones.
With iterative contributions, peer review is sometimes used, as in the versioned workflow of many open-source projects or with the concept of watching pages and reversions on Wikipedia.
As noted, averaged aggregation receives a lot of focus because it lends itself to quantification, and numerous studies focus on the quality increases of adding redundant contributors or methods to identify low-quality contributors [@sheng_get_2008; @snow_cheap_2008; @wei_lda-based_2006; @wallace_who_2011].

### Beneficiary / Director

Who directs the crowdsourcing activities and who benefits from the contributions?

Considering the director of a crowdsourcing task,
@zwass_cocreation_2010 distinguishes between *autonomous* and
*sponsored* forms of crowdsourcing.
*Sponsored* crowdsourcing is when there is an entity at the top soliciting the contributions: a client of sorts.
In contrast, *autonomous* crowdsourcing serves the community itself.
Autonomous crowdsourcing can be in a centralized location, like a community-written wiki or video-sharing website, or exist loosely, as in blogs.
@zwass_cocreation_2010 explains: "Marketable value is not necessarily consigned to the market—it may be placed in the commons, as is the case with Wikipedia."

Considering the soliciting party as a case of sponsorship or autonomy is useful, though a further distinction should be made between the collective (the *crowd*) and the individual (the *contributors*).
Crowds collaborate toward a shared goal, as with Wikipedia or certain kinds of open-source software development, while individuals are more self-motivated.
For example, in citation analysis through web links, as was done with PageRank [@page_pagerank_1999], the large-scale benefits of the crowds are unrelated to what the individuals creating the links are thinking.
@rouse_preliminary_2010 offers a similar designation in the beneficiary, between individual, crowd, and a mix of the two.

One way to view this relationship between contributor and director is in light of effort against benefit.
Do both director and contributor benefit (symbiosis)? Does one benefit at the expense of the other
(parasitism)? Or is it a case of commensalism, where both benefit but in mutually exclusive ways.


### Centrality

How central, or necessary, is the crowdsourcing to the task at hand? Is it *peripheral*, or *core*?

The work in @organisciak_incidental_2013 tried to counterbalance a perceived focus on whole-hog crowdsourcing – the large, highly novel initiatives like Wikipedia – by introducing *incidental crowdsourcing*.
Incidental crowdsourcing focused on types of crowdsourcing – like rating, commenting, or tagging – that are peripheral and non-critical.
The shift to an incidental mode brings with it its own design tendencies, such as lower bandwidth forms of contribution and fallback strategies for low engagement cases.

This distinction between peripheral and core is important to an information science treatment of crowdsourcing.
It shows that the benefits of crowdsourcing are not only attainable by those with the infrastructure and resources to commit to a new large system.
It can be an augmentative feature, that engages with users and accepts useful feedback from them in addition to a non-crowdsourcing primary objective.
Peripheral crowdsourcing also often accompanies a pattern of reacting to existing information objects, pertinent to those that deal with museum repositories or digital libraries.


## Common Design Patterns

A number of design patterns have been established and repeated in crowdsourcing, some organically and some, like the ESP Game, carefully engineered.
These include:

*Microtasking*.
The concept of splitting a large task into many smaller parts improves the ability for that task to be worked on by different people.
Microtasking was an important tide change in the history of open-source software [@raymond_cathedral_1999], and the same model has been often adopted in crowdsourcing.
With so-called 'microtasks', the overhead to participation is low, and the pressure or dependence on any one contributor is low.

*Gamification*.
Gamification is predicated on a reframing of what would traditionally be labour into game-like or leisurely tasks.
Gamification follows in the philosophy, as with Tom Sawyer recontextualizing a fence painting chore into a game, "that work consists of whatever a body is obliged to do, and that play consists of whatever a body is not obliged to do" [@twain_adventures_1920].

Of course, Tom Sawyer used his fence painting game as a manipulation, intended to trick other children to do his work for him: an apt comparison to ethical concerns about gamification.
Those defending the ethics of gamification have argued for it as an extension of contributors’ desire to perform meaningful work.
Shirky, for example,
argues that people have a ‘cognitive surplus’ to give during their leisure time, a desire to spend their free time doing useful, creative or stimulating tasks [-@shirky_here_2009].
Gamification is an extension of serious games – games meant to do more than simply entertain
[@abt_serious_1987; @michael_serious_2005; @ritterfeld_serious_2010].
In areas of crowdsourcing and human computation, Games with a Purpose
[@von_ahn_games_2006] is an extension of serious games in the context of distributed, collaborative crowds.
@harris_applying_2012 consider the applicability of applying games with a purpose to various facets of information retrieval, concluding it is a feasible approach for tasks such as term resolution, document classification, and relevance judgment.
@eickhoff_quality_2012 have investigated the gamification of relevance judgements further, augmenting the financial incentive on paid crowdsourcing platforms.

*Opinion Ratings*.
A standard and highly familiar activity online is soliciting qualitative judgments from visitors.
These ratings have different granularities, often 5-level (e.g. 1 to 5 stars) or binary (e.g. thumbs up/thumbs down).
Unary judgments have grown in popularity as ways of showing support with minimal effort.
Their popularity seems to stem from when social network *Friendfeed* implement a unary voting button labelled, succinctly, "I like this"
[@taylor_friendfeed_2007] and subsequently when similar wording was adopted by Facebook after acquiring Friendfeed.

*Platforms*.
There is a cottage industry of services that offer the infrastructure for requesters to crowdsourcing, using in domain-specific ways.
For example, *Kickstarter* and *Indiegogo* ease crowdfunding,
*99Designs* enables contest-based design tasks, and Mechanical Turk offers the tools and people for microtasks.

*Contests*.
In the contest design pattern, a requester offers a bounty to the best solution to a problem or task of their choosing, such as in design (e.g. 99Designs), coding (e.g. *TopCoder*), and research and development (e.g. Innocentive).
Here the "crowdsourcing" is simply using internet to connect to many potentially talented individuals, though contests have been integrated into more collaborative workflows.
For example, with the collaborative product incubator Quirky, the community votes on the best ideas to develop into products, discussing how to improve the ideas openly.

*Wisdom of crowds*.
Wisdom of the crowds, in addition to the principle referring to the effectiveness of human judgment in aggregate, also refers to a design pattern which uses that principle
[@surowiecki_wisdom_2004].
This is embodied by multiple-keying for tasks which are expected to have a real answer, such as classifying galaxies, or averaging opinions for subjective tasks to derive a normative judgment.

## Practitioner's Questions

To conclude, I offer some practical examples to provide a template for crowdsourcing planning using this typology.

**Q:** *Are you augmenting existing data, which already exists in an online system or repository or which is appropriate for presentation already?*

-   *Yes.* Peripheral crowdsourcing is an option to consider, because it
    collects information from people that are already interested in the
    content and consuming it.
*Trove* does this with newspaper scans:
    visitors can read the scans and the poor computer transcription, but
    are also given an option to fix the transcriptions.

-   *No.* Core crowdsourcing requires more technical overhead, but
    results in some of the more interesting examples of crowdsourcing.
*Old
    Weather* or *Transcribe Bentham* show how archives can engage with
    interested members of the public, while arguably providing a strong
    form of material appreciation than passive reading would offer.

**Q:** *Does your data compile, iterate, or combine?*

-   *Compile.* Summative aggregation is seen in digital history projects
    like *Make History*, a 9/11 Memorial Museum project compiling
    people's photos and stories of the 9/11 terrorist attacks.
However,
    simpler crowdsourcing mechanics, such as commenting and tagging on
    Flickr’s *The Commons*, also follow this pattern.

-   *Iterate.* Digital archive transcription projects such as
    *Transcribe Bentham* work with the model of iteration.
One concern
    with these forms of projects is that contributors sometimes do not
    want to conflict with a previous author; a way to encourage
    iteration is to mark unfinished pages and discourage single edit
    perfection, as is done on Wikipedia.

-   *Combine.* Information science has a tradition of considering
    averaged aggregation in the context of multiple-coder
    classification.
For an example of a novel, notably low-tech version
    of this pattern, @simon_participatory_2010 writes of voting bins at
    the exit of the Minnesota Historical Society’s History Center.
    Visitors, who are given pins to show they have paid admission, can
    vote on their favourite exhibits by disposing of the pins in one of
    a set of labeled containers.

**Q:** *Can your data be collected while contributors work for themselves?*

-   *Yes.* Social OPACs like Bibliocommons collect various
    user-generated metadata about materials, such as tags or comments.
A
    study into two such systems found that the features are generally
    underutilized, but are most popular in cases where participants are
    creating things for themselves: compiling list bibliographies,
    personal collection bibliographies, or use a "save for later"
    feature [@spiteri_social_2011].

**Q:** *Does your project have any primary motivators to incentivize contributions, such as an existing community of interest or a compelling, easy to answer question?*

-   *Have primary motivators.* Systems such as Galaxy Zoo or Trove
    provide examples of how a system can emphasize the incentives they
    offer to potential volunteers.
Most of the successful projects noted
    in this study offer some primary motivators.

-   *Don't have motivators.* For trickier or less intrinsically
    interesting data, it is possible to hire on-demand workers through a
    platform like *Mechanical Turk*.
Examples of efficient routing on
    these sorts of systems include *Soylent* – crowdsourced writing
    assistance [@bernstein_soylent_2010] – and *VizWiz*, an accessibility
    application that allows visually impaired users to receive
    transcribed descriptions of photos that they take
    [@bigham_vizwiz_2010]^[VizWiz also outsources some tasks to social networks.].

## Conclusion

Crowdsourcing offers potential in information science for involving the public and improving data in digital libraries and cultural heritage repositories.
However,
the scope of crowdsourcing is so large and the implementation possibilities so varied that it can seem rather daunting to pursue it.

This chapter attempted to provide a way of making a bit more sense of the patterns that emerge when considering these projects not so much from the perspective of what they are for (e.g., rating books, movies or restaurants versus citizen science or digital humanities) but rather in terms of how they were designed to achieve particular ends.

The typology presented consolidated a number of past taxonomies of crowdsourcing and project examples toward a view of crowdsourcing appropriate for information science.
In addition to modifications on previously studied dimensions such as motivation, aggregation, and beneficiary, new dimensions were argued for, regarding centrality of crowdsourcing, the diversity needs of the crowd,
and the dichotomy of generative or reactive types of work.
This typology offers a framework for making sense of the differences between crowdsourcing projects and thinking through practical possibilities for implementing crowdsourcing mechanics in new projects.

The design of a crowdsourcing activity, like any design activity is an exploration of a design space navigating goals (often multiple goals,
some of which may be contradictory), and constraints, while exploiting technological and social opportunities, and taking account of certain issues such as privacy, security.
For any given product, there are many experiences that could be constructed.
The dimensions provided offer help in comprehending the alternatives and how they are practiced.

\newthought{Within the framework introduced}, the rest of this dissertation pursues crowdsourcing in the following space:

 - Crowds that are paid, rather than motivated to volunteer;
 - Tasks that are reactive, positioning contributions relative to existing documents, rather than generative;
 - Both objective and subjective contexts, considered distinctly.

The data quality of contributions is considered in this context, starting with the next chapter: a treatment of post-collection data modeling of contributions for objective tasks.
