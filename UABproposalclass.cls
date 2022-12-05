%%	University of Alabama at Birmingham Proposal class file
%%	
%%	Copyright (c) 2022 Ethan Taylor
%%	The latest version of this file may be obtained from
%%		https://github.com/ethan-jtaylor/UAB_DISSERTATION_TEMPLATE
%%	
%%	License: LaTeX Project Public License (www.latex-project.org/lppl.txt)
%%		Executive summary:
%%			This software is copyright but you are granted a license which gives
%%			you, the "user" of the software, legal permission to copy, distribute,
%%			and/or modify the software. However, if you modify the software and
%%			then distribute it (even just locally) you must change the name of the
%%			software to avoid confusion.
%%	
%%	OR (dual-licensed)
%%	
%%	License: GNU Lesser General Public License (www.gnu.org/licenses/lgpl.html)
%%	
%%	This class file was adapted from the UA class file written by Paul
%%	Kilgo(paulkilgo@gmail.com) which is hosted at https://github.com/OEP/uathesis.
%%	While the final compiled document appears very similar, the actual class
%%	structure has undergone heavy rewrites and adapted to maintain compliance
%%	with the UAB format manual.
%%	
%%	Author Information:
%%		Ethan Taylor
%%		The University of Alabama at Birmingham
%%		ethan.j.taylor96@gmail.com

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{UABproposalclass}

\LoadClass[12pt]{report}

%%	IMPORTING PACKAGES
%%	Here we just import the necessary packages to achieve the correct
%%	formatting. Showframe can be uncommented in the geometry command to see the 
%%	frames which define the margin spacing if you need to check.
\usepackage{geometry}
\geometry{
letterpaper,
top = 1in,
bottom = 1in,
right = 1in,
left = 1in,
footskip = 0.5in,
heightrounded,
%showframe
}
\usepackage{tocloft}
\usepackage{titlesec}
\usepackage{setspace}
\usepackage{textcase}


%%	FORMATTING TABLE OF CONTENTS
%%	If you see the format manual then you can also see
%%	that a different available convention is to remove numbering
%%	and just do chapter names. I have opted for both at the moment
%%	and that can be changed in the future if needed or based on personal
%%	preference of the user. Just adjust these settings to achieve it. 
%naming toc
\renewcommand{\contentsname}{\hfill Table of Contents \hfill}
%Making table of contents on its own page with 2in top margin and center
\renewcommand{\cfttoctitlefont}{\pagebreak\MakeTextUppercase}
\renewcommand{\cftaftertoctitle}{\hfill}
%setting font for toc entries correctly
\renewcommand{\cftchapfont}{ }
%formatting toc dots
\renewcommand{\cftdot}{.}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
%page font formatting
\renewcommand{\cftchappagefont}{}
%making chapter show up in toc and proper spacing
\renewcommand\cftchappresnum{CHAPTER }
\cftsetindents{chapter}{0em}{6.5em}
\setlength{\cftbeforechapskip}{0pt}
%defining spacing between toc entries
\renewcommand{\cftbeforechapskip}{12pt}
\renewcommand{\cftbeforesecskip}{0pt}
\renewcommand{\cftbeforesubsecskip}{0pt}


%%	FORMATTING LIST OF TABLES AND FIGURES
%%	Here we just format the list of tables and figures. The formatting
%%	is very similar to table of contents.
%list of figures
\renewcommand{\listfigurename}{\hfill List of Figures \hfill}
\renewcommand{\cftloftitlefont}{\pagebreak\hfill\MakeTextUppercase}
\renewcommand{\cftafterloftitle}{\hfill}
%list of tables
\renewcommand{\listtablename}{\hfill List of Tables \hfill}
\renewcommand{\cftlottitlefont}{\pagebreak\hfill\MakeTextUppercase} 
\renewcommand{\cftafterlottitle}{\hfill}
%prevent spacing being added in between entries in lof and lot
\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{lof}{\protect\noaddvspace}
\addtocontents{lot}{\protect\noaddvspace}


%%	DEFINING COMMANDS
%%	Here we define the various commands that are utilized to create
%%	the various front and body matter.
%% Thesis committee
\newcommand\committee[1]{\renewcommand\@committee{#1}}
\newcommand\@committee{Committee names here.}
%% Adviser
\newcommand\adviser[1]{\renewcommand\@adviser{#1}}
\newcommand\@adviser{Adviser name here.}
%% Candidate degree
\newcommand\degree[1]{\renewcommand\@degree{#1}}
\newcommand\@degree{Degree name here.}
%% University
\newcommand\university[1]{\renewcommand\@university{#1}}
\newcommand\@university{University name here.}
%% Department
\newcommand\program[1]{\renewcommand\@program{#1}}
\newcommand\@program{Graduating program here.}
%% School
\newcommand\school[1]{\renewcommand\@school{#1}}
\newcommand\@school{School name here.}
%% Year of graduation
\newcommand\gradyear[1]{\renewcommand\@gradyear{#1}}
\newcommand\@gradyear{\the\year}
%% Place
\newcommand\place[1]{\renewcommand\@place{#1}}
\newcommand\@place{Place here}
%% Keywords
\newcommand\keywords[1]{\renewcommand\@keywords{#1}}
\newcommand\@keywords{Place up to 6 keywords here.}
%% Abstract body text
\renewcommand\abstract[1]{\renewcommand\@abstract{#1}}
\newcommand\@abstract{Abstract text here.}
%% Dedication body text
\newcommand\dedication[1]{\renewcommand\@dedication{#1}}
\newcommand\@dedication{Dedication text here.}
%% Acknowledgments body text
\newcommand\acknowledgments[1]{\renewcommand\@acknowledgments{#1}}
\newcommand\@acknowledgments{Acknowledgments text here.}


%%	COMMAND TO MAKE COPYRIGHT PAGE
%%	Here is just where we format the copyright page and place it
%%	in a command so it can be added to the front matter.
\newcommand{\makecopyright}{
	\vspace*{\fill}
	\thispagestyle{empty}
	{\centering
		\begin{singlespace}
			Copyright by\\
			\@author\\
			\@gradyear
		\end{singlespace}
	}
}


%% NAME BIBLIOGRAPHY
\renewcommand{\bibname}{References}


%%	MAKE THE FRONT MATTER
%%	The front matter is the pages before the first chapter.
%%	Since these have special required formatting different than the 
%%	body, we just define a makefrontmatter command that takes the 
%%	user inputted values and formats them correctly. This command
%%	can then be called at the beginning of the document to make all the
%%	relevant pages. We also utilized the frontmatter environment here 
%%	to define how chapter titles are formatted.
\newcommand{\makefrontmatter}{
	\thispagestyle{empty}
	\topskip=1in
	{\centering
		\begin{singlespace}
			\renewcommand{\and}{\NoCaseChange{\\}}
			\MakeTextUppercase{\@title} \\
			\vspace{6\baselineskip}
			by \\
			\vspace{\baselineskip}
			\MakeTextUppercase{\@author} \\
			\vspace{2\baselineskip}
			\MakeTextUppercase{\@adviser, Committee Chair \and \@committee}
			\vfill
			A PROPOSAL \\
			\vspace{\baselineskip}
			Submitted to the graduate faculty of \@university,\\ in partial 		fulfillment of the requirements for the degree of\\ \@degree. \\
			\vspace{\baselineskip}
			\MakeTextUppercase{\@place} \\
			\vspace{\baselineskip}
			\@gradyear
		\end{singlespace}
	}
	\pagebreak
	
	\begin{frontmatter}
	
	\begin{center}
	\MakeTextUppercase{\@title} \\
	\MakeTextUppercase{\@author} \\
	\MakeTextUppercase{\@program} \\
	ABSTRACT
	\end{center}
	\addcontentsline{toc}{chapter}{ABSTRACT}
	\@abstract
	\vfill
	\begin{flushleft}
		Keywords: \@keywords
	\end{flushleft}
	    	
	
	\begin{spacing}{1}
		\tableofcontents
	\end{spacing}
	
	\begin{spacing}{1}
		\listoftables 
	\end{spacing}
	\addcontentsline{toc}{chapter}{LIST OF TABLES}
	     
	\begin{spacing}{1}
		\listoffigures
	\end{spacing}
	\addcontentsline{toc}{chapter}{LIST OF FIGURES}
	
	\end{frontmatter}

}


%%	FRONT MATTER ENVIRONMENT
%%	This environment formats the page numbers and chapter
%%	titles for the front matter pages for use in the make
%%	front matter command.
\newenvironment{frontmatter}{
	\makecopyright
	\pagebreak
	\pagenumbering{roman}
	\setcounter{page}{3}
	\setcounter{chapter}{0}
	\begin{doublespace}
	\renewcommand{\@makechapterhead}[1]
	{
	\begin{center}
		\MakeTextUppercase{##1}
	\end{center}
	}
	\renewcommand{\@makeschapterhead}[1]
	{
	\begin{center}
		\MakeTextUppercase{##1}
	\end{center}
	}
}
{
    \end{doublespace}
}

%%	BODY ENVIRONMENT
%%	This defines the body environment where the majority of the 
%%	text will go. We redefine the page numbering as well as the chapter
%%	titling and text format. Some improvements can be done here, in
%%	particular fixing the use of vspace for chapter headings and 
%%	the use of topskip. If you desire different formatting for the
%%	sections and subsections then you can edit the renewcommands
%%	here to achieve the desired format.
\newenvironment{body}
{
	\pagebreak
	\pagenumbering{arabic}
	\setcounter{page}{1}
	\setcounter{chapter}{0}
	\flushbottom %makes text line up nicely w/bottom margin
	\begin{doublespace}
	\renewcommand{\@makechapterhead}[2]
	{
		{\centering %centering instead of center to set fixed spacing
		\vspace{0.625in} %manually getting the 2in top margin
		\MakeTextUppercase{\@chapapp\space\thechapter}
		\vspace{0.5\baselineskip}
		\begin{spacing}{1}
			\MakeTextUppercase{##1}
		\end{spacing}
		\vspace{\baselineskip} %space between title and text
		\par} %need par to properly end centering
	} 
	\renewcommand{\@makeschapterhead}[1]
	{
		{\centering	
		\vspace{0.625in} %manually getting the 2in top margin	
		\MakeTextUppercase{##1}
		\vspace{\baselineskip} %space between title and text
		\par}
	}
	\renewcommand{\section}
	{
		%add \bfseries or similar if want bold or other format
		%next to \normalsize
		\@startsection{section}{1}{0mm}{4ex}{2ex}{\normalsize}
	}
	\renewcommand{\subsection}
	{
		\@startsection{subsection}{1}{0mm}{1mm}{1mm}{\normalsize}
	}
	\topskip=-1in %this is only way i could get bodytext proper aligned
}
{
	\end{doublespace}
}