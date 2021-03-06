# Computational Linguistics 2

## Course Info

### Instructor
- [Jeffrey Heinz](https://jeffreyheinz.net)
- jeffrey.heinz@stonybrook.edu

### TA
- [Dakotah Lambert](https://vvulpes0.github.io/)
- dakotah.lambert@stonybrook.edu
- Office Hours: Fridays 1:00–4:00pm and by appointment

### Course
- TTh 09:45-11:05
- SBS N103
- Office Hours are Tuesdays and Thursdays from 12:30-2:00pm and by appointment.
- [Syllabus](syllabus-compling2-LIN637-22S-Heinz.pdf)
- [Useful Links](UsefulLinks.md) for github, markdown, LaTeX, and Haskell

## Class Log

### Thu 21 Apr 2022

- Class canceled.

### Tue 19 Apr 2022

- We concluded discussion of [generalized deterministic finite-state string transducers](readings/main-draft.pdf) (Chapter 4).
- We began discussion of [deterministic finite-state bottom-up tree transducers](readings/main-draft.pdf) (Chapter 5).
- For Tuesday Apr 26:
  - Fork [HW10](https://github.com/Compling2-Spring2022-SBU/HW10), and complete the exercises in the folder gdfst.

### Thu 14 Apr 2022

- We discussed code for producing [prefix trees](code/Dfsa.lhs) and discussed how Haskell imports libraries.
- We also discussed code for writing programs compilable with `ghc` on the command line
  - Example [sp2](code/sp2.lhs)
  - Example [slk](code/slk.lhs)
- We introduced monoids and [generalized deterministic finite-state
  string transducers](readings/main-draft.pdf) (Chapter 4).
- For Tuesday Apr 26:
  - Fork [HW10](https://github.com/Compling2-Spring2022-SBU/HW10), and complete the exercises in the folder gdfst.

### Tue 12 Apr 2022

- We continued discussion of [deterministic finite-state string transducers](readings/main-draft.pdf) (Chapter 4).
- We discussed HW09.
- For Thursday Apr 07:
  - Fork [HW09](https://github.com/Compling2-Spring2022-SBU/HW09), and complete the exercises in the folder dfst.

### Thu 07 Apr 2022

- We reviewed HW08.
- We began discussion of [deterministic finite-state string transducers](readings/main-draft.pdf) (Chapter 4).
- For Thursday Apr 07:
  - Fork [HW09](https://github.com/Compling2-Spring2022-SBU/HW09), and complete the exercises in the folder dfst.

### Tue 05 Apr 2022

- Regarding DBFTA, we went over the propositional logic example. Note
  the figure in the notes needs to be corrected. A working DBFTA for
  that example only requires one state.
- We also saw how the "syntax tree" for propositional logic can be
  "spelled out" phonologically and evaluated semantically.
- Read [Stabler
  2019](readings/Stabler-2019-Three-Mathematical-Foundations-for-Syntax.pdf)
  on converging trends in syntax.
- For Thursday Apr 07:
  - Fork [HW08](https://github.com/Compling2-Spring2022-SBU/HW08).

### Thu 31 Mar 2022

- We reviewed HW07.
- We reviewed some aspects of [plebby](https://hackage.haskell.org/package/language-toolkit-1.0.0.0)
- We began discussion of [deterministic finite-state tree acceptors](readings/main-draft.pdf) (Chapter 3).
- For Thursday Apr 07:
  - Fork [HW08](https://github.com/Compling2-Spring2022-SBU/HW08), and
  complete the exercises in the folder dfbta.


### Tue 29 Mar 2022

- We went over exercises 1 and 2.
- We discussed HW07.
- We discussed [record syntax](http://learnyouahaskell.com/making-our-own-types-and-typeclasses#record-syntax).
- For Thursday Mar 31:
  - Fork [HW07](https://github.com/Compling2-Spring2022-SBU/HW07).

### Thu 24 Mar 2022

- We went over HW06.
- We had a conversation about final projects.
- We began discussion of [deterministic finite-state string acceptors](readings/dfsa.pdf).
- For Thursday Mar 31:
  - Fork [HW07](https://github.com/Compling2-Spring2022-SBU/HW07), and
  complete the exercises in the folder dfsa.

### Tue 22 Mar 2022

- We went over questions on HW06 due Thursday.
- We reviewed regular, star-free, strictly-local, strictly piecewise classes.
- We dicussed locally testable, piecewise testable, and locally
  threshold testable classes
  ([slides](readings/subregularcomplexity.pdf)).
- [Summary handout](readings/subreghandout.pdf)

### Thu 10 Mar 2022

- We reviwed Strictly Local languages.
- We introduced Strictly 2-Local tree languages and related them to
  context free grammars.
- We discussed Strictly Piecwise languages and subsequence closure
  ([slides](readings/subregularcomplexity.pdf)).
- For Thursday Mar 24:
  - Fork [HW06](https://github.com/Compling2-Spring2022-SBU/HW06), and
  complete the exercises in the folders trees and sp.


### Tue 08 Mar 2022

- We discussed foldr.
- We discussed strictly k-local languages and suffix substitution
  closure ([slides](readings/subregularcomplexity.pdf))
- For Thursday:
  - Let Σ = {a,b,s,ʃ}. Let L be the language which contains all and
    only those strings which do not contain both s and ʃ.  Using
    suffix substiution closure, prove that L is not strictly k-local
    for any k. Hint: start with k=2, then k=3 then go for it!

### Thu 03 Mar 2022

- We went over HW04 on recursion and Hawaiian.
- We discussed functional composition in Haskell.
- We began to discuss subregular complexity and strictly k-local
  languages ([slides](readings/subregularcomplexity.pdf))
- For Tuesday:
  - Fork [HW05](https://github.com/Compling2-Spring2022-SBU/HW05), and
  complete the exercises in the folders hutton and hawaiian.


### Tue 01 Mar 2022

- We discussed the higher order functions map and fold (chapter 7 of Hutton).
- For Thursday:
  - Read sections 7.3 through 7.5 of Hutton (not 7.6).
  - Read [Rooij and Baggio 2021](readings/RooijBaggio2021.pdf) on
       the theoretical cyle.
- Here is an [optional wiki
  page](https://wiki.haskell.org/Foldr_Foldl_Foldl') comparing
  `foldr` to `foldl` to `foldl'`.

### Thu 24 Feb 2022

- We reviewed the HW and chapter 8 of Hutton.
- We continued to study the [sequences](code/strings.lhs)
  and [trees](code/trees.lhs) examples.
- For Tuesday:
  - Fork [HW04](https://github.com/Compling2-Spring2022-SBU/HW04), and
	complete the exercises in the folders hutton and hawaiian.
  - Read chapter 7.1 and 7.2 of Hutton (not beyond for now).

### Tue 22 Feb 2022

- We reviewed chapters 6 and 8 of Hutton.
- We looked at examples of how to define [sequences](code/strings.lhs)
  and [trees](code/trees.lhs) in haskell and considered some functions over
  them.
- For Thursday:
  - Read chapter 8 through 8.5 of Hutton (not 8.6 and beyond).
  - Read chapter 7.1 and 7.2 of Hutton (not beyond for now).

### Thu 17 Feb 2022

- We defined trees as a recursive data structure and looked at some
  functions over them.
- We finished reviewing chapter 5 and the beginning of chapter 6 of Hutton.
- For next Tuesday:
  - Finish reading chapter 6 of Hutton.
  - Fork [HW03](https://github.com/Compling2-Spring2022-SBU/HW03), and
	complete the exercises in the folders hutton and hawaiian.

### Tue 15 Feb 2022

- We reviewed chapter 4 of Hutton.
- We began our discussion of trees and strings [in these
  notes](readings/chap01-02.pdf), and studied a recursive definition
  of strings.

### Thu 10 Feb 2022

- Dakotah finished presenting his [pleb slides](readings/pleb.pdf).
- We discussed local, piecewise, and tier-based local factors as the
  parts of the whole that are used to determine a sequence's
  well-formednes. These were motivated by natural language examples
  shown on slides 7 and 17-21 of [this
  talk](readings/oxford-typology-computation.beamer.pdf)
- We finished reviewing chapter 3 of Hutton.
- For next Tuesday:
  - Read up to and including section 4.4. of Hutton. (So not section 4.5)
  - Do exercises 1-6 at the end of Hutton chapter 4. Fork
	[HW02](https://github.com/Compling2-Spring2022-SBU/HW02), complete
	the exercises in one of the `.hs` or `.lhs` files there, and
	submit a pull request to submit your answers.
  - Please contact Dakotah or myself if you have any questions about
	this. We are here to help.

### Tue 08 Feb 2022

- We went over exercise 7 on rewrite grammars.
- We reviewed chapter 3 of Hutton.
- Dakotah presented on the piecewise-local expression builder (pleb)
  [slides](readings/pleb.pdf)
- For Thursday
  - Review class materials and begin reading section 4 of Hutton if so inclined.

### Thu 03 Feb 2022

- Today we finished the handout on rewrite grammars.
- We reviewed chapter 2 of Hutton.
- I reviewed a bit of what is known if we think of natural languages
  as formal languages in slides 14-15 of [this
  talk](readings/umcp-cogsci-may2010.beamer.pdf).
- For Tuesday
  - For fun, work on exercise 7 in the [the handout on formal
  languages and grammars](readings/rewrite-grammars.pdf)
  - Read Chapter 3 of Hutton and complete all the exercises at the end
	of the chapter.
  - Fork [HW01](https://github.com/Compling2-Spring2022-SBU/HW01),
	complete the exercise and submit a pull request to submit your
	solution.

### Tue 01 Feb 2022

- Today we reviewed chapter 1 of Hutton.
- We went over section 4 of [this handout on formal
  languages and grammars](readings/rewrite-grammars.pdf)
- For Thursday:
  - For a fun puzzle, work on exercise 5 on page 6 of the handout.
  - Read Chapter 2 of Hutton and complete all the exercises at the end
	of the chapter.
- For next Tuesday set up a text editor for working on Haskell
  programs. Haskell's recommended IDEs are here:
  [https://wiki.haskell.org/IDEs](https://wiki.haskell.org/IDEs)

### Thu 27 Jan 2022

- Today we finished the discussion around different kinds of regular
  expressions (RE, GRE, CUE, SFE).
- For next Tuesday, please do the following
  - Read Chapter 1 of the Graham Hutton Book on Haskell and do
	exercises 1-5 in section 1.7 at the end of the chapter.
  - Read sections 4 and 5 of the
	[handout](readings/rewrite-grammars.pdf) on rewrite grammars.
  - Come prepared to ask questions about both!

### Tue 25 Jan 2022

- Today we introduced the course and went over the syllabus.
- we went over the first two pages of [this handout on formal
  languages and grammars](readings/rewrite-grammars.pdf)
- For Thursday:
  - Please make sure you have a github account set up and send me your
	username so I can add you to the "Compling2-Spring2022-SBU" github
	organization.
  - Complete exercise 1 on page 2 of the handout.
  - Install Haskell using GHCup. [Instructions are
	here.](https://www.haskell.org/ghcup/) If you need assistance,
	please let us know asap. We are happy to help. Windows users may
	want to install the [Windows Subsystem for
	Linux](https://docs.microsoft.com/en-us/windows/wsl/) or set up a
	[Virtual Machine](https://www.virtualbox.org/) with a Linux
	distribution (such as Ubuntu) running on it. [Instructions for how
	to install Ubuntu on a virtual machine are
	here.](https://ubuntu.com/tutorials/how-to-run-ubuntu-desktop-on-a-virtual-machine-using-virtualbox#1-overview)

