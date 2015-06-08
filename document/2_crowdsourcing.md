Literature Review
===================

Crowdsourcing is a simple concept that has received considerable research attention in the past few years, alongside a realization of the power of the internet for effectively connecting people in large numbers.

Perhaps unsurprisingly, the concept of crowdsourcing precedes the language that has developed around it in recent years, and the research in crowdsourcing has been uneven.

This section provides an initial overview of crowdsourcing and the notable research within it.

## Definitions and History

Crowdsourcing broadly describes the use of distributed crowds to complete a task that would otherwise be by one or a few people.
Beneath this large umbrella, there are many concepts that are either in its purview or overlap with it.

### Crowdsourcing

Crowdsourcing refers to "groups of disparate people, connected through technology, contributing to a common product" [@organisciak_why_2010].
It broadly captures the abilities of the internet, as a communications medium, to efficient connect people.

Nothing about crowdsourcing is fundamentally tied to the internet.
It is entirely possible to bring together large groups of people in different ways, but the access and efficiency of the internet is both
what makes the concept seem so novel and what gives it value in the various realms where it is applied. Whereas crowds have long been noted for their collective simplicity [@le_bon_crowd_1896] or irrationality [@mackay_memoirs_1852],
through the internet, one can perform human-specific tasks at a scale usually only seen for computational tasks.

The term is recent and has an unambiguous source, but immediately upon its introduction, it was adopted and expanded on through public discourse.

The term _crowdsourcing_ comes from a 2006 Wired article by Jeff Howe [@howe_rise_2006].
Howe was writing from a labor perspective, looking at online marketplaces for people to solve problems and create content.
His focus was on systems like InnoCentive, a site for companies to outsource research and development problems for a bounty, and iStockPhoto, a website that allowed amateur photographers to sell their images as stock photos.
The article briefly looked at user-generated online content, though in the context of television programs that use online video as content.

Despite the narrow initial definition, the term _crowdsourcing_ struck a chord more broadly and was culturally co-opted.
the definitional appropriation happened very quickly: within nine days Howe noted a jump from three Google results to 189,000 [@howe_birth_2006].
Within a month, Howe addressed the co-opting of the term, "noticing that the word is being used somewhat interchangeably with Yochai Benkler's concept of commons-based peer production" [@howe_crowdsourcing_2006].
He gives his definition, but also notes that language is slippery, and he is "content to allow the crowd define the term for itself (in no small part because [he is] powerless to stop it.)."

Thus, crowdsourcing was adopted to refer broadly to a series of related concepts, all related to people being connected online.
These concepts included
 the 'wisdom of the crowds'[@surowiecki_wisdom_2004], 
 human computation[@ahn_labeling_2004],
 commons-based peer production[@benkler_wealth_2006], and
 free and open-source development [@lakhani_how_2003; @raymond_cathedral_1999].

While there have been occasional semantic attempts to redefine crowdsourcing again as a more granular term, its colloquial adoptions seem to have cemented its use as a broad concept.

### Wisdom of the Crowds

_The Wisdom of the Crowds_[@surowiecki_wisdom_2004] is a book written by journalist James Surowiecki in 2004.
The book observes the strength of human decision-making when done in aggregate, and the term 'wisdom of the crowds' has survived the book to refer to cases that make use of this.

### Human-Computation

_Human Computation_ emerged from from the doctoral dissertation work by Luis von Ahn in 2005, popularized alongside the ESP Game [@ahn_labeling_2004; @von_ahn_games_2006]. <!--_-->
It refers to the process of computation -- the "mapping of some input representation to some output representation using an explicit, finite set of instructions" [@law_human_2011] -- performed by humans.

In synthesizing the definition of human computation in relation to crowdsourcing, collection intelligence, and social computing, Quinn and Bederson note two characteristics of consensus:
 that "the problems fit the general paradigm of computation, and as such might someday be solvable by computers", and 
 that "the human participation is direction by the computational system or process" [@quinn_human_2011].

As noted by @law_human_2011, Turing defined the purpose of computers as carrying out operations that humans would normally do.
Human Computation, then, refers to utilizing humans for operations that computers are not capable of performing yet.

By this definition, much human computation aligns with crowdsourcing, but large swaths of crowdsourcing are not relevant to human computation.
For example, creative crowdsourcing projects like T-shirt design website Threadless and online encyclopedia Wikipedia are not human computation.
Inversely, human computation does not have to be sustained by self-selected workers; a more traditionally hired closed system can suffice [@law_human_2011].

### Open-Source

An early model reflecting the properties of crowdsourcing is open source software development.

With open source, software's underlying source code is freely accessible.
As a consequence of this form of transparency, open-source development began to adopt some unique properties: users and distributed developers could jump into the code to fix a bug, or add a feature that they wanted to see.
The significance of this became apparent when Linus Torvalds released Linux in 1992 with a development model that accepted external code contributions heartily, released early and often, and followed the pulse of user's needs.
Eric Raymond compared this form of software development to a bazaar, "open to the point of promiscuity", and contrasted it to the traditionally managed 'cathedral' style seen in the commercial world and earlier open source projects [@raymond_cathedral_1999].

The many hands approach to open-source demonstrated that technologically-connected crowds can coherently delegate and create works.
Like with crowdsourcing, open source software development often does not discriminate on credentials or background; if a contributor can make an adequate contribution, it can be used.

The roots of crowdsourcing in open source are noted Jeff Howe's short definition formulated after his Wired article: "the application of Open Source principles to fields outside of software."

### User Innovation and Commons-Based Peer Production

It should not be surprising that recent cultural observers have noted the behaviours seen in crowdsourcing through various lens.
Crowdsourcing emerges from various affordances <!--TODO2 cite affordances (Barry Wellman?-->of modern information networks.
Such as seen with open-source software development, networked society encourages new forms of cultural creation, not by intention but by consequence of the type of connectedness it allows.

As networked society has developed and the internet has grown ubiquitous, numerous scholars have noted the cascading consequences in how individuals interact with culture and participate in the creation of cultural objects.
Two such streams of study are von Hippel's work on _user innovation_ and Benkler's study of the networked information economy, including his concept of _commons-based peer production_.
Both of these borrow from economic and market-driven theory rather than sociological theory, but they offer valuable language for understanding crowdsourcing as a cultural phenomenon.[^consequence]

[^consequence]: One might argue for the term _consequence_ rather than _phenomenon_, because it positions crowdsourcing as neither an accident nor a product of intention, but acknowledges a history for it where it is a side-effect of external influences.

If crowdsourcing is a generalized version of open source principles, von Hippel's work on user innovation[@von_hippel_sources_1988;@von_hippel_democratizing_2006] was an early observation of the trend toward a greater user focus in computer tools and services.

With user innovation, new information products or physical products are generated by users -- those that benefit from using rather than selling the product.
Notably, von Hippel focuses on 'lead users,' users with specific needs that precede broader trends.
These users either develop new products to fill their needs or modify existing products.

Not all crowdsourcing creation is user innovation, though there are echoes of von Hippel's work in companies that turn to the Internet for help in conducting their business, whether it is soliciting feedback and suggestions (e.g. MyStarbucksIdea [^Starbucks]), bug reports, or even work at a bounty (e.g. advertising contests).
User sharing of work performed for themselves is another similar area: for example, when a music service allows users to share their playlists publicly, their realization of a personal need has potential value to other users.

Benkler's work takes a political economy view on what he calls the 'networked information economy', but arrives at a very similar place to von Hippel.
He argues that the unique landscape of the 'networked information economy' empowers
individuals to do more for themselves and in collaborative groups outside of established economic spheres [@benkler_wealth_2006].
This agency allows commons-based peer-production: for innovation and creation to rise out of the commons rather than from firms.

Benkler[@benkler_wealth_2006] singles out two user behaviors borne out of access to information networks, which in turn underlie the rise of crowdsourcing.
First, individuals are more empowered to operate autonomously, for themselves with less reliance on mass-market goods.
At the same time, loose collaborations are easier to organize, allowing the pursuit of individual needs at scales beyond the capabilities of a single person.

[^Starbucks]: http://mystarbucksidea.force.com/

<!--### Social Computing-->
<!-- See Law 2011, and see Bederson 2011 -->
<!--
### Collective Intelligence

<!-- also see law and bederson papers -->

<!--
### Classical Work on crowds

#### Extraodinary Madness of the Crowds (Mackay [sp?])

#### The Crowd (LeBon)-->

## Taxonomies of Crowdsourcing

The space of crowdsourcing is large, and there have been a number of attempts to organize the sub-concepts within it or to reconcile it alongside other areas of research.
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



## Top Research in Crowdsourcing

The lit review of the proposed dissertation will include a treatment of the most notable research in crowdsourcing: a "greatest hits" of sorts.
Here I offer a brief overview of some of the research that will be discussed.

The ESP Game[@von_ahn_games_2006] demonstrated an effective and fun way to support research data through games.

Soylent[@bernstein_soylent_2010] integrated paid crowdsourcing into word-processing tools.
In the process, the study termed the Find-Fix-Verify design pattern.

@mason_financial_2010 found that increasing wages on paid crowdsourcing sites did not improve quality of results, just quantity of contributions, due to an anchoring effect whereby perceived value of the task also grew with payment.
They also identified that intrinsic motivation is still at play in paid crowdsourcing, elegantly showing that it grows weaker the more closely the task is bound to extrinsic reward.

@kraut_building_2011 mined social literature for one of the most insightful looks at how online communities function effectively

Yochai Benkler's Wealth of Networks [-@benkler_wealth_2006], discussed earlier, which took a political economy view to commons-based forms of production, and the affordances that technology provides for sidestepping corporate production in this way.

<!--TODO2: others?
VizWiz
-->

## Crowdsourcing in the Wild

There is a great deal of crowdsourcing "in the wild", including notable successes and failures.
Some of the successful project provide archetypal blueprints of crowdsourcing dimensions, and will be good to understand moving forward.
Below I describe a few projects to aid in understanding the possibilities of crowdsourcing; more detail will be provided in the proposed dissertation literature review.

__Wikipedia__ is a collaboratively written encyclopedia, where the majority of contributors are volunteers.
Wikipedia, formed in 2001 and now containing 4,579,708 articles (as August 13, 2014 [@_wikipedia:size_2014]),<!--_--> has an open editing policy that allows anonymous contributions and only restricts who can edit a page for few special cases where vandalism is likely.
The policy also ensures that readers are latent editors [@shirky_here_2009], helping police, correct, and improve poor quality content.

__Threadless__ is a community of artists that design and vote on T-shirt designs.
Winning designs are licensed by Threadless to print and sell, providing a commission to the designer and additional profit for subsequent shirt reprintings.

The __Netflix Prize__ was a competition run by film rental (and now streaming) company Netflix, offering a million dollar bounty to the person or team that could improve film recommendation by 10% over the root-mean-squared-error performance of Netflix's own system.
Claiming the prize required the winner to publish their results but did not require transfer of intellectual property, only a license for Netflix.
A 2008 New York Times article about the prize noted that the community of participants were notably open in sharing their insights[@thompson_if_2008].

__Kickstarter__ is a microfunding platform that enables patronage of artists and creators in their project through small but plentiful contributions.
A project creator on Kickstarter proposes a project and offers tiers of rewards for backers that contribute varying amounts.
When researched in @organisciak_why_2010, the balance between the altruistic support-based motivation and opportunistic reward-based incentives seemed to weigh slightly more toward the former, though I expect this has changed in recent years as more products have been offered on the site.
Regardless, the model of small contributions from many has been seen in many other so-called crowdfunding contexts, including charity, politics [@fung_larry_], and small business [@cortese_proposal_2011; @cortese_crowdfunding_2013].

### Academic

__Zooniverse__ is a series of crowdsourcing projects that started with Galaxy Zoo.
Galaxy Zoo allowed the general public to classify images of galaxies from the Sloan Digital Sky Survey, many being seen for the first time, at a pace much quicker than any one human could perform.
Another popular project, Old Weather, transcribes weather logs from old ship's journals.
In Snapshot Serengeti, participants classify animals photographed in camera traps.
Many of the Zooniverse projects follow a similar pattern: encoding of curious, novel, or interesting images while contributing to real research.

_FoldIt_ is a game where users try to develop the most efficient folding of a protein [@khatib_algorithm_2011].
Folds are scored and placed on a leaderboard, adding a competitive edge.
FoldIt shows that, when well matched to competitive impulses, complex problems can be tackled through semi-anonymous online workers.

_ReCaptcha_ [@von_ahn_recaptcha:_2008]<!--_--> cleverly took a system intended to distinguish humans from bots -- obfuscated text transcription with Captchas -- and combined it with a problem that by definition only humans can do: fixing scanned text that computational techniques failed at.
With ReCaptcha, online visitors prove they are human and help digitize scanned archives at the same time.

<!-- TODO2
## Failures and Concerns

### Ethics
-->


## Research in Information Science

In information retrieval, the focus on crowdsourcing has been predominantly in the use of paid crowds for generating evaluation datasets, though there have been efforts to use crowds to improve document representation or even query-specific ranking.

The benefit of paid crowds for relevance judgments is that it allows for on-demand evaluation datasets [@alonso_crowdsourcing_2008].
This has been a costly and exhausting process in the past, making it difficult to perform IR research on more novel datasets than the judged sets available from TREC.
Relevance judgments benefit from the agreement among multiple humans, since the concept of 'relevance' is not clear-cut but rather normative.
The ability to attract a breadth of rater types also positions paid crowdsourcing as an effective means to collecting evaluation data.

For three years, TREC has run a crowdsourcing track that emphasizes the collection of high quality relevance judgments through paid crowds [@lease_overview_2011; @smucker_overview_2012].
While much of the focus was on identifying and accounting for lower quality workers, there were also some efforts which built novel interfaces to try to streamline contributions or increase reliability.
For example, the Glasgow team encourage fast turnaround, reducing rating click counts, pre-loading pages, and floating the assessment question [@mccreadie_university_2011].
Earlier, the same team crowdsourced judgments for the TREC Blog track with a design that color coded completed tasks based on whether they matched other raters and a gold standard [@mccreadie_university_2011].

Grady and Lease also explored the effect of changing human factors on information retrieval relevance judging through Mechanical Turk [-@grady_crowdsourcing_2010]. They considered four factors: terminology, base pay, offered bonus, and query wording. Though their findings were inconclusive, their study provides guidance on the issues related to this form of study. The proposed dissertation builds upon Grady and Lease's work, as well as other parameterization studies like Mason and Watts [-@mason_financial_2010], by evaluating more drastic deviations from the core structure of a paid crowdsourcing task.

The effect of wording and terminology, one of Grady and Lease's focal points, has often been alluded to as a factor in crowdsourcing, including in Library and Information Science work. In writing about The Commons, a successful museum crowdsourcing project with Flickr, the Library of Congress reported that the "text announcing the Commons ("This is for the good of humanity, dude!!') struck just the right chord" [@springer_for_2008].

Alonso and Baeza-Yates have also written about the effect of different parameterizations of paid crowdsourcing tasks, considering the quality of relevance judgments with varying numbers of contributors evaluation each task, topics per task, and documents per query. In doing so, they cite interface design as the most important part of experimental design on Mechanical Turk and recommend following survey design guidelines and provided clear, colloquial instructions [@alonso_design_2011]. This study agrees with their sentiment, and strives to formally understand and articulate the differences that interface design influences in crowdsourcing.

Using crowdsourcing in the machine, as evidence for search engine algorithms rather than evaluation, is less common.
PageRank is one such effort, utilizing the linking habits of web page authors as a proxy for authoritativeness and quality[@page_pagerank_1999].

One of the best explored spaces of retrieval over or incorporating crowdsourced information is in folksonomies.
Folksonomies refer to free-text labelling (i.e. 'tagging') by non-professionals.
A popular resource for folksonomies over general web documents is the older incarnation of bookmarking website del.icio.us.
In folksonomies such as on del.icio.us, over 50% of tags contribute information that was not contained in the document; for music tags (on the website Last.fm), over 98% of tags provide text information not previously help in the record[@bischoff_can_2008].
Information retrieval can benefit for this extra information, and a comparison of web query logs to folksonomies from del.icio.us, Flickr, and Last.fm shows that 58.43-71.22% of queries overlap at least partially with tags in those systems (ibid).

Studying ways to retrieval saved bookmarks on del.icio.us, [@hotho_information_2006] present _FolkRank_, a manner to adjust authority of authors and importance of tags in order to find important resources.
While their approach has limited success as a generalized retrieval approach, they find that it holds value in identifying communities of interest within the community.

[@zhou_exploring_2008] present a generalized framework for dealing with social annotations within the language modeling approach.
Their model categorizes users by expertise domain and builds domain topics from related annotations.
These are linearly smoothed with document and query language models.
In the context of del.icio.us, their approach improves over traditional unigram models over the document text.
Their model parallels some of the approaches proposed for this dissertation's study over Pinterest.
The proposed study makes similar assumptions on the meaning of an individual annotation, but differs in that it makes no assumptions about the expertise about a user and relies on the interpretations from user curated groupings rather than inferred topics.

Finally, @harris_applying_2012 provide a comprehensive overview of ways that crowdsourcing and games with a purpose can be incorporated in the information retrieval workflow.
While crowdsourcing is noted as highly feasible for evaluation, it is also noted as an approach which can help in building document collections, identifying information needs, and query refinement.

<!-- TODO2 : Lamere - social tagging-->
<!-- TODO2: * Coding Aggregation / Ground Truth generation -->

## Summary

Crowdsourcing is a phenomenon with a wide umbrella and a broad range of parameterizations.
For information science, it is potentially very valuable for its ability to efficiently gather extra-textual information about existing objects.
The next two chapters propose two studies for learning more about this quality.
