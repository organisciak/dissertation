Crowdsourcing
================

Crowdsourcing is a conceptually simple idea that has received considerable research attention in the past few years, alongside a realization of the power of the internet for effectively connecting people in large numbers.

The language of crowdsourcing has developed fairly recently, but the ideas it represents have been practiced and studied in various forms prior.
Perhaps it is not surprising then that research in crowdsourcing has been uneven and discussion scattered.
After all, this is a term that seemingly sprung from a very specific place, on a specific date, and yet what _is_ crowdsourcing has been largely appropriated and defined by collective imagination.

As an introduction to key concepts of crowdsourcing, this chapter provides an overview and the notable research that has stemmed from it.
The purpose of this chapter is as an interstitial of sorts, providing background information which will be helpful in grounding an understanding of the rest of this dissertation.

\newthought{Crowdsourcing broadly describes} the use of distributed crowds to complete a task that would otherwise be done by one or a few people.
It broadly captures the abilities of the internet as a communication medium in efficiently connecting people.
Many concepts exist within or overlapping with this broad mandate.

Nothing about crowdsourcing is fundamentally tied to the internet, however.
It is entirely possible to bring together large groups of people in different ways, but the access and efficiency of the internet is both
what makes the concept seem so novel and what makes it valuable in the various realms where it is applied.
Whereas crowds have long been noted for their collective simplicity [@le_bon_crowd_1896] or irrationality [@mackay_memoirs_1852],
through the internet one can perform human-specific tasks at a scale usually only seen for computational tasks.

The term _crowdsourcing_ comes from a 2006 Wired article by Jeff Howe [-@howe_rise_2006].
While the word is recent and has an unambiguous source, immediately upon its introduction it was adopted and expanded on through public discourse.
Howe was writing from a labor perspective, looking at online marketplaces for people to solve problems and create content.
His focus was on systems like InnoCentive^[http://www.innocentive.com/], a site for companies to outsource research and development problems for a bounty, and iStockPhoto^[http://www.istockphoto.com/], a website that allowed amateur photographers to sell their images as stock photos.
The article briefly looked at user-generated online content, though in the context of television programs that use online video as content, rather than the bottom-up style of content creation associated with the first two decades of the internet.
Despite the narrowness and brevity of the initial definition, the term _crowdsourcing_ struck a chord more broadly and was culturally co-opted.
The definitional appropriation happened very quickly: within nine days Howe noted a jump from three Google results to 189,000 [@howe_birth_2006].
Within a month, Howe addressed the co-opting of the term, "noticing that the word is being used somewhat interchangeably with Yochai Benkler's concept of commons-based peer production" [@howe_crowdsourcing_2006].
He gives his definition[^HoweDefinition], but also notes that language is slippery, and he is "content to allow the crowd define the term for itself (in no small part because [he is] powerless to stop it.)."

[^HoweDefinition]: "For the purposes of the article... we would only look at case studies involving big established companies. For the purposes of [Howe's crowdsourcing blog] ... I interpret crowdsourcing to be taking place any time a company makes a choice to employ the crowd to perform labor that could alternatively be performed by an assigned group of employees or contractors". To not leave the journalist with his 2006 definition, Howe's definition expanded further as time went on, away from top-down companies doing the outsourcing, and eventually to "content created by amateurs", a movement influence by the open source software movement [@howe_crowdsourcing_2008].

Thus, crowdsourcing was adopted to refer broadly to a series of related concepts, all related to people being connected online.
These concepts included
 the 'wisdom of the crowds' [@surowiecki_wisdom_2004], 
 human computation [@ahn_labeling_2004],
 commons-based peer production [@benkler_wealth_2006], and
 free and open-source development [@lakhani_how_2003; @raymond_cathedral_1999].
Further, is overlaps with the content of user-generated content, at least to the extent that user-generated content is used toward a common production or purpose.

## Related Concepts

**Free and Open Source Software (FOSS)**.
The FOSS movement started with the sharing of software source code for interested parties.
Distributed collaboration was not initially a tenet of this openness, but it followed as a consequence.
Open-source development began to adopt some unique properties: users and distributed developers could jump into the code to fix a bug, or add a feature that they wanted to see.

The significance of this became apparent when Linus Torvalds released Linux in 1992 with a development model that accepted external code contributions heartily, released early and often, and followed the pulse of users' needs.
Raymond compared this form of software development to a bazaar, "open to the point of promiscuity", and contrasted it to the traditionally managed 'cathedral' style seen in the commercial world and earlier open source projects [@raymond_cathedral_1999].

The many hands approach to open-source demonstrated that technologically-connected crowds can coherently delegate and create works.
Like with crowdsourcing, open source software development often does not discriminate on credentials or background; if a contributor can make an adequate contribution, it can be used.

The roots of crowdsourcing in open source are credited in @howe_crowdsourcing_2008 and also are on display in Howe's "soundbyte" definition: "the application of Open Source principles to fields outside of software" (sidebar, www.crowdsourcing.com)

**Wisdom of the crowds**. *The Wisdom of the Crowds* [@surowiecki_wisdom_2004] observed the collected effectiveness of crowds when properly aggregated.
Building from Francis Galton's *Vox Populi* [-@galton_vox_1907], where Galton aggregated guesses at a steer weight guessing competition and found that the median guess was more accurate that any individual guess, Surowiecki argues that the ability of many autonomous amateurs to aggregate into a product comparable to something an expert would produce has important ramifications on the internet.

The term 'wisdom of the crowds' has survived the book to refer to the strength of human decision-making in aggregate, and design patterns that make use of that strength.

For example, the wisdom of the crowds is utilized in crowdsourcing opinions (e.g.
product reviews on Amazon, film reviews on Netflix) and in filtering (e.g.
liking of starring posts on a social network).

Part of the wisdom of the crowd is simply statistical.
In one of Surowiecki's examples, he points to the quiz-based game show _Who Wants to be a Millionaire?_
On the show, contestants unsure about their response can poll the audience.
The audience poll turned out to be remarkably effective, but not surprising: even if most of the audience does not know the answer and the probability of choosing one of the four choices in ignorance is roughly equal, then only a few people that are informed of the answer can sway the "crowd" response in the right direction.

This is a fitting anecdote, given that many crowdsourcing efforts do come down to connecting to the right individual from the mass of candidates.
It is seen most clearly in cases such as question and answer websites (e.g. Stack Overflow, Ask Metafilter, Quora).
However, increasing the pool applies in much more than cases of 'wisdom': many successful websites receive the built of their contributions from a small core group of contributors [e.g. Wikipedia - @muchnik_origins_2013; Transcribe Bentham - @causer_transcription_2012; The Commons - @springer_for_2008] and the benefit of opening up their projects to public contributions is in increasingly the likelihood of a "power user" [@springer_for_2008].

The second lesson that permeates crowdsourcing is the idea of aggregation that results in a product better than the sum of its parts. Grand projects like Wikipedia and FoldIt^[An online research-supporting game that looks for the most efficient ways to fold proteins.] [@khatib_algorithm_2011] allow contributions to build on the work of past contributors.


**Human computation**.
Human computation was introduced in the doctoral work of von Ahn, accompanying work on the *ESP Game*, a game where the players tag online images during play [@ahn_labeling_2004; @von_ahn_games_2006].
If the wisdom of the crowds refers to the unique abilities of human intelligence in aggregate, human computation focuses on human abilities as distinct from computational methods -- for so long as they are distinct -- and aims to formalize methods to organize humans in manners akin to automation.
It refers to the process of computation -- the "mapping of some input representation to some output representation using an explicit, finite set of instructions" [@law_human_2011] -- performed by humans.

@quinn_human_2011 offer a taxonomy of human computation, classifying along dimensions of motivation, quality control, aggregation, human skill, process order, and task-request cardinality.
In synthesizing the various definitions of human computation in relation to crowdsourcing, collection intelligence, and social computing, @quinn_human_2011 note two characteristics of consensus in the definition:
 that "the problems fit the general paradigm of computation, and as such might someday be solvable by computers", and 
 that "the human participation is direction by the computational system or process".

As noted by @law_human_2011, Turing defined the purpose of computers as carrying out operations that humans would normally do.
Human Computation, then, refers to utilizing humans for operations that computers are not capable of performing yet.

By this definition, much human computation aligns with crowdsourcing, but large swaths of crowdsourcing are not relevant to human computation.
For example, creative crowdsourcing projects like T-shirt design website Threadless are not human computation.
Inversely, human computation does not have to be sustained by self-selected workers; a more traditionally hired closed system can suffice [@law_human_2011].

The paradigm of computation in human computation is just a subset of ways that crowds can collaborate in crowdsourcing, and human computation can be performed without the modality of multiple collaborators seen in crowdsourcing.

 **Commons-based peer production** and **user innovation**.

Recent cultural observers have noted the behaviours seen in crowdsourcing through various lens.
Crowdsourcing emerges from various affordances -- both technical and social [@wellman_social_2003] -- of modern information networks.
Such as was seen with open-source software development, networked society encourages new forms of cultural creation, not by intention but by consequence of the type of connectedness it allows.

As networked society has developed and the internet has grown ubiquitous, numerous scholars have noted the cascading consequences in how individuals interact with culture and participate in the creation of cultural objects.
Two such streams of study are von Hippel's work on _user innovation_ and Benkler's study of the networked information economy, including his concept of _commons-based peer production_.
Both of these borrow from economic and market-driven theory rather than sociological theory, but they offer valuable language for understanding crowdsourcing as a cultural phenomenon.[^consequence]

[^consequence]: One might argue for the term _consequence_ rather than _phenomenon_, because it positions crowdsourcing as neither an accident nor a product of intention, but acknowledges a history for it where it is a side effect of external influences.

If crowdsourcing is a generalized version of open source principles, von Hippel's work on user innovation [@von_hippel_sources_1988;@von_hippel_democratizing_2006] was an early observation of the trend toward a greater user focus in computer tools and services.

With user innovation, new information products or physical products are generated by users -- those that benefit from using rather than selling the product.
Notably, von Hippel focuses on 'lead users,' users with specific needs that precede broader trends.
These users either develop new products to fill their needs or modify existing products.

Not all crowdsourcing creation is user innovation, though there are echoes of von Hippel's work in companies that turn to the Internet for help in conducting their business, whether it is soliciting feedback and suggestions (e.g. MyStarbucksIdea [^Starbucks]), bug reports, or even work at a bounty (e.g. 99Designs^[http://99designs.com]).
User sharing of work performed for themselves is another similar area: for example, when a music service allows users to share their playlists publicly, their realization of a personal need has potential value to other users.

Benkler's work takes a political economy view on what he calls the 'networked information economy', but arrives at a very similar place to von Hippel.
He argues that the unique landscape of the 'networked information economy' empowers
individuals to do more for themselves and in collaborative groups outside of established economic spheres [@benkler_wealth_2006].
This agency allows commons-based peer-production: for innovation and creation to rise out of the commons rather than from firms.

Benkler [-@benkler_wealth_2006] singles out two user behaviors borne out of access to information networks, which in turn underlie the rise of crowdsourcing.
First, individuals are more empowered to operate autonomously, for themselves and with less reliance on mass-market goods.
At the same time, loose collaborations are easier to organize, allowing the pursuit of individual needs at scales beyond the capabilities of a single person.

[^Starbucks]: http://mystarbucksidea.force.com/

**Citizen science**.
Citizen science refers to collaboration between scientific communities and members of the public on research.
Early crowdsourcing projects, such as galaxy annotation site *Galaxy Zoo* and protein-folding competition *FoldIt*, were noted as a form of citizen science, and crowdsourcing has been used for numerous successful results in the field.

@wiggins_goals_2012 present a typology of citizen science projects, binning them into action-oriented, conservation-focused, investigative, wholly virtual, and educational projects.

<!--## Notable Research

A greatest hits of crowdsourcing is beyond the scope of this study, though ^[TODO this section]

The ESP Game [@von_ahn_games_2006] demonstrated an effective and fun way to support research data through games.

Soylent [@bernstein_soylent_2010] integrated paid crowdsourcing into word-processing tools.
In the process, the study termed the Find-Fix-Verify design pattern.

@mason_financial_2010 found that increasing wages on paid crowdsourcing sites did not improve quality of results, just quantity of contributions, due to an anchoring effect whereby perceived value of the task also grew with payment.
They also identified that intrinsic motivation is still at play in paid crowdsourcing, elegantly showing that it grows weaker the more closely the task is bound to extrinsic reward.

@kraut_building_2011 mined social literature for one of the most insightful looks at how online communities function effectively

Yochai Benkler's Wealth of Networks [-@benkler_wealth_2006], discussed earlier, which took a political economy view to commons-based forms of production, and the affordances that technology provides for sidestepping corporate production in this way.
-->

## Crowdsourcing in the Wild

There is a great deal of crowdsourcing "in the wild", including notable successes and failures.
The successful projects are particularly worth looking at for clues as to what distinguishes them in the face of less successful or failed site.
Below is a selection of projects that have lasted.
This small list is chosen in a somewhat arbitrary manner but in the service of a few points.

Many of these projects are approaching or have surpassed a decade of existence: an eon for the networked age.
The age shows, however, which certainly adds dimension: novelty wears off and communities gentrify.
A project such as Wikipedia or LibraryThing has a very different makeup than a new and novel project as the British Library's LibCrowds [@chiesura_introducing_2015].

Additionally, the small selection of examples below is chosen for breadth.
This dissertation focuses on a small corner of crowdsourcing, but there are many models for online contribution that have been tried, so it is good to have concrete anchors to go by.

Still, looking at crowdsourcing _web sites_ misses part of the legacy of crowdsourcing.
To assume a speculative post for a moment, it appears that many of the design patterns that will survive from the past decade of experimentation with crowdsourcing will be in the augmentative, supportive roles it can play: community-contributed translations or subtitles; qualitative contributions like flagging, rating, or 'likes'; casual filtering activities like up/down voting.
Likewise, the best new projects are ephemeral: they are not intended to last by design.
The point has been made that the amount of human effort and leisure-time labour on the Internet is endless [@shirky_here_2009;@mcgonigal_reality_2011]; however, attention is scare.

Projects like those from exemplar Zooniverse, discussed below, or LibCrowds, or from NYPL Labs: they develop single-serving projects to symbiotically engage communities with their collections in focuses, short-term ways, rather than grandiose 'digitize all of history' projects.
In revisiting my past work on motivations of crowds [@organisciak_why_2010] for the next chapter's crowdsourcing typology, I add a motivator that came up in that work's study, but which I had avoided given the expectation that it is insubstantial: novelty. Novelty is ephemeral, but short-term design may make that ephemerality acceptable.

With that in mind, below are some notable examples in the wild and as a whole, while the next chapter's typology provides a contrasting view of crowdsourcing in its parts.

\newthought{Wikipedia is a collaboratively-written encyclopedia}, where the majority of contributors are volunteers.
Wikipedia, formed in 2001 and now containing 4,579,708 articles [as August 2014: @_wikipedia:size_2014], has an open editing policy that allows anonymous contributions and only restricts who can edit a page for few special cases where vandalism is likely.
The policy also ensures that readers are latent editors [@shirky_here_2009], helping police, correct, and improve poor quality content.

Despite being a notable success, the maturing of the community and the increased difficulty of contribution that comes with more community rules has been blamed for falling numbers of new users [@angwin_volunteers_2009]. 
Wikipedia also has a high gender bias, and it has been argued that the exclusionary effects of the increasingly strict community (or at the least the perception of such) disproportionally turn away women contributors [@gardner_nine_2011].

__Threadless__ is a community of artists that design and vote on T-shirt designs.
Winning designs are licensed by Threadless to print and sell, providing a commission to the designer and additional profit for subsequent shirt reprintings.

Threadless was one of the examples discussed in the initial treatment of crowdsourcing by @howe_rise_2006, and it has stayed remarkably similar in the ensuing nine years.
Despite also becoming a platform that commissions designs from professionals, the central model still hinges on anybody-can-contribute, anybody-can-vote design contests.

The __Netflix Prize__ was a competition run by film rental (and now streaming) company Netflix, offering a million dollar bounty to the person or team that could improve film recommendation by 10% over the root-mean-squared-error performance of Netflix's own system.
Claiming the prize required the winner to publish their results but did not require transfer of intellectual property, only a license for Netflix.
A 2008 New York Times article about the prize noted that the community of participants were notably open in sharing their insights [@thompson_if_2008].

Underlying the Netflix Prize was another type of crowdsourcing: modeling the quality of Netflix's collection through user-contributed rating.
This use of user-generated content for prediction and recommendation is an area known as collaborative filtering [@resnick_grouplens_1994; @hofmann_latent_2004].
The relevance of this point to the Netflix Prize (beyond the contributions that it made to CF research, particularly the progress prize and final prize papers [@bell_bellkor_2008; @koren_bellkor_2009]) is in the postscript to the Netflix Prize. When Netflix tried to run a second challenge, they were criticized and sued for sharing too much of the contributor data: a success in one form of crowdsourcing followed by a failure in another.

__Kickstarter__ is a microfunding platform that enables patronage of artists and creators in their project through small but plentiful contributions.
A project creator on Kickstarter proposes a project and offers tiers of rewards for backers that contribute varying amounts.
When researched in @organisciak_why_2010, the balance between the altruistic support-based motivation and opportunistic reward-based incentives seemed to weigh slightly more toward the former, though I expect this has changed in recent years as more products have been offered on the site.
Regardless, the model of small contributions from many has been seen in many other so-called crowdfunding contexts, including charity, politics [@fung_larry_], and small business [@cortese_proposal_2011; @cortese_crowdfunding_2013].

__Zooniverse__ is a series of crowdsourcing projects that started with Galaxy Zoo.
Galaxy Zoo allowed the public to classify images of galaxies from the Sloan Digital Sky Survey, many being seen for the first time, at a pace much quicker than any one human could perform.
Another popular project, Old Weather [@eveleigh_i_2013], transcribes weather logs from old ship's journals.
In Snapshot Serengeti [@swanson_snapshot_2015], participants classify animals photographed in camera traps.
Many of the Zooniverse projects follow a similar pattern: encoding of curious, novel, or interesting images while contributing to real research.

__FoldIt__ is a game where users try to develop the most efficient folding of a protein [@khatib_algorithm_2011].
Folds are scored and placed on a leaderboard, adding a competitive edge.
FoldIt shows that, when well matched to competitive impulses, complex problems can be tackled through semi-anonymous online workers.

__ReCaptcha__ [@von_ahn_recaptcha_2008] cleverly took a system intended to distinguish humans from bots -- obfuscated text transcription with Captchas -- and combined it with a problem that by definition only humans can do: fixing scanned text that computational techniques failed at.
With ReCaptcha, online visitors prove they are human and help digitize scanned archives at the same time.

## In Information Science

In information retrieval, the focus on crowdsourcing has been predominantly in the use of paid crowds for generating evaluation datasets, though there have been efforts to use crowds to improve document representation or even query-specific ranking.

The benefit of paid crowds for relevance judgments is that it allows for on-demand evaluation datasets [@alonso_crowdsourcing_2008].
This has been a costly and exhausting process in the past, making it difficult to perform IR research on more novel datasets than the judged sets available from TREC.
Relevance judgments benefit from the agreement among multiple humans, since the concept of 'relevance' is not clear-cut but rather normative.
The ability to attract a breadth of rater types also positions paid crowdsourcing as an effective means to collecting evaluation data.

TREC itself ran a crowdsourcing track for three years, the primary task a competition to improve relevance judgment quality [@lease_overview_2011; @smucker_overview_2012].

Another common use of crowdsourcing is for information retrieval correction of results.
Manual tweaking of results is not a scholarly activity, but there is evidence that it is done often in practice, by companies such as Twitter [@chen_improving_2013], 

Using crowdsourcing in the machine, as evidence for search engine algorithms rather than evaluation, is less common.
PageRank is one such effort, utilizing the linking habits of web page authors as a proxy for authoritativeness and quality [@page_pagerank_1999].
Recently, crowdsourcing has proven useful for time-sensitive queries, and has been used by Twitter to model searches that may have never been seen before [@chen_improving_2013].

One of the better explored spaces of retrieval over or incorporating crowdsourced information is in folksonomies.
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

Finally, @harris_applying_2012 provide a comprehensive overview of ways that crowdsourcing and games with a purpose can be incorporated in the information retrieval workflow.
While crowdsourcing is noted as highly feasible for evaluation, it is also noted as an approach which can help in building document collections, identifying information needs, and query refinement.

Discussion of crowdsourcing in information science continues generally in the next chapter, an IS-centric typology of crowdsourcing, then in the context of paid crowdsourcing in the subsequent two chapters.

## Summary

Crowdsourcing is a phenomenon with a wide umbrella and a broad range of parameterizations.
For information science, it is potentially very valuable for its ability to efficiently gather extra-textual information about existing objects.
The next chapter presents a typology, again focused on broad crowdsourcing, before turning back to focus on information science crowdsourcing with the subsequently original research chapters.
