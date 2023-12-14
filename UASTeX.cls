\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UASTeX}[2023/07/17 UASTeX v1.0 - Modelo de trabalho de conclusão do BSI da UFRPE/UAST]
	
\RequirePackage{newtx}				% times-like (garamond)
\RequirePackage[utf8]{inputenc}		% UTF-8 encoding (including bibtex)
\RequirePackage{color}				% colors
\RequirePackage{graphicx}			% insert images
\RequirePackage{xstring}            % string manipulation
\RequirePackage{lipsum}             % dummy texts
\RequirePackage[nolist]{acronym}    % acronum management
\RequirePackage{multirow}           % multirow for tables
\RequirePackage{multicol}           % multicol for tables


\newif\if@indentfirst
\DeclareOption{indentfirst}{\@indentfirsttrue}
\DeclareOption{noindentfirst}{\@indentfirstfalse}

\newif\if@english
\DeclareOption{english}{\@englishtrue}
\DeclareOption{portuguese}{\@englishfalse}

\newcommand\@ptsize{}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}

% \DeclareOption{leqno}{\input{leqno.clo}}
% \DeclareOption{fleqn}{\input{fleqn.clo}}
% \DeclareOption{openbib}{%
% 	\AtEndOfPackage{%
% 		\renewcommand\@openbib@code{%
% 			\advance\leftmargin\bibindent
% 			\itemindent -\bibindent
% 			\listparindent \itemindent
% 			\parsep \z@
% 		}%
% 		\renewcommand\newblock{\par}}%
% }
% \ExecuteOptions{a4paper,10pt}

\ExecuteOptions{noindentfirst,english,12pt}
\ProcessOptions
\input{size1\@ptsize.clo}
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


\if@indentfirst
    \RequirePackage{indentfirst}
\fi

\if@english
    \RequirePackage[brazilian,main=english]{babel}
\else
    \RequirePackage[english,main=brazilian]{babel}
\fi

% \def\ps@headings{%
% 	\let\@oddfoot\@empty
% 	\def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
% 	\let\@mkboth\markboth
% 	\def\sectionmark##1{%
% 		\markright {\MakeUppercase{%
% 				\ifnum \c@secnumdepth >\m@ne
% 				\thesection\quad
% 				\fi
% 				##1}}}}

% \def\ps@myheadings{%
% 	\let\@oddfoot\@empty\let\@evenfoot\@empty
% 	\def\@evenhead{\thepage\hfil\slshape\leftmark}%
% 	\def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
% 	\let\@mkboth\@gobbletwo
% 	\let\sectionmark\@gobble
% 	\let\subsectionmark\@gobble
% }

\def\authors#1{\gdef\@authors{#1}}
\def\@authors{\@latex@warning@no@line{No \noexpand\authors given}}

\def\mainauthor#1{\gdef\@mainauthor{#1}}
\def\@mainauthor{\@latex@warning@no@line{No \noexpand\mainauthor given}}

\def\advisor#1{\gdef\@advisor{#1}}
\def\@advisor{\@latex@warning@no@line{No \noexpand\advisor given}}

\def\advisorgender#1{\gdef\@advisorgender{#1}}
\def\@advisorgender{\@latex@warning@no@line{No \noexpand\advisorgender given}}

\def\advisorprefix#1{\gdef\@advisorprefix{#1}}
% \def\@advisorprefix{\@latex@warning@no@line{No \noexpand\advisorprefix given}}

\def\advisorsuffix#1{\gdef\@advisorsuffix{#1}}
% \def\@advisorsuffix{\@latex@warning@no@line{No \noexpand\advisorsuffix given}}

\def\coadvisor#1{\gdef\@coadvisor{#1}}
% \def\@coadvisor{\@latex@warning@no@line{No \noexpand\coadvisor given}}

\def\coadvisorgender#1{\gdef\@coadvisorgender{#1}}
\def\@coadvisorgender{\@latex@warning@no@line{No \noexpand\coadvisorgender given}}

\def\coadvisorprefix#1{\gdef\@coadvisorprefix{#1}}
% \def\@coadvisorprefix{\@latex@warning@no@line{No \noexpand\coadvisorprefix given}}

\def\coadvisorsuffix#1{\gdef\@coadvisorsuffix{#1}}
% \def\@coadvisorsuffix{\@latex@warning@no@line{No \noexpand\coadvisorsuffix given}}

\newcommand{\themainauthor}{\@mainauthor}
\newcommand{\theadvisor}{\@advisor}
% \newcommand{\theadvisorgender}{\@advisorgender}
% \newcommand{\theadvisorprefix}{\@advisorprefix}
\newcommand{\thecoadvisor}{\@coadvisor}
% \newcommand{\thecoadvisorgender}{\@coadvisorgender}
% \newcommand{\thecoadvisorprefix}{\@coadvisorprefix}

\newcommand{\ufrpe}{Universidade Federal Rural de Pernambuco}
\newcommand{\uast}{Unidade Acadêmica de Serra Talhada}
\if@english
    \newcommand{\bsi}{Information Systems undergraduate}
\else
    \newcommand{\bsi}{Bacharelado em Sistemas de Informação}
\fi
\newcommand{\ufrpeacronym}{UFRPE}
\newcommand{\uastacronym}{UAST}
\newcommand{\bsiacronym}{BSI}

\newcommand{\uastcity}{Serra Talhada}
\newcommand{\uaststate}{PE}
\if@english
    \newcommand{\uastcountry}{Brazil}
\else
    \newcommand{\uastcountry}{Brasil}
\fi

\newcommand{\uastaddress}{\uast\space(\uastacronym)\\
    \ufrpe\space(\ufrpeacronym)\\
    \uastcity\space--\space\uaststate\space--\space\uastcountry
}

\newcommand\maketitle{\par
	\begingroup
	\renewcommand\thefootnote{\@fnsymbol\c@footnote}%
	\def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
	\long\def\@makefntext##1{\parindent 1em\noindent
		\hb@xt@1.8em{%
			\hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
	
	\newpage
	\global\@topnum\z@   % Prevents figures from going at top of page.
	\@maketitle

	% \thispagestyle{plain}\@thanks
	\endgroup
	\setcounter{footnote}{0}%
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@authors\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\title\relax
	\global\let\authors\relax
	\global\let\date\relax
	\global\let\and\relax
}


% comandos para a contagem dos institutos
\newcounter{instn}
\setcounter{instn}{1}
\newcommand{\instnum}{\arabic{instn}}
\newcommand{\inst}[1]{\ensuremath{^{#1}}}
\newcommand{\nextinstitute}{\\\mbox{}\\[-6pt] \addtocounter{instn}{1}\inst{\instnum}}
% bloco de e-mails
% \newcommand{\email}[1]{\\\mbox{}\\[-6pt]\footnotesize\texttt{#1}}
\def\email#1{\gdef\@email{#1}}
\def\@email{\@latex@warning@no@line{No \noexpand\email given}}
% \newcommand{\theemail}{\@email}

\renewcommand{\and}{, }

\def\address#1{\gdef\@address{#1}}

\def\@maketitle{\newpage
    \begin{center}
        \vspace*{-.7cm}
        % {\XVIPT\bf\@title\par}
        {\bf\fontsize{16pt}{\baselineskip}\selectfont\@title\par}
        \vglue 6pt plus 3pt minus 3pt
        {\textbf{\begin{tabular}[t]{c}\@authors\end{tabular}}\par}
        \vglue 6pt plus 3pt minus 3pt
        {\begin{tabular}[t]{c}\inst{\instnum}\@address\\\@email\end{tabular}\par}
        \vglue 6pt plus 3pt minus 3pt
    \end{center}\par
}

\newenvironment{abstract}{%
      \list{}{\advance\topsep by6pt\relax%\small
      \leftmargin=0.8cm
      \labelwidth=\z@
      \listparindent=\z@
      \itemindent\listparindent
      \rightmargin\leftmargin}\item[\hskip\labelsep
                                    \bfseries\itshape Abstract.\space]\itshape}%
      {\endlist}

\if@english
   \newenvironment{resumo}{}{}
\else
    \newenvironment{resumo}{%
          \list{}{\advance\topsep by6pt\relax%\small
          \leftmargin=0.8cm
          \labelwidth=\z@
          \listparindent=\z@
          \itemindent\listparindent
          \rightmargin\leftmargin}\item[\hskip\labelsep
                                        \bfseries\itshape Resumo.\space]\itshape}%
          {\endlist}
\fi
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}

\newcommand\part{%
	\if@noskipsec \leavevmode \fi
	\par
	\addvspace{4ex}%
	\@afterindentfalse
	\secdef\@part\@spart}

\def\@part[#1]#2{%
	\ifnum \c@secnumdepth >\m@ne
	\refstepcounter{part}%
	\addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
	\else
	\addcontentsline{toc}{part}{#1}%
	\fi
	{\parindent \z@ \raggedright
		\interlinepenalty \@M
		\normalfont
		\ifnum \c@secnumdepth >\m@ne
		\Large\bfseries \partname\nobreakspace\thepart
		\par\nobreak
		\fi
		\huge \bfseries #2%
		\markboth{}{}\par}%
	\nobreak
	\vskip 3ex
	\@afterheading}
\def\@spart#1{%
	{\parindent \z@ \raggedright
		\interlinepenalty \@M
		\normalfont
		\huge \bfseries #1\par}%
	\nobreak
	\vskip 3ex
	\@afterheading}

% \newcommand\section{\@startsection {section}{1}{\z@}%
% 	{-3.5ex \@plus -1ex \@minus -.2ex}%
% 	{2.3ex \@plus.2ex}%
% 	{\normalfont\Large\bfseries}}
% \newcommand\subsection{\@startsection{subsection}{2}{\z@}%
% 	{-3.25ex\@plus -1ex \@minus -.2ex}%
% 	{1.5ex \@plus .2ex}%
% 	{\normalfont\large\bfseries}}
% \newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
% 	{-3.25ex\@plus -1ex \@minus -.2ex}%
% 	{1.5ex \@plus .2ex}%
% 	{\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
	{3.25ex \@plus1ex \@minus .2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}}

\newcommand\section{\@startsection{section}{1}{\z@}%
                       {-6\p@ \@plus -4\p@ \@minus -4\p@}%
                       {0\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\bf\fontsize{13pt}{\baselineskip}\selectfont\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}

\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                       {-6\p@ \@plus -4\p@ \@minus -4\p@}%
                       {0\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\normalsize\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}

\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                       {-6\p@ \@plus -4\p@ \@minus -4\p@}%
                       {0\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\normalsize\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}

\RequirePackage{titlesec}
\titlelabel{\thetitle.\hspace{1ex}}
\pagestyle{empty}


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
\newcommand\labelitemi  {\labelitemfont \textbullet}
\newcommand\labelitemii {\labelitemfont \bfseries \textendash}
\newcommand\labelitemiii{\labelitemfont \textasteriskcentered}
\newcommand\labelitemiv {\labelitemfont \textperiodcentered}
\newcommand\labelitemfont{\normalfont}

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


{ \newpage
  \setcounter{page}\@ne
}

\newcommand\appendix{\par
	\setcounter{section}{0}%
	\setcounter{subsection}{0}%
	\gdef\thesection{\@Alph\c@section}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
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
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
{\@float{table}}
{\end@float}
\newenvironment{table*}
{\@dblfloat{table}}
{\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
	\vskip\abovecaptionskip
	\sbox\@tempboxa{#1: #2}%
	\ifdim \wd\@tempboxa >\hsize
	#1: #2\par
	\else
	\global \@minipagefalse
	\hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
	\fi
	\vskip\belowcaptionskip}
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
	\setlength\@tempdima{3em}%
	\begingroup
	\parindent \z@ \rightskip \@pnumwidth
	\parfillskip -\@pnumwidth
	{\leavevmode
		\large \bfseries #1\hfil
		\hb@xt@\@pnumwidth{\hss #2%
			\kern-\p@\kern\p@}}\par
	\nobreak
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
	#1\nobreak\hfil
	\nobreak\hb@xt@\@pnumwidth{\hss #2%
		\kern-\p@\kern\p@}\par
	\endgroup
	\fi}
\newcommand*\l@subsection{\@dottedtocline{2}{1.5em}{2.3em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{3.8em}{3.2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{7.0em}{4.1em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{10em}{5em}}
\newcommand\listoffigures{%
	\section*{\listfigurename}%
	\@mkboth{\MakeUppercase\listfigurename}%
	{\MakeUppercase\listfigurename}%
	\@starttoc{lof}%
}
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
	\section*{\listtablename}%
	\@mkboth{%
		\MakeUppercase\listtablename}%
	{\MakeUppercase\listtablename}%
	\@starttoc{lot}%
}
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}

% to avoid [...] in the bibliography
% \item[] instead of \item[\@biblabel{#1}\hfill]
\def\@lbibitem[#1]#2{\item[]\if@filesw
      {\let\protect\noexpand
       \immediate
       \write\@auxout{\string\bibcite{#2}{#1}}}\fi\ignorespaces}
\newenvironment{thebibliography}[1]
{\section*{\refname}%
	\@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
	\list{\@biblabel{\@arabic\c@enumiv}}%
	{\settowidth\labelwidth{\@biblabel{#1}}%
		\leftmargin\labelwidth
		\advance\leftmargin\labelsep
            \itemindent -\leftmargin
            \itemsep 6pt
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

\if@english
    \newcommand\ackname{Acknowledgements}
\else
    \newcommand\ackname{Agradecimentos}
\fi
\newenvironment{acknowledgements}{\section*{\ackname}}{}

% \newenvironment{theindex}
% {\@mkboth{\MakeUppercase\indexname}%
% 	{\MakeUppercase\indexname}%
% 	\thispagestyle{plain}\parindent\z@
% 	\parskip\z@ \@plus .3\p@\relax
% 	\columnseprule \z@
% 	\columnsep 35\p@
% 	\let\item\@idxitem}
% \clearpage
% \newcommand\@idxitem{\par\hangindent 40\p@}
% \newcommand\subitem{\@idxitem \hspace*{20\p@}}
% \newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
% \newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
% \renewcommand\footnoterule{%
% 	\kern-3\p@
% 	\hrule\@width.4\columnwidth
% 	\kern2.6\p@}
% \newcommand\@makefntext[1]{%
% 	\parindent 1em%
% 	\noindent
% 	\hb@xt@1.8em{\hss\@makefnmark}#1}

% \newcommand\contentsname{Contents}
% \newcommand\listfigurename{List of Figures}
% \newcommand\listtablename{List of Tables}


\newcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
% \newcommand\abstractname{Abstract}
% \def\today{\ifcase\month\or
% 	January\or February\or March\or April\or May\or June\or
% 	July\or August\or September\or October\or November\or December\fi
% 	\space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\setlength{\parindent}{1.27cm}
\setlength{\parskip}{6pt}
\RequirePackage[a4paper,top=3.5cm,left=3cm,right=3cm,bottom=2.5cm]{geometry}
\RequirePackage[indent,margin=0.8cm,labelsep=period]{caption}

\newcommand\cover{
    \thispagestyle{empty}
    \begin{center}
    	\begin{figure}[htb]
    		\centering
    	    \includegraphics[scale=0.19]{images/template/ufrpe}
    	\end{figure}
    	% \vspace*{-4mm}
    	{\MakeUppercase{\ufrpe}} \\
    	{\MakeUppercase{\uast}} \\
    	{\MakeUppercase{\bsi}}
    	\vfill
    	% \vspace*{-17mm}
    	{\@mainauthor} \\
            \vfill
    	% \vspace*{4mm}
    	{\bf\fontsize{16pt}{\baselineskip}\selectfont\@title} \\
    	\vfill
    	{\uastcity \\ \@date}
    	\vspace*{1cm}
    \end{center}
}

\newcommand\titlepage{
    \if@english
        \newcommand\preamble{Dissertation presented to the \bsi\space course at \uast\space of the \ufrpe, as a partial requirement for obtaining the Bachelor's degree.}
        \newcommand\advisorlabel{Advisor: }
        \newcommand\coadvisorlabel{Co-advisor: }
    \else
        \newcommand\preamble{Trabalho de conclusão apresentado ao curso de Bacharelado em Sistemas de Informação da \uast\space da \ufrpe\space como requisito parcial à obtenção do grau de Bacharel.}

        \IfStrEq{\@advisorgender}{female}{
            \newcommand\advisorlabel{Orientadora: }
        }{
            \newcommand\advisorlabel{Orientador: }
        }

        \ifdefined\@coadvisor
            \IfStrEq{\@coadvisorgender}{female}{
                \newcommand\coadvisorlabel{Coorientadora: }
            }{
                \newcommand\coadvisorlabel{Coorientador: }
            }
        \fi
    \fi
    
    \thispagestyle{empty}
    \begin{center}
    	{\@mainauthor} \\
            \vfill
    	{\bf\fontsize{16pt}{\baselineskip}\selectfont\@title} \\
            \vfill

            \begin{flushright}
                \parbox[t]{.65\textwidth}{\preamble}
            \end{flushright}

            \begin{flushright}
                \parbox[t]{.65\textwidth}{
                    \advisorlabel 
                    \ifdefined\@advisorprefix
                        \@advisorprefix\space
                    \fi
                    \@advisor
                    \ifdefined\@advisorsuffix
                        \@advisorsuffix
                    \fi
                    \ifdefined\@coadvisor
                        \\\coadvisorlabel
                        \ifdefined\@coadvisorprefix
                            \@coadvisorprefix\space
                        \fi
                        \@coadvisor
                        \ifdefined\@coadvisorsuffix
                            \@coadvisorsuffix
                        \fi
                    \fi
        	}
            \end{flushright}

            
    	\vfill
    	{\uastcity \\ \@date}
    	\vspace*{1cm}
    \end{center}
}
\pagestyle{plain}
\pagenumbering{arabic}

\AddToHook{begindocument/end}{%
  \cover
  \newpage
  \titlepage
  \newpage
  \maketitle
}

% itens
\setlength\leftmargini   {1.27cm}
\setlength\leftmargin    {\leftmargini}
\setlength\leftmarginii  {\leftmargini}
\setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini}
\setlength  \labelsep    {.5em}
\setlength  \labelwidth  {\leftmargini}
\addtolength\labelwidth  {-\labelsep}
\def\@listi{\leftmargin\leftmargini
            \parsep 0\p@ \@plus1\p@ \@minus\p@
            \topsep 0\p@ \@plus2\p@ \@minus4\p@
            \itemsep0\p@}
\let\@listi\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    0\p@ \@plus2\p@ \@minus\p@}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    0\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@}
			  
\endinput