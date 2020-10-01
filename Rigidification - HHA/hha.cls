% Style file for HHA.
%
% Contact jdc@uwo.ca with questions.
%
% See http://intlpress.com/HHA/authinfo.htm
% and http://intlpress.com/HHA/style/hhaguide.htm
% for information about using this style file.
%
% List of changes made to this file:
% (Remember to update the \ProvidesClass date when this file is changed.)
%
% 2020/05/05: jdc: add dummy \EditFlow command
% 2015/04/13: jdc: make hhaplain the default theoremstyle (good for Theorems)
% 2014/12/17: mdc: change subsubsection to use bold face
% 2014/02/16: jdc: change URL on first page to reflect new web site
% 2013/08/19: jdc: allow \classification to take an optional argument
%                  indicating the year.  Change the default to 2010.
% 2013/08/13: jdc: change Acknowledgements to Acknowledgments.
%                  Overwrite plain, definition and remark theoremstyles,
%                  so authors don't need to use hhaplain, etc.
% 2011/04/24: jdc: use \texttt instead of \url in footnote; put neg space back.
% 2011/04/11: jdc: make the default articlenumber ?, to fix line break
% 2011/03/24: jdc: get rid of negative space in \url commands in footnote,
%             as they cause trouble with hyperref.
% 2011/03/03: jdc: replace \webaddress command with \articlenumber, and
%             use the latter to generate both the URL and the doi number.
% 2010/11/19: jdc: enlarged textheight by about 6pt, which gives one
%             extra line of text on a page of prose.
% 2010/03/05: jdc: The redefinition of \displaybreak in \showbreaks now handles
%             the optional arg.
% 2009/07/28: jdc: \query: reduce vertical size of highlight to lessen the chance
%             of changing linespacing; put \marginpar after highlighted text,
%             to also fix some vertical spacing problems.  But problems still occur.
%             Moved marginpar notes higher, as well, using vspace within the note.
% 2009/06/04: jdc: \showbreaks also shows \displaybreak and \enlargethispage
% 2009/05/07: jdc: add \unChange command to revert copyeditor changes.
% 2009/03/24: jdc: require amsmath before amsthm
% 2008/11/27: jdc removed \bibliographystyle{hha}, since there is no
%             hha.bst that I know of.
% 2008/11/04: jdc added \disablequery command to silence warnings.
% 2008/07/02: jdc removed raisebox from \query and \showbreaks marginal notes,
%             since this prevented line breaks.
%             Also adjusted wording of some warnings.
% 2008/06/18: jdc adjusted \query and \showbreaks marginal notes again
% 2008/06/17: jdc adjusted \query and \showbreaks marginal notes
% 2008/05/23: jdc added \Change, \Changed commands.
%             Adjusted \query margnote spacing.
% 2008/04/08: jdc switched from \MakeUpperCase to \MakeTextUpperCase
%             for the running head.  This seems to leave math unchanged,
%             which is good.
% 2008/04/07: jdc made \hl a no-op when \enablequery not used; also
%             need to undefine it before loading soul.
% 2008/03/28: jdc made \highlight and \mathhl no-ops when \enablequery
%             not used.
% 2008/02/22: jdc made \query warning message use \typeout instead of
%             \HHA@warn, so a bit less verbose.
%             jdc added \raggedright to \query's marginpar.
% 2007/12/06: jdc added \let\\\relax before title running head
% 2007/11/12: jdc made running heads more useful, turning on twoside;
%             adjusted textwidth, textheight, margins;
%             put webaddress as footnote on first page. 
%             This version used from volume 10 onwards.
% 2007/10/31: jdc switched from cshade to hl for highlighting queries,
%             made other adjustments to queries, and added \showbreaks.
% 2007/8/24 : jdc commented out old issn (wasn't used anyways)
% 2007/8/9  : jdc added \abstractwidth
% 2007/1/2  : jdc made \queryend insert \par.
% 2006/12/21: jdc got rid of underfull hbox warnings in queries.
% 2006/9/21 : jdc changed footnotesep from 6 to 7, to space separate
%             footnotes apart by the same amount as lines within a
%             multiline footnote.
% 2006/8/14 : jdc made class work better with hyperref (see hha019)
% 2006/5/31 : jdc fixed table references
% 2006/1/23 : jdc reduced \clubpenalty and \widowpenalty
% 2006/1/17 : Added \enablequery so ulem and xcolor not required
%             in general.
% 2006/1/16 : jdc added \query commands; changed address to not
%             be in tables (to make linenumbering better); fixed bad
%             date format in \ProvidesClass.
% 2006/1/5  : jdc removed ttheorem synonyms.
% 2005/12/14: jdc removed period from ``Acknowledgements.''
% 2005/11/28: jdc added period after published date.
% 2005/11/23: jdc fixed ttheorem numbering.
% 2005/11/22: jdc updated the ProvidesClass date for the first time.
%             jdc changed webaddress code to not use ifdefined.
% 2005/11/15: jdc fixed \andname, and put in temporary 
%             synonyms ttheorem=theorem, ddefinition=definition, etc.
% 2005/11/14: jdc merged 11/13 and 11/14 versions, and undid some
%             of the 11/14 changes: put back amsmath; put back
%             a4 warning; put back theorems, with changes:
%             definitions are upright; spacing is like amsthm spacing
%             except that space in ``Theorem 1.3'' is non-stretchable;
%             number for hharemark style is in italics too.
%             Removed options for crop package.
%             Changed \leq back to \leqslant.
% 2005/11/14: TechSet worked from 11/7 version, and removed all
%             Theorem and Numbering styles.
%             Line 918 to 943 included to accommodate thin spacing
%             on either side of operators (+, - etc), to control 
%             widow, orphans, equation breaking, paragraph breaking
%             and Hyphenation.  
%             Also: removed itemize/enumerate settings, crop package,
%             appendix stuff, natbib, \ack, proof environment, ...
% 2005/11/13: jdc removed ``This article available at ...'' when
%             no webaddress specified.
%             jdc moved \def\@journaltitle outside of \HHA@title.
% 2005/11/8:  jdc added ability to specify copyright owner with
%             \owner; it defaults to authors.  Also added ability
%             to set copyrightyear with \copyrightyear; defaults 
%             to volumeyear.
% 2005/11/7:  jdc altered the display of the webaddress to be on
%             one line in texttt (new shorter URLs make this work)
% 2005/11/3:  TechSet corrected html that had corrupted the file,
%             removed pstricks, color, modframed, and made some
%             other minor changes.
% 2005/10:    TechSet made a large initial revision to the file.
% 2005/9:     jdc fixed the handling of Appendix numbering.
%
% Based on the Tbilisi HHA version, which is based on JCM.

\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{hha}[2020/05/05 HHA class]

\def\HHA@err#1{\ClassError{hha}{#1}\@eha}
\def\HHA@warn#1{\ClassWarning{hha}{#1}}
\DeclareOption{10pt}{}
\DeclareOption{11pt}{\HHA@warn{11pt ignored}}
\DeclareOption{12pt}{\HHA@warn{12pt ignored}}
\DeclareOption{oneside}{\HHA@warn{oneside ignored}}
\DeclareOption{twoside}{}
\@twosidetrue 
\DeclareOption{twocolumn}{\HHA@warn{twocolumn ignored}}
\DeclareOption{onecolumn}{}
\DeclareOption{a4paper}{\HHA@warn{Paper size option ignored}}
\DeclareOption{letterpaper}{\HHA@warn{Paper size option ignored}}
\DeclareOption{mathptm}{%
  \def\HHA@fontencoding{T1}%
  \def\HHA@fonts{\RequirePackage{times,mathptm}%
                 \DeclareMathVersion{bold}}}
\DeclareOption{mathtime}{%
  \def\HHA@fontencoding{T1}%
  \def\HHA@fonts{%
    \RequirePackage[mtpluscal,mtbold,subscriptcorrection]{mathtime}}}
\DeclareOption{cmfonts}{%
  \def\HHA@fontencoding{OT1}%
  \let\HHA@fonts\relax}
\DeclareOption{cmsc}{%
  \AtEndOfClass{%
    \def\scshape{\usefont{OT1}{cmr}{m}{sc}}}}
\DeclareOption{OT1}{\def\HHA@fontencoding{OT1}}
\DeclareOption{T1}{%
  \PassOptionsToPackage{T1}{mathtime}%
  \def\HHA@fontencoding{T1}}
\DeclareOption{LY1}{%
  \PassOptionsToPackage{LY1}{mathtime}%
  \def\HHA@fontencoding{LY1}}
\DeclareOption{ams}{%
  \def\HHA@ams{\RequirePackage{amsthm,amssymb}%
               \let\oldleq\leq
               \let\le\leqslant
               \let\leq\leqslant
               \let\oldgeq\geq
               \let\ge\geqslant
               \let\geq\geqslant
               }}
\DeclareOption{noams}{%
  \def\HHA@ams{%
               \let\theoremstyle\@gobble
               \let\oldnewtheorem\newtheorem
               \def\newtheorem{\@ifstar\oldnewtheorem\oldnewtheorem}%
               \let\mathbb\mathbf}}

\ExecuteOptions{ams,cmfonts}
\InputIfFileExists{hha.cfg}
  {\HHA@warn{Using local configuration file.\MessageBreak
             Ignoring document options: [\@classoptionslist]}%
   \let\@classoptionslist\@empty
   \@namedef{opt@\@currname.\@currext}{}}%
  {}

\ProcessOptions
\RequirePackage{latexsym,amsmath,amsthm}
\def\@title{\HHA@warn{No title}}
\def\title#1{\def\@title{#1}}
% Default to putting full title on odd pages, but allow for
% a shorter title to be specified:
\def\@shorttitle{\@title}
\def\shorttitle#1{\def\@shorttitle{#1}}
\def\@journaltitle{Homology, Homotopy and Applications, vol.\thinspace\@volumenumber(\@issuenumber), \@volumeyear}

\def\owner{\HHA@owner}
\def\HHA@owner#1{\def\@owner{#1}}
\def\@owner{\HHA@doauthorslcase}

\def\copyrightyear{\HHA@copyrightyear}
\def\HHA@copyrightyear#1{\def\@copyrightyear{#1}}
\def\@copyrightyear{\@volumeyear}

\def\@shortauthors{\@authors\@andorcomma\relax\@andorcomma\relax}
\def\shortauthors#1{\def\@shortauthors{#1}}

\renewcommand*\author[2][]{%
  \gdef\HHA@doauthors{%
    \@authors\@andorcomma\relax\@andorcomma\relax\par}%
  \gdef\HHA@doauthorslcase{%
    \@authorslcase\@andorcomma\relax\@andorcomma\relax}%
  \g@addto@macro\@curr@author{\\*#2}%
  \g@addto@macro\@authors{%
    \@andorcomma,{\ignorespaces\MakeTextUppercase{#2}\unskip}}
  \g@addto@macro\@authorslcase{%
    \@andorcomma,{\ignorespaces#2\unskip}}%
}%
\def\@authors{\@gobbletwo}
\def\@authorslcase{\@gobbletwo}
\def\HHA@doauthors{\HHA@warn{No author specified}}
\def\@curr@author{\@gobbletwo}
\def\and{\HHA@err{\protect\and\space is not supported}}
\def\@andorcomma#1#2\@andorcomma#3{%
  \ifx#3\relax
    \ifx#1\relax%
      \let\@tempa\relax
    \else
    \def\@tempa{\space\andname\space #2\@gobbletwo}%
    \fi
  \else
    \def\@tempa{#1 #2\@andorcomma#3}%
  \fi
  \@tempa}
\def\address#1{%
  \ifx\@curr@author\HHA@gobble
    \HHA@err{\noexpand\address with no \string\author}\@ehd
  \else
    \expandafter\g@addto@macro\expandafter\@addresses\expandafter{%
         \expandafter\filbreak\@curr@author\hha@address{#1}}%
    \let\@curr@author\HHA@gobble
  \fi}
\def\@addresses{}
\AtEndDocument{%
  \ifx\@deferlist\@empty\else\clearpage\fi
  \par
  \parindent\z@
  \parskip20\p@
  \noshowbreaks
  \@addresses
% webaddress now in footnotes:
% \@webaddress
}
%\def\hha@address#1{\\*[6pt]\begin{tabular}{@{}l}#1\end{tabular}\par}
\def\hha@address#1{\\*[6pt]\begin{samepage}#1\end{samepage}\par}
\def\HHA@gobble{\@gobbletwo}
\def\email#1{%
  \ifx\@curr@author\HHA@gobble
    \HHA@err{\noexpand\email with no \string\author}\@ehd
  \else
    \g@addto@macro\@curr@author{\quad\HHA@email{#1}}%
  \fi}
\def\HHA@email#1{\href{mailto:#1}{\texttt{#1}}}
\AtBeginDocument{%
  \providecommand\url[1]{%
    \texttt{\language\@M\hyphenchar\the\font=`\/ #1}}%
  \providecommand\href[2]{{%
    \let~\textasciitilde#2}}}
\def\homepage#1{%
  \ifx\@curr@author\HHA@gobble
    \HHA@err{\noexpand\homepage with no \string\author}\@ehd
  \else
    \g@addto@macro\@curr@author{\quad\url{#1}}%
  \fi}
\def\thanks#1{%
  \g@addto@macro\@thanks{\footnotetext{#1}}}
\let\@thanks\@empty
\def\keywords#1{%
  \gdef\@keywords{%
    {Key words and phrases:\/} \ignorespaces#1\unskip}}
\def\@keywords{\HHA@warn{No keywords}}
\newcommand\classification[2][2010]{%
  \gdef\@classification{%
    #1 Mathematics Subject Classification: \ignorespaces#2\unskip}}
\let\subjclass\classification
\def\@classification{%
  \HHA@warn{No Subject Classification}}
\def\EditFlow#1{}
\def\received#1{%
  \gdef\@received{Received #1}}
\def\@received{\HHA@warn{No received date}}
\def\revised#1{%
  \g@addto@macro\@revised{{, revised #1}}}
\let\@revised\@empty
\def\accepted#1{%
  \gdef\@accepted{{\itshape; accepted #1}}}
\def\@accepted{\HHA@warn{No accepted date}}
\def\published#1{%
  \gdef\@published{{; published on #1.}}}
\def\@published{\HHA@warn{No published date}}
\def\submitted#1{%
  \gdef\@submitted{({\itshape communicated by #1})}}
\def\@submitted{\HHA@warn{No submitted information}}
\newbox\absbox
\newlength\abstractwidth
\setlength\abstractwidth{3.8in} % ~3/4 of \textwidth
\def\abstract{\lrbox\absbox\minipage{\abstractwidth}%
  \parindent12\p@
  \normalsize\normalfont
  {\centering\itshape{Abstract\\}}}
\def\endabstract{\endminipage\endlrbox}
\def\maketitle{%
  \ifx\@curr@author\HHA@gobble
  \else
    \begingroup
      \def\\*{, }%
      \HHA@warn{No address for \@curr@author}%
    \endgroup
    \address\relax
  \fi
  \begingroup
  \long\def\@makefntext##1{\parindent 1em\noindent##1}%
  \thispagestyle{title}\label{FirstPage}%
  \global\@topnum\z@
  \normalfont
  \centering
  \def\\{\protect\@centercr}%
  \large\MakeTextUppercase\@title\par
  \addvspace{12pt}%
  \normalsize\scshape
  \HHA@doauthors
  \addvspace{12pt}
  \normalsize\normalfont\@submitted\par
  \addvspace{15pt}%
  \ifvoid\absbox
    \HHA@warn{No abstract}%
  \else
    \usebox\absbox\par
  \fi
  \@thanks
  \footnotetext{\@received\@revised\@published}%
  \footnotetext{\@classification}%
  \footnotetext{\@keywords}%
  \def\@neg{\hspace{-0.6pt}} % tighten things up a bit in texttt:
  % Disabled, since it causes an error with hyperref.  Tried \hskip
  % and \kern, and they just display verbatim.
  % Could switch to \texttt instead of \url, but for now I'll leave it
  % like this.  No, now switching to texttt, since many packages
  % redefine \url, shadowing the def in this file.  So may as well
  % put the negative space back in.
  \footnotetext{%
Article available at 
\texttt{http:/\@neg/dx.doi.org/10.4310/HHA.\@volumeyear.v\@volumenumber.n\@issuenumber.a\@articlenumber}
}
  \footnotetext{Copyright \copyright\ \@copyrightyear, \@owner. 
    Permission to copy for private use granted.\par}%
  \endgroup
  \let\and\relax
  \let\author\relax
  \let\keywords\relax
  \let\@keywords\relax
  \let\address\relax
  \let\email\relax
  \let\@address\relax
  \let\maketitle\relax
  \let\thanks\@gobble
  \def\abstract{%
    \HHA@err{abstract must be before \protect\maketitle}\@ehd}}
\def\ps@hha{%
  \def\@oddhead{%
    \normalfont\scriptsize \hfil%
    \let\\\relax
    \MakeTextUppercase{\@shorttitle}%
    \hfil\llap{\thepage}}%
  \def\@evenhead{%
    \normalfont\scriptsize%
    \rlap{\thepage}\hfil%
    \def\andname{{\sc and}}\@shortauthors%
    \hfil}%
  \def\@oddfoot{}%
  \let\@evenfoot\@oddfoot}
% This used on title page, previous used on other pages.
\def\ps@title{%
  \def\@oddhead{%
    {\itshape\@journalpublisher}\hfill\relax}
     %\hfill\footnotesize ISSN \@journalissn}%
  \let\@evenhead\@oddhead
  \def\@oddfoot{}%
%    \footnotesize
%    \hss
%    \journalname\
%    \href{\journalBaseURL/hha/\@volumenumber}{\@volumenumber\ (\@volumeyear)}
%    \@startpage--\@endpage
%    \hss}%
  \let\@evenfoot\@oddfoot}
\def\ps@headings{\HHA@warn{headings pagestyle ignored}}
\ps@hha
\def\@volumeyear{????}
\def\@volumenumber{??}
\def\@issuenumber{??}
\def\@articlenumber{?}
% If hyperref is loaded, it redefines \@setref to produce hyperlinks.
% But the hyperlink to the last page doesn't work, and I don't really
% want it anyways, so I save the old \@setref and copy the definition
% of \pageref from latex.ltx substituting hha@setref for @setref.
% (When hyperref is loaded, \pageref* achieves what I want; but that
% doesn't work when hyperref is *not* loaded.)
\let\hha@setref\@setref
\def\hha@pageref#1{\expandafter\hha@setref\csname r@#1\endcsname
                                   \@secondoftwo{#1}}
\def\@startpage{\hha@pageref{FirstPage}}
\def\@endpage{\hha@pageref{LastPage}}
\def\volumeyear#1{\gdef\@volumeyear{#1}}
\def\volumenumber#1{\gdef\@volumenumber{#1}}
\def\issuenumber#1{\gdef\@issuenumber{#1}}
\def\startpage#1{\gdef\@startpage{#1}\c@page#1}
\def\endpage#1{\gdef\@endpage{#1}}
\def\articlenumber#1{\gdef\@articlenumber{#1}}
\def\webaddress#1{\HHA@warn{webaddress is now ignored}}
\def\lastpage@putlabel{%
  \if@filesw
    \advance\c@page\m@ne
     \immediate\write\@auxout{\string
     \newlabel{LastPage}{{}{\thepage}{}{}{}}}%
     \advance\c@page\@ne
  \fi}
\AtEndDocument{%
   \clearpage
\lastpage@putlabel}%
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 6\p@ \@plus\p@ \@minus\p@
   \belowdisplayskip \abovedisplayskip
   \abovedisplayshortskip 3\p@ \@plus\p@
   \belowdisplayshortskip  \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 5\p@ \@plus\p@ \@minus\p@
   \belowdisplayskip \abovedisplayskip
   \abovedisplayshortskip 2.5\p@ \@plus\p@
   \belowdisplayshortskip \abovedisplayskip
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus1\p@
               \parsep \z@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 4.5\p@ \@plus\p@ \@minus\p@
   \belowdisplayskip \abovedisplayskip
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip  \abovedisplayskip
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep \z@skip
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\maxdepth{5\p@}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\partopsep\z@ \@plus \p@
\def\@listi{\leftmargin\leftmargini
            \parsep\z@skip
            \topsep 3\p@ \@plus\p@
            \itemsep3\p@ \@plus\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    3\p@ \@plus\p@ \@minus\p@
              \parsep\z@skip
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@skip
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
\setlength\parskip{0pt}
\setlength\parindent{12pt}
\setlength\topsep{8pt \@plus 2pt \@minus 4pt}
\setlength\partopsep{0pt \@plus 1pt}
\setlength\itemsep{0pt \@plus 2pt}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
%\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thepart {\partname{ }\@arabic\c@part}
\renewcommand \thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\setlength\leftmargini  {2pc}
\leftmargin  \leftmargini
\setlength\leftmarginii  {1.5pc}
\setlength\leftmarginiii {1.5pc}
\setlength\leftmarginiv  {1.5pc}
\setlength  \labelsep  {6pt}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
% Changed by jdc.  The old way makes it say ``Lemma Appendix A.1'',
% etc.  I'm not sure if text is supposed to be put in the
% @startsection command, but I couldn't find a way to make
% the @seccntformat command only put the word Appendix in
% for the top-level sections.
% Also, it shouldn't appear in the \section* form, but I
% couldn't make that work; as a result, I have to redefine \section
% for the bibliography.
% Unlike amsart, the method here doesn't put the word
% Appendix into the table of contents.  Maybe this is bad,
% but it has the nice side effect of make the section names
% line up.
  \renewcommand\thesection{\@Alph\c@section}
  \def\section{%
    \@startsection
      {section}{1}{\z@}{18\p@ \@plus 2\p@ \@minus 2\p@}%
      {6\p@}{\normalfont\large\bf\noindent\appendixname~}}}
% jdc's first try: Problem is that it also does subsections.
%  \renewcommand\thesection{\@Alph\c@section}
%  \renewcommand\@seccntformat[1]{Appendix {\csname the##1\endcsname}.\enspace}}
% JCM's way: No good at all.
%  \renewcommand\thesection{Appendix \@Alph\c@section}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{3}
\newcommand\tableofcontents{%
    \section*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty\@secpenalty
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \setlength\@tempdima{4em}%
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       %\large
       \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
       \if@compatibility
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
      \fi
    \endgroup
  \fi}
\newcommand*\l@section[2]{%
  \ifnum \c@tocdepth >\z@
    \addpenalty\@secpenalty
    \addvspace{1.0em \@plus\p@}%
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
    \endgroup
  \fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
    \section*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \section*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
% jdc added redef of \section to remove \appendixname
     {\def\section{%
      \@startsection
      {section}{1}{\z@}{18\p@ \@plus 2\p@ \@minus 2\p@}%
      {6\p@}{\normalfont\large\bf}}
      \section*{\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\section*{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\def\footnoterule{\kern-6\p@
  \hrule\kern 5.6\p@} % the \hrule is .4pt high
\newcommand\@makefntext[1]{%
\normalfont\fontsize{9}{9}
    \parindent12pt%
    \noindent
    \@makefnmark#1}
\setlength\footnotesep{7\p@}
\setlength{\skip\footins}{12\p@ \@plus 12\p@ \@minus 1\p@}
\skip\@mpfootins = \skip\footins
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{hha}
\pagenumbering{arabic}
\onecolumn
\frenchspacing
\def\eqnarray{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to\displaywidth\bgroup
      \tabskip\z@skip$\hfil\displaystyle{##}$%
      &\global\@eqcnt\@ne\hfil${\displaystyle{}##{}}$\hfil
      &\global\@eqcnt\tw@
         $\displaystyle{##}$\hfil
      \tabskip\@centering
      &\global\@eqcnt\thr@@\llap{##}%
      \tabskip\z@skip
      \cr}
\def\@uclcnotmath#1#2#3#4{\begingroup
      #1%
      \def\({$}\let\)\(% $
      \def\reserved@a##1##2{\let#2\reserved@a}%
      \expandafter\reserved@a\@uclclist\reserved@b{\reserved@b\@gobble}%
      \protected@edef\reserved@a{\endgroup
          \noexpand\@skipmath#3#4$\valign$}%
      \reserved@a}
\def\@skipmath#1{%
\def\@skipmath##1##2$##3${%
  \@skipensuremath##1##2#1\valign
  \ifx\valign##3%
  \else
    $##3$%
    \expandafter\@skipmath\expandafter##1%
  \fi}%
\def\@skipensuremath##1##2#1##3{%
  ##1{##2}%
  \ifx\valign##3%
  \else
    $##3$%
    \expandafter\@skipensuremath\expandafter##1%
  \fi}}
\expandafter\@skipmath\csname ensuremath \endcsname
\DeclareRobustCommand\MakeTextUppercase{%
  \@uclcnotmath{\def\i{I}\def\j{J}}{##1##2}\uppercase}
\DeclareRobustCommand\MakeTextLowercase{%
  \@uclcnotmath{}{##2##1}\lowercase}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Theorems %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\thm@notefont{\normalsize\itshape}

% The only intentional difference between this and the ams plain
% theoremstyle is: non-stretchable space in ``Theorem 1.3''.
% Now we overwrite the amsthm definitions as well as defining our
% own (for backward compatibility), but they are the same.
\newtheoremstyle{plain}
  {}% Space above, empty = `usual value'
  {}% Space below, empty = `usual value'
  {\itshape}%       Body font
  {}%               Indent amount (empty = no indent, \parindent = para indent)
  {}%               Thm head font
  {.}%               Punctuation after thm head
  {0.4em}%            Space after thm head: " " = normal interword space;
        %           \newline = linebreak
  {\thmname{\bfseries{{\normalfont\bfseries#1}}\thmnumber{\@ifnotempty{#1}{\hspace{0.3em}}{\normalfont\bfseries#2}}}%
  \thmnote{ {\the\thm@notefont {\rm (#3)}}}}%               Thm head spec

\newtheoremstyle{hhaplain}
  {}% Space above, empty = `usual value'
  {}% Space below, empty = `usual value'
  {\itshape}%       Body font
  {}%               Indent amount (empty = no indent, \parindent = para indent)
  {}%               Thm head font
  {.}%               Punctuation after thm head
  {0.4em}%            Space after thm head: " " = normal interword space;
        %           \newline = linebreak
  {\thmname{\bfseries{{\normalfont\bfseries#1}}\thmnumber{\@ifnotempty{#1}{\hspace{0.3em}}{\normalfont\bfseries#2}}}%
  \thmnote{ {\the\thm@notefont {\rm (#3)}}}}%               Thm head spec

% The only intentional difference between this and the ams plain
% theoremstyle is: non-stretchable space in ``Definition 1.3''.
\newtheoremstyle{definition}
  {}% Space above, empty = `usual value'
  {}% Space below, empty = `usual value'
  {\upshape}%       Body font
  {}%               Indent amount (empty = no indent, \parindent = para indent)
  {}%               Thm head font
  {.}%               Punctuation after thm head
  {0.4em}%            Space after thm head: " " = normal interword space;
        %           \newline = linebreak
  {\thmname{\bfseries{{\normalfont\bfseries#1}}\thmnumber{\@ifnotempty{#1}{\hspace{0.3em}}{\normalfont\bfseries#2}}}%
  \thmnote{ {\the\thm@notefont {\rm (#3)}}}}%               Thm head spec

\newtheoremstyle{hhadefinition}
  {}% Space above, empty = `usual value'
  {}% Space below, empty = `usual value'
  {\upshape}%       Body font
  {}%               Indent amount (empty = no indent, \parindent = para indent)
  {}%               Thm head font
  {.}%               Punctuation after thm head
  {0.4em}%            Space after thm head: " " = normal interword space;
        %           \newline = linebreak
  {\thmname{\bfseries{{\normalfont\bfseries#1}}\thmnumber{\@ifnotempty{#1}{\hspace{0.3em}}{\normalfont\bfseries#2}}}%
  \thmnote{ {\the\thm@notefont {\rm (#3)}}}}%               Thm head spec

% The only intentional differences between this and the ams remark
% theoremstyle are: non-stretchable space in ``Remark 1.3'' and
% the number is in italics too.
\newtheoremstyle{remark}% 
  {}% Space above, empty = `usual value'
  {}% Space below, empty = `usual value'
  {\upshape}%       Body font
  {}%               Indent amount (empty = no indent, \parindent = para indent)
  {\itshape}%       Thm head font
  {.}%               Punctuation after thm head
  {0.5em}%            Space after thm head: " " = normal interword space;
        %           \newline = linebreak
  {\thmname{#1}\thmnumber{\@ifnotempty{#1}{\hspace{0.3em}}{#2}}%
  \thmnote{ {\the\thm@notefont(#3)}}}%               Thm head spec

\newtheoremstyle{hharemark}% 
  {}% Space above, empty = `usual value'
  {}% Space below, empty = `usual value'
  {\upshape}%       Body font
  {}%               Indent amount (empty = no indent, \parindent = para indent)
  {\itshape}%       Thm head font
  {.}%               Punctuation after thm head
  {0.5em}%            Space after thm head: " " = normal interword space;
        %           \newline = linebreak
  {\thmname{#1}\thmnumber{\@ifnotempty{#1}{\hspace{0.3em}}{#2}}%
  \thmnote{ {\the\thm@notefont(#3)}}}%               Thm head spec

\theoremstyle{hhaplain}

\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{conjecture}[theorem]{Conjecture}

\theoremstyle{hhadefinition}

\newtheorem{definition}[theorem]{Definition}

\theoremstyle{hharemark}

\newtheorem{remark}[theorem]{Remark}
\newtheorem{example}[theorem]{Example}

\theoremstyle{hhaplain}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\def\part{\@startsection
%  {part}{0}{\z@}{18\p@ \@plus 2\p@ \@minus 2\p@}%
%  {6\p@}{\normalfont\large\bf}}
\newcommand\part{%
   \if@noskipsec \leavevmode \fi
   \par
   \addvspace{4ex}%
   \@afterindentfalse
   \secdef\@part\@spart}
\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{.5em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \large\bfseries \thepart.{ }
       %\par\nobreak
     \fi
     \large \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 1ex %3ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \huge \bfseries #1\par}%
     \nobreak
     \vskip 3ex
     \@afterheading}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\section{%
  \@startsection
    {section}{1}{\z@}{18\p@ \@plus 2\p@ \@minus 2\p@}%
    {6\p@}{\normalfont\large\bf}}
\def\@seccntformat#1{\textup{\csname the#1\endcsname.}\quad}
\def\subsection{%
  \@startsection
    {subsection}{2}{\z@}{12\p@ \@plus 1.2\p@ \@minus 1.2\p@}%
    {1sp}{\normalfont\normalsize\bf}}
\def\subsubsection{%
  \@startsection
    {subsubsection}{3}{\z@}{-12\p@ \@plus -1.2\p@ \@minus-1.2\p@}%
    {1sp}{\normalfont\normalsize\bf}}
\def\paragraph{%
  \@startsection
    {paragraph}{4}{\z@}{12\p@}%
    {-1em}{\normalfont\normalsize\scshape}}
\def\subparagraph{%
  \@startsection
    {paragraph}{5}{\z@}{12\p@}%
    {-1em}{\normalfont\normalsize\scshape}}
\setcounter{secnumdepth}{6}
\setcounter{tocdepth}{2}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vspace\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}



\setlength\voffset{0cm} % -1.54cm
\setlength\hoffset{0cm} % -1.54cm
\setlength\paperwidth{8.5in} % 16cm
\setlength\headsep{12pt}
\setlength\topskip\baselineskip
\setlength\marginparsep{5pt}
\setlength\marginparwidth{70pt}
\setlength\marginparpush{5pt}
\setlength\headheight{30pt}
% According to my calculations, a top margin of 12pt should result in close
% to perfect vertical centering, but 11pt looks better in xdvi and acroread:
\setlength\topmargin{11pt}
\setlength{\footskip}{21pt}
\setlength\textheight{8.676in} % just enough for 47 lines of prose
\setlength\paperheight{11in} %
\addtolength\textheight{-1\headheight}
\addtolength\textheight{-1\headsep}
\addtolength\textheight{-1\footskip}
\setlength\columnsep{2pc}
% 1.764 inch inside margin, 1.636 outside
% Now:  1.7 for both.  Will printer shift it?
\setlength\oddsidemargin{0.7in}
\setlength\evensidemargin{0.7in}
\setlength\textwidth{5.1in}
%\addtolength\textwidth{-2\oddsidemargin} % -2\oddsidemargin
%\addtolength\textwidth{-2\hoffset} % Levani
%\addtolength\textwidth{-2\marginparwidth} % Levani
%\addtolength\textwidth{-2\marginparsep} % Levani
\RequirePackage[\HHA@fontencoding]{fontenc}
\def\@tempa{T1}
\ifx\@tempa\HHA@fontencoding
\DeclareFontFamily{T1}{phv}{}
\DeclareFontShape{T1}{phv}{b}{n}{<->s*[.9]phvb8t}{}
\DeclareFontShape{T1}{phv}{b}{sc}{<->s*[.9]phvbc8t}{}
\DeclareFontShape{T1}{phv}{b}{sl}{<->s*[.9]phvbo8t}{}
\DeclareFontShape{T1}{phv}{bc}{n}{<->s*[.9]phvbrn8t}{}
\DeclareFontShape{T1}{phv}{bc}{sc}{<->s*[.9]phvbcn8t}{}
\DeclareFontShape{T1}{phv}{bc}{sl}{<->s*[.9]phvbon8t}{}
\DeclareFontShape{T1}{phv}{m}{n}{<->s*[.9]phvr8t}{}
\DeclareFontShape{T1}{phv}{m}{sc}{<->s*[.9]phvrc8t}{}
\DeclareFontShape{T1}{phv}{m}{sl}{<->s*[.9]phvro8t}{}
\DeclareFontShape{T1}{phv}{mc}{n}{<->s*[.9]phvrrn8t}{}
\DeclareFontShape{T1}{phv}{mc}{sc}{<->s*[.9]phvrcn8t}{}
\DeclareFontShape{T1}{phv}{mc}{sl}{<->s*[.9]phvron8t}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bx}{n}{<->ssub*phv/b/n}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bx}{sc}{<->ssub*phv/b/sc}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bx}{sl}{<->ssub*phv/b/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{b}{it}{<->ssub*phv/b/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bx}{it}{<->ssub*phv/b/it}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bc}{it}{<->ssub*phv/bc/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{m}{it}{<->ssub*phv/m/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{mc}{it}{<->ssub*phv/mc/sl}{}
\fi
\def\@tempa{LY1}
\ifx\@tempa\HHA@fontencoding
\input{ly1ptm.fd}
\expandafter\def\expandafter\@tempa\expandafter{\csname<->ptmr8y\endcsname}
%%\show\@tempa
\expandafter\ifx\csname ly1/ptm/m/n\endcsname \@tempa
  \def\sftfm#1#2{<->[.9]phv#18y}
\else
%%  \def\sftfm#1#2{<->[.9]phv#18y}
  \def\sftfm#1#2{<->[.9]hv#2}
\fi
%%\show\sftfm
\DeclareFontFamily{LY1}{phv}{}
\DeclareFontShape{LY1}{phv}{b}{n}{\sftfm{b}{b}}{}
\DeclareFontShape{LY1}{phv}{b}{sc}{<->sub*phv/b/n}{}
\DeclareFontShape{LY1}{phv}{b}{sl}{\sftfm{bo}{bo}}{}
\DeclareFontShape{LY1}{phv}{bc}{n}{<->sub*phv/m/n}{}
\DeclareFontShape{LY1}{phv}{bc}{sc}{<->sub*phv/bc/n}{}
\DeclareFontShape{LY1}{phv}{bc}{sl}{<->sub*phv/m/sl}{}
\DeclareFontShape{LY1}{phv}{m}{n}{\sftfm{r}{}}{}
\DeclareFontShape{LY1}{phv}{m}{sc}{<->sub*phv/m/n}{}
\DeclareFontShape{LY1}{phv}{m}{sl}{\sftfm{ro}{o}}{}
\DeclareFontShape{LY1}{phv}{mc}{n}{<->sub*phv/m/n}{}
\DeclareFontShape{LY1}{phv}{mc}{sc}{<->sub*phv/m/n}{}
\DeclareFontShape{LY1}{phv}{mc}{sl}{<->sub*phv/m/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bx}{n}{<->ssub*phv/b/n}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bx}{sc}{<->ssub*phv/b/sc}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bx}{sl}{<->ssub*phv/b/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{b}{it}{<->ssub*phv/b/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bx}{it}{<->ssub*phv/b/it}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{bc}{it}{<->ssub*phv/bc/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{m}{it}{<->ssub*phv/m/sl}{}
\DeclareFontShape{\HHA@fontencoding}{phv}{mc}{it}{<->ssub*phv/mc/sl}{}
\fi
\HHA@fonts
\HHA@ams
%\bibliographystyle{hha}
\def\@cite#1#2{[{{\citeform{#1}}\if@tempswa , #2\fi}]}
\let\citeform\textbf
\def\@biblabel#1{\textbf{[#1]~}} %%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\textsuperscript}[1]{%
  \ensuremath{{}^{\mbox{\normalfont\scriptsize#1}}}}
\providecommand{\@textsuperscript}[1]{%
  \ensuremath{{}^{\mbox{\normalfont\scriptsize#1}}}}
\providecommand\MakeUppercase[1]{%
  \protected@edef\@tempa{\uppercase{#1}}\@tempa}
\def\hb@xt@{\hbox to}
\def\contentsname{Contents}
\def\listfigurename{List of Figures}
\def\listtablename{List of Tables}
\def\refname{References}
\def\indexname{Index}
\def\figurename{Figure}
\def\tablename{Table}
\def\partname{Part}
\def\appendixname{Appendix}
\def\abstractname{Abstract}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\def\journalBaseURL{http://intlpress.com}
\def\journalname{\href
  {\journalBaseURL/HHA/}{Homology, Homotopy and Applications}}
% Out of date issn, not used anyways.
%\def\@journalissn{1512--0139}
\def\@journalpublisher{\journalname, \href%
  {\journalBaseURL/HHA/v\@volumenumber/}{vol.\thinspace\@volumenumber}(\href%
  {\journalBaseURL/HHA/v\@volumenumber/n\@issuenumber/}{\@issuenumber}),
  \@volumeyear, pp.\@startpage--\@endpage}
\def\andname{and}
\def\ppname{pp}
\def\numbername{number}
\def\volumename{volume}


%%%%%%%%%%%%%%%%%Changes made by Techset Composition Pvt Ltd. (Murugan)%%%%%%%%%%%%%%%%%%%%%%%%%%

\medmuskip=4mu% plus 2mu minus 4mu
\thickmuskip=5mu% plus 5mu


\def\acksec{%
  \@startsection
    {section}{1}{\z@}{18\p@ \@plus 2\p@ \@minus 2\p@}%
    {6\p@}{\normalfont\large\bf}}



\providecommand{\ackname}{Acknowledgments}

\newcommand{\ack}[1][\ackname]{%
   \acksec*{#1}}%

% Page break penalties
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

% Disallow widows and orphans
% Default is 150 each; TechSet put them at 10000 to disallow,
% but this can make for extra whitespace on a page.  Try
% intermediate values:
\clubpenalty 300
\widowpenalty 300

% Disable page breaks before equations, allow pagebreaks after
% equations and discourage widow lines before equations.
\predisplaypenalty   10000
\postdisplaypenalty  2500
\displaywidowpenalty 100

% Allow breaking the page in the middle of a paragraph
\interlinepenalty 0


% Disallow breaking the page after a hyphenated line
\brokenpenalty 10000

% Hyphenation; don't split words into less than three characters
\lefthyphenmin=3
\righthyphenmin=3

% The \Change, \Changed, \query, \queryend and \highlight commands are 
% useful for author queries.  Since they depend on packages soul and xcolor 
% that might not be in every tex installation, we only enable this if the
% \enablequery command is given in the preamble.
%
% Usage examples:
%
%   \query{text and math $a+b$ from main body to highlight}{question for margin}
%
%   \queryend{text and math from main body to highlight}{Q3: see last page}
%          {Q3: long question for end of document}
%
%   \Change{new text}{old text}        [puts ``was: old text'' in the margin]
%
%   \Changed{new text}                 [puts ``changed'' in the margin]
%
% You can highlight other words too:
%
%   This \highlight{word} and this \query{word}{check these} 
%
% The margin notes don't work from within an equation, but can
% contain entire equations.  For example, this does *not* work:
%
%   $a + b + \query{c}{is this correct}$                 [does not work]
%
% Instead, you can do the following:
%
%   $a + b + \highlight{c}$\query{}{is this correct}     [works]
%
% But line breaks within highlighted text which is within an
% equation are suppressed.
%
% Text in section titles works now too.  

% By default, warn if these are used but not enabled:
\def\hhaquerywarn#1{\typeout{#1}}
\def\Change#1#2{#1\hhaquerywarn{Need to use enablequery in preamble.}}
\def\Changed#1{#1\hhaquerywarn{Need to use enablequery in preamble.}}
\def\unChange#1#2{#2}
\def\query#1#2{#1\hhaquerywarn{Need to use enablequery in preamble.}}
\def\queryend#1#2#3{#1\hhaquerywarn{Need to use enablequery in preamble.}}
\def\mathhl#1{#1\hhaquerywarn{Need to use enablequery in preamble.}}
\def\highlight#1{#1\hhaquerywarn{Need to use enablequery in preamble.}}
\def\hl#1{#1\hhaquerywarn{Need to use enablequery in preamble.}}

% Allow the warnings to be silenced:
\def\disablequery{\def\hhaquerywarn##1{}}

\def\enablequery{%
\let\hl\uNdEFiNed
\RequirePackage{soul}
%%\RequirePackage[normalem]{ulem}
\RequirePackage[dvipsnames]{xcolor}
%\definecolor{black}{named}{Black}
%%\def\cshade##1{%
%%  \bgroup%
%%  \color{##1}%
%%  \def\UL@start{\setbox\UL@box\hbox\bgroup\everyhbox{\UL@hrest}%
%%    \let\UL@start\@empty \def\UL@unegroup{\bgroup\bgroup}\let\UL@leadtype\@empty%
%%    \bgroup \color{black}%
%%    \kern-3sp\kern3sp % kerns so I can test for beginning of list
%%    \if@ignore \global\@ignorefalse \ignorespaces \fi}%
%%  \def\UL@leadtype{%
%%     \leaders \hrule \@height\ht\strutbox \@depth\dp\strutbox }%
%%  \ULon%
%%}
% The soul highlighting dips a bit too far below the baseline,
% and sometimes affects line-spacing.  So create alternate version \hhahl:
\def\SOUL@hhastpreamble{%
    \dimen@\SOUL@ulthickness
    \dimen@i=-.7ex % was -.5ex
    \advance\dimen@i-.5\dimen@
    \edef\SOUL@uldepth{\the\dimen@i}%
    \let\SOUL@ulcolor\SOUL@stcolor
    \SOUL@ulpreamble
}
\def\SOUL@hhahlpreamble{%
    \setul{}{2.0ex}% was 2.5ex
    \let\SOUL@stcolor\SOUL@hlcolor
    \SOUL@hhastpreamble
}%
\def\SOUL@hhahlsetup{%
    \SOUL@stsetup
    \let\SOUL@preamble\SOUL@hhahlpreamble
}%
\DeclareRobustCommand*\hhahl{\SOUL@hhahlsetup\SOUL@}%
\def\mathhl##1{\mbox{\hhahl{$##1$}}}
\def\highlight##1{\ifmmode\mathhl{##1}\else\hhahl{##1}\fi}
% \hl is better than \cshade, because it works in section headings.
% I can replace \hl with \safehl to make that work in math mode,
% but the \marginpar command doesn't work in math mode.  The
% \marginnote command does, but it doesn't float the notes away
% from each other.
\def\query##1##2{\hhahl{##1}\marginpar{\vskip-5pt\raggedright\color{black}\hbadness=10000\tiny ##2\vskip5pt}}
%%\def\query##1##2{\cshade{yellow}{##1}\marginpar{\hbadness=10000\tiny ##2}}
\def\queryend##1##2##3{\query{##1}{##2}\AtEndDocument{##3\par}}
\def\Change##1##2{\query{##1}{was: ##2}}
\def\Changed##1{\query{##1}{changed}}
\def\unChange##1##2{##2}
}

% Use \showbreaks at the top of the file to show manual line and 
% page breaks.

\let\realbreak=\break
\let\realnewpage=\newpage
\let\realpagebreak=\pagebreak
\let\realdisplaybreak=\displaybreak
\let\realenlargethispage=\enlargethispage

\def\showbreaks{%
  \RequirePackage[dvipsnames]{xcolor}
%
  \def\hrsmash##1{\makebox[0pt][r]{##1}}
  \def\leftbox##1##2{\smash{\hrsmash{\raisebox{##1}{\color{red}\normalfont\footnotesize ##2}}}}
  \def\hlsmash##1{\makebox[0pt][l]{##1}}
  \def\rightbox##1##2{\smash{\hlsmash{\raisebox{##1}{\color{red}\normalfont\footnotesize ##2}}}}
% The downarrow will appear in the left margin:
  \def\break{\realbreak\leftbox{1pt}{$\downarrow$\ }}
% Can't control where this is horizontally, so move it down below the
% last line of text:
  \def\newpage{\realnewpage\leftbox{-12pt}{newpage (avoid?) $\uparrow$}}
  \def\pagebreak{\realpagebreak\leftbox{-12pt}{pagebreak $\uparrow$}}
% Put \realdisplaybreak last, so it sees the optional arg (e.g. [0]):
  \def\displaybreak{\rightbox{-12pt}{\ $\uparrow$ displaybreak}\realdisplaybreak}
  \def\enlargethispage##1{\realenlargethispage{##1}%
     \marginpar{\raggedright\color{red}\hbadness=10000\tiny enlg ##1}}
}

\def\noshowbreaks{%
  \let\break=\realbreak
  \let\newpage=\realnewpage
  \let\pagebreak=\realpagebreak
  \let\displaybreak=\realdisplaybreak
  \let\enlargethispage=\realenlargethispage
}

\endinput
