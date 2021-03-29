# Computational Linguistics 2

## Course Info

### Instructor
- [Jeffrey Heinz](https://jeffreyheinz.net) 
- jeffrey.heinz@stonybrook.edu 

### Course
- MWF 09:15-10:10 
- [ZOOM LINK](https://stonybrook.zoom.us/j/93603940635?pwd=c2U2WDJ4SnJUSXg1emdaU3phSWVNUT09) 
- Office Hours are Tuesdays from 1:00-4:00pm and by appointment.
- [The syllabus]()
- [Our Google Doc "whiteboard"](https://docs.google.com/document/d/1cYKeifwRr0plOrnktIRv2viO0p57hwDLykvBWTiEf80/edit?usp=sharing)
- [Our Miro "whiteboard"](https://miro.com/welcomeonboard/mmHj2goQFkMbz8LNcn8FnW3sK8xepYf9ym3g7OoPBViWshuqL1WCSSyiQgm41cdG)
- [Useful Links](UsefulLinks.md) for github, markdown, LaTeX, and Python

## Class Log

### Mon Mar 29 2021
- We begin studying [deterministic finite-state transducers](handouts/dft-strings.pdf).

### Fri Mar 26 2021
- In lieu of Spring Break, today's class was an optional "catch-up" class.

### Wed Mar 24 2021
- Updated handouts on trees to deal with tree width
- We discussed the connections to context-free languages.

### Mon Mar 22 2021
- We explained why deterministic TD tree acceptors can't recognize everything deterministuc BU tree acceptors can.
- We discussed closure properties of tree acceptors, and got tangled up with the ranked alphabet and the width of a tree (and by extension a treeset, and a class of treesets.)

### Fri 19 Mar 2021

- We reviwed top-down tree DFA. 
- Dakotah shared his [proposal for visualizing bottom-up tree acceptors](readings/visualizing-tree-acceptors.pdf). Here is [his question about it](https://math.stackexchange.com/q/4067831)  on the math stackexchange.

- We decided to make class on Mar 26 optional for those who need a 3 day weekend. I will be here for anyone else who wants to talk shop, or review class material.
- The deadline for the project proposal has been revised to April 16.

### Wed 17 Mar 2021

- We discussed top-down tree DFA. 
- We finished a few minutes early for those who want to attend Owen Rambow's talk at the AI seminar.

### Mon 15 Mar 2021

- We  discussed bottom-up tree DFA. 
- HW3 on string DFAs is now in the repository. It is due next Monday (3/21).

### Fri 12 Mar 2021

- We went over the product construction for intersection and union of string DFAs.

### Wed 10 Mar 2021

- Class canceled.

### Mon 08 Mar 2021

- We studied properties of DFA for strings.

### Fri 05 Mar 2021

- We began studying deterministic finite-state acceptors for strings.
- Here is the [handout we are using](handouts/dfa-strings-trees.pdf)

### Wed 03 Mar 2021

- We defined 'map and combine' functions over tree structures.
- HW 2 is posted and is due Wednesday, March 10. 
- Here is some [background on classes](https://www.python-course.eu/python3_object_oriented_programming.php) in Python if you are not familiar with them. 

### Mon 01 Mar 2021

- We reviewed 'map' functions on strings
- We defined trees as recursive data structures.

### Fri 26 Feb 2021

- We reviewed where we are in the class and where where we are going.
- We defined strings with a recursive data structure and learned how to define functions which take this data sructure as an input.

### Wed 24 Feb 2021

- We studied Suffix Substitution Closure for Strictly k-local languages. 
- 

### Mon 22 Feb 2021

- We studied the Figure 4.2 on page 64 of Graf's notes and came to understand it.
- For a succinct review on SL_k, read up to section 2.2 pages 329-334 in [Rogers and Pullum 2011](readings/Rogers-Pullum-2011.pdf)

### Fri 19 Feb 2021

- We generalized bigram grammars and languages to k-grams (strictly k-local grammars and languages)
- We studied two ways of dealing with short strings (augmenting with strings with multiple boundaries or extracting factors shorter than k when necessary).
- We saw how for all k, strictly k+1 languages are a proper superset of strictly k languages.

### Wed 17 Feb 2021

- We thought about bigram grammars as "tiling" (see this (whiteboard)[https://miro.com/app/board/o9J_laeryaM=/])
- We showed how CFGs can be thought of as the tiling of 2-local trees (where '2' refers to tree depth). 
- We continued to study Suffix Substitution Closure for bigram languages.
- Optional only: (Ji and Heinz 2020)[http://jeffreyheinz.net/papers/Ji-Heinz-2020-ISLTT.pdf] on ISL tree transducers (which also provides definitions of trees and SL2 tree languages). 

### Mon 15 Feb 2021

- We went over what is expected for [HW1](https://github.com/Compling2-Spring2021-SBU/HW1). It is due next Monday Feb 22.
- We studied Suffix Substitution Closure for bigram languages.

### Fri 12 Feb 2021

- We discussed bigram grammars and languages.
- We talked about mathematical notation w.r.t precision and redundancy.
- For Monday, read Unit 4 up to section 2.3 (up to page 64) in [Graf's book](graf-book/999_CompleteLectureNotes.pdf)
- We will talk about SL2 Substitution Closure on Monday.
- Optional Resources: 
  - I added [Jim Rogers' notes on SL](handouts/slocal.ho.pdf)  to the handouts readings.
  - Jim and I also presented a lot of this at ESSLLI in 2014 in minicourse. Here are the [course's slides](http://jeffreyheinz.net/talks/Rogers-Heinz-2014-MTP-ESSLI-slides.pdf)

### Wed 10 Feb 2021

- We discussed the Stabler paper and emphasized the following:
  - Trees are important for syntax and are motivated by different kinds of observations
  - Stabler's position that "Given the importance of tree languages in linguistic theory, they deserve more attention than they receive."
  - Stabler's 3rd summary point: "In some mildly context-sensitive formalizations of recent syntax, the set of derivations is a regular tree language, and the effect of movement is a regular transduction. This reveals that human languages can be defined in two finite-state steps." This perspective informs the topics we cover in this class (finite-state descriptions of tree languages and tree transformations)
- We explored different CFGs for the language containing all and only those strings with equals numbers of 'a's and 'b's. 
- We introduced informally the notion of Strictly 2-Local grammars and languages (bigram grammars and languages).
- For Friday, read Unit 3 in [Graf's book](graf-book/999_CompleteLectureNotes.pdf)

### Mon 08 Feb 2021

- We finished going over the rewrite grammars handout.
  - We did exercise 4 on the class whiteboard.
  - We talked about how originally formal language theory was based on sets of strings, but two main innovations since then include the study of sets of trees and transformations over strings and trees.
  - We related grammars recognizing infinite sets of strings in computational linguistics to equations defining infinite sets of points in math/physics, etc.
- Read the organizational structure of the paper [Stabler 2019](readings/Stabler-2019-Three-Mathematical-Foundations-for-Syntax.pdf) 
  - What are the section headings of sections 2, 3 and 4?
  - What is the coincidence he refers to?
  - Without reading the details of sections 2, 3, and 4, what is the main thesis of the paper?
- For fun, see if you can write a context free grammar for the language containing all and only those strings with equals numbers of 'a's and 'b's. 


### Fri 05 Feb 2021

- We discussed the paper [Rooij and Baggio 2021](readings/RooijBaggio2021.pdf) 
- We finished the handout on [rewrite grammars](handouts/rewrite-grammars.pdf)
- For Monday:
  - Read Chapter 1 of [Graf's book](graf-book/999_CompleteLectureNotes.pdf). 
  There is a lot in there but focus on the themes of 'computation', the competence/performance distinction, and Marr's levels. 
  The discussion of Turing machines, sorting algorithms and memory addresses are informative, but strictly speaking not necessary for the larger conceptual points.


### Wed 03 Feb 2021

- Today we introduced the course and went over the syllabus.
- We got through the first few pages on [rewrite grammars](handouts/rewrite-grammars.pdf)
- For Friday:
  - Read [Rooij and Baggio 2021](readings/RooijBaggio2021.pdf) 
  - Think about what languages G2 and G3 generate/recognize/accept.
  - Please make sure you have a github account set up and send me your username so I can add you to the "Compling2-Spring2021-SBU" github organization.

### Mon 01 Feb 2021

Classes cancelled due to a winter storm.

