\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ufrpe-uast}[2016/04/15 v0.1 Modelo da UFRPE/UAST baseado no abnTeX2]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% IMPORTAR A CLASSE ABNTEX2 E REPASSAR TODOS OS PARÂMETROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PACOTES BÁSICOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%		
\RequirePackage[T1]{fontenc}		% Manipulação de fonte
\RequirePackage{times}				% Usa a fonte Times
\RequirePackage[utf8]{inputenc}		% Codificacao do documento (conversão automática dos acentos)
\RequirePackage{lastpage}			% Usado pela Ficha catalográfica
\RequirePackage{indentfirst}		% Indenta o primeiro parágrafo de cada seção.
\RequirePackage{color}				% Controle das cores
\RequirePackage{graphicx}			% Inclusão de gráficos
\RequirePackage{microtype} 			% para melhorias de justificação
\RequirePackage{ctable}             % para comando \specialrule
\RequirePackage{lipsum}				% para geração de dummy text
\RequirePackage{titlesec}			% espaçamento antes e depois
\DisemulatePackage{setspace}
\RequirePackage{setspace}
\RequirePackage{caption}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PACOTES DE CITAÇÕES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[brazilian,hyperpageref]{backref}	 % Paginas com as citações na bibl
\RequirePackage[alf,bibjustif]{abntex2cite}	% Citações padrão ABNT


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CAPTION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\captionsetup{font={footnotesize,bf}, position=bottom, skip=3pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% NOMECLATURAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\addto\captionsbrazil{
	%% ajusta nomes padroes do babel
	\renewcommand{\dedicatorianame}{DEDICAT\'ORIA}
	\renewcommand{\agradecimentosname}{AGRADECIMENTOS}
	\renewcommand{\epigraphname}{EP\'IGRAFE}
	\renewcommand{\resumoname}{RESUMO}
	\renewcommand{\abstractname}{ABSTRACT}
	\renewcommand{\listfigurename}{LISTA DE FIGURAS}
	\renewcommand{\listtablename}{LISTA DE TABELAS}
	\renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
	\renewcommand{\listadesimbolosname}{LISTA DE S\'IMBOLOS}
	\renewcommand{\contentsname}{SUM\'ARIO}
	\renewcommand{\bibname}{REFER\^ENCIAS BIBLIOGR\'AFICAS}
	\renewcommand{\indexname}{\'INDICE REMISSIVO}
	%% ajusta nomes usados com a macro \autoref
	\renewcommand{\pageautorefname}{P\’agina}
	\renewcommand{\sectionautorefname}{Se{\c c}\~ao}
	\renewcommand{\subsectionautorefname}{Subse{\c c}\~ao}
	\renewcommand{\subsubsectionautorefname}{Subse{\c c}\~ao}
	\renewcommand{\paragraphautorefname}{Par\’agrafo}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% COMANDOS DE DADOS PARA A CAPA, FOLHA DE ROSTO ENTRE OUTROS...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\imprimiruniversidade}{}
\newcommand{\universidade}[1]{\renewcommand{\imprimiruniversidade}{#1}}

\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

\providecommand{\imprimircurso}{}
\newcommand{\curso}[1]{\renewcommand{\imprimircurso}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CAPA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\imprimircapa}{%
\begin{capa}%
	\center
	\begin{figure}[htb]
		\centering
	    \includegraphics[scale=0.19]{imagens/brasao}
	\end{figure}
	\vspace*{-4mm}
	{\fontfamily{ptm}\fontseries{b}\fontsize{14pt}{\baselineskip}\selectfont\MakeUppercase{\imprimiruniversidade}} \\
	{\fontfamily{ptm}\fontseries{b}\fontsize{12pt}{\baselineskip}\selectfont\MakeUppercase{\imprimirdepartamento}} \\
	{\fontfamily{ptm}\fontseries{b}\fontsize{12pt}{\baselineskip}\selectfont\MakeUppercase{\imprimircurso}}
	\vfill
	\vspace*{-17mm}
	{\fontfamily{ptm}\fontseries{b}\fontsize{22pt}{\baselineskip}\selectfont\imprimirtitulo} \\
	\vspace*{4mm}
	{\fontfamily{ptm}\fontseries{b}\fontsize{12pt}{\baselineskip}\selectfont Por} \\
	\vspace*{4mm}
	{\fontfamily{ptm}\fontseries{b}\fontsize{17pt}{\baselineskip}\selectfont\imprimirautor} \\
	\vfill
	\setstretch{1.0}
	{\fontfamily{ptm}\fontseries{m}\fontsize{14pt}{\baselineskip}\selectfont\imprimirlocal, \\
	\fontfamily{ptm}\fontseries{m}\fontsize{14pt}{\baselineskip}\selectfont\imprimirdata}
	\vspace*{1cm}
\end{capa}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% FOLHA DE ROSTO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\folhaderostocontent}{
\setlength{\parindent}{0cm}
\vspace*{-8mm}
\begin{minipage}{1.5cm}
	\vspace*{-27mm}
	\includegraphics[scale=0.15]{imagens/brasao}
\end{minipage}
	\hspace{0.2cm}
\begin{minipage}[b][2.8cm][c]{16cm}
	{\fontfamily{ptm}\fontseries{m}\fontsize{13pt}{\baselineskip}\selectfont\MakeUppercase{\imprimiruniversidade}} \\
	{\fontfamily{ptm}\fontseries{m}\fontsize{13pt}{\baselineskip}\selectfont\MakeUppercase{\imprimirdepartamento}} \\
	{\fontfamily{ptm}\fontseries{m}\fontsize{13pt}{\baselineskip}\selectfont\MakeUppercase{CURSO DE \imprimircurso}}
\end{minipage}

\vfill
\begin{center}

	\vspace*{3.5mm}
	{\fontfamily{ptm}\fontseries{b}\fontsize{17pt}{\baselineskip}\selectfont\MakeUppercase{\imprimirautor}} \\
	\vfill
	%\vspace*{12mm}
	\vspace*{-1.5mm}
	{\fontfamily{ptm}\fontseries{b}\fontsize{22pt}{\baselineskip}\selectfont\imprimirtitulo}
	\vfill
	%\vspace*{42mm}
	\vspace*{16.5mm}
	\hspace{.39\textwidth}
	\begin{minipage}{.56\textwidth}
		\SingleSpacing
		\imprimirpreambulo\\
	\end{minipage}\\
	\vspace*{-2.5mm}
	\hspace{.39\textwidth}
	\begin{minipage}{.56\textwidth}
		\SingleSpacing
		\imprimirorientadorRotulo~\imprimirorientador\\
		\imprimircoorientadorRotulo~\imprimircoorientador
	\end{minipage}
	\vfill
	%\vspace*{10.5mm}
	\setstretch{1.0}
	{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont\imprimirlocal, \\
	\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont\imprimirdata}
	\vspace*{4mm}
\end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% FOLHA DE APROVAÇÃO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\ABNTEXsignwidth}{10cm}
\setlength{\ABNTEXsignthickness}{0.5pt}
\setlength{\ABNTEXsignskip}{1.2cm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CAPÍTULOS PRETEXTUAIS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\pretextualchapter}[1]{%
  \addtocounter{abntex@bookmarkcounter}{1}%
  \PRIVATEbookmarkthis{#1}%
  
  \titleformat{\chapter}{\fontfamily{ptm}\fontseries{b}\fontsize{18pt}{\baselineskip}\selectfont}{\thechapter}{0pt}{}%
  \titlespacing{\chapter}{0pt}{-10pt}{40pt}%
  
  \chapter*[#1]{\centerline{#1}}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% AGRADECIMENTOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{agradecimentos}[1][\agradecimentosname]{%
   \pretextualchapter{#1}
  }{\PRIVATEclearpageifneeded}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% RESUMO E ABSTRACT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{resumo}[1][\resumoname]{%
   \PRIVATEbookmarkthis{#1}
   \renewcommand{\abstractnamefont}{\chaptitlefont}
   \renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
   \begin{abstract}\setstretch{1.0}
	   \vspace*{30.5pt}
  }{\end{abstract}\PRIVATEclearpageifneeded}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TÍTULO DO SUMÁRIO, LISTAS DE TABELA, QUADROS, FIGURAS, RESUMOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*{\chaptitlefont}{\vspace*{-10pt}\fontfamily{ptm}\fontseries{b}\fontsize{18pt}{\baselineskip}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SUMÁRIO (toc)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifthenelse{\boolean{ABNTEXsumario-tradicional}}{

	%capítulos serão uppercase
	\settocpreprocessor{chapter}{%
	\let\tempf@rtoc\f@rtoc%
	\def\f@rtoc{%
	\texorpdfstring{\MakeTextUppercase{\tempf@rtoc}}{\tempf@rtoc}}%
	}
	\settocpreprocessor{part}{%
	\let\tempf@rtoc\f@rtoc%
	\def\f@rtoc{%
	\texorpdfstring{\MakeTextUppercase{\tempf@rtoc}}{\tempf@rtoc}}%
	}
	%
	% Fontes das entradas do sumario, tirando o negrito
	%
	\renewcommand{\cftpartfont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	%
	\renewcommand{\cftchapterfont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	\renewcommand{\cftchapterpagefont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	\renewcommand*{\cftchapterleader}{%
		\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont\cftdotfill{\cftchapterdotsep}
	}
	
	%
	\renewcommand{\cftsectionfont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	\renewcommand{\cftsectionpagefont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	%
	\renewcommand{\cftsubsectionfont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	\renewcommand{\cftsubsectionpagefont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	%
	\renewcommand{\cftsubsubsectionfont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	\renewcommand{\cftsubsubsectionpagefont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	%
	\renewcommand{\cftparagraphfont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	\renewcommand{\cftparagraphpagefont}{\fontfamily{ptm}\fontseries{m}\fontsize{12pt}{\baselineskip}\selectfont}
	
	\renewcommand{\tocinnonumchapter}{%
	    \addtocontents{toc}{\cftsetindents{chapter}{0em}{2em}}%   
	    \cftinserthook{toc}{A}}
}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% REMOVER O CONTADOR DE CITAÇÕES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Configurações do pacote backref
% Usado sem a opção hyperpageref de backref
\renewcommand{\backrefpagesname}{}
% Texto padrão antes do número das páginas
\renewcommand{\backref}{}
% Define os textos da citação
\renewcommand*{\backrefalt}[4]{
	\ifcase #1 %
		%Nenhuma citação no texto.%
	\or
		%Citado na página #2.%
	\else
		%Citado #1 vezes nas páginas #2.%
	\fi}%
% ---

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LISTA DE QUADROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Novo list of (listings) para QUADROS

\newcommand{\quadroname}{Quadro}
\newcommand{\listofquadrosname}{LISTA DE QUADROS}

\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}

% configurações para atender às regras da ABNT
\counterwithin{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space} 
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CORREÇÃO DA LISTA DE FIGURAS E TABELAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ESPAÇAMENTO ENTRE LINHAS E PARÁGRAFOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% O tamanho do parágrafo é dado por:
\setlength{\parindent}{1.5cm}

% Controle do espaçamento entre um parágrafo e outro:
\setlength{\parskip}{0cm}  % tente também \onelineskip

%\OnehalfSpacing
%corrigindo o espaçamento entre linhas para ficar igual ao do Word
%\renewcommand{\baselinestretch}{1.5} 
\setstretch{1.5}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ESPAÇAMENTO DE CAPITULOS E SEÇÕES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{capitulos}
{
	\titleformat{\chapter}{\fontfamily{ptm}\fontseries{b}\fontsize{20pt}{\baselineskip}\selectfont}{\thechapter}{0pt}{\hskip 0.66cm}%
	\titlespacing{\chapter}{0pt}{10pt}{25pt}
	
	\titleformat{\section}{\fontfamily{ptm}\fontseries{m}\fontsize{18pt}{\baselineskip}\selectfont}{\thesection}{0pt}{\hskip 0.66cm}%
	\titlespacing{\section}{0pt}{28pt}{22pt}
	
	\titleformat{\subsection}{\fontfamily{ptm}\fontseries{m}\fontsize{16pt}{\baselineskip}\selectfont}{\thesubsection}{0pt}{\hskip 0.66cm}%
	\titlespacing{\subsection}{0pt}{28pt}{22pt}
	
	\titleformat{\subsubsection}{\fontfamily{ptm}\fontseries{m}\fontsize{14pt}{\baselineskip}\selectfont}{\thesubsubsection}{0pt}{\hskip 0.66cm}%
	\titlespacing{\subsubsection}{0pt}{28pt}{11pt}
}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CORREÇÃO DAS FONTES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%capítulos
\renewcommand{\ABNTEXchapterfont}{\fontfamily{ptm}\fontseries{b}\selectfont}
%\renewcommand{\ABNTEXchapterfontsize}{\fontsize{20pt}{\baselineskip}\selectfont}
%Na verdade, apenas alguns capitulos pretextuais serao afetados
%Os demais serao afetados por \titleformat{\chapter} e \titlespacing{\chapter}
%utilizados anteriormente...
\renewcommand{\ABNTEXchapterfontsize}{\fontsize{18pt}{\baselineskip}\selectfont}
%seções
%\renewcommand{\ABNTEXsectionfont}{\fontfamily{ptm}\fontseries{m}\selectfont}
%\renewcommand{\ABNTEXsectionfontsize}{\fontsize{18pt}{\baselineskip}\selectfont}
%subseções
%\renewcommand{\ABNTEXsubsectionfont}{\fontfamily{ptm}\fontseries{m}\selectfont}
%\renewcommand{\ABNTEXsubsectionfontsize}{\fontsize{16pt}{\baselineskip}\selectfont}
%subsubseções
%\renewcommand{\ABNTEXsubsubsectionfont}{\fontfamily{ptm}\fontseries{m}\selectfont}
%\renewcommand{\ABNTEXsubsubsectionfontsize}{\fontsize{14pt}{\baselineskip}\selectfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ANEXOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{anexosenv}{%
 \cftinserthook{toc}{AAA}
 
 \PRIVATEapendiceconfig{\anexoname}{\anexosname}
 
 \let\savedchap\@makechapterhead
 \def\@makechapterhead{\vspace*{-22pt}\savedchap}
 
 \begin{appendix}
 \renewcommand\theHchapter{anexochapback.\arabic{chapter}}
}{
 \end{appendix}
 \setboolean{abntex@apendiceousecao}{false}
 \bookmarksetup{startatroot}
}
% ---

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% APÊNDICES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{apendicesenv}{%
 \PRIVATEapendiceconfig{\apendicename}{\apendicesname}
 
 \let\savedchap\@makechapterhead
 \def\@makechapterhead{\vspace*{-22pt}\savedchap}
 
 \begin{appendix}
}{
 \end{appendix}
 \setboolean{abntex@apendiceousecao}{false}
 \bookmarksetup{startatroot}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% REFERÊNCIAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{referencias}
{
	\titleformat{\chapter}{\fontfamily{ptm}\fontseries{b}\fontsize{18pt}{\baselineskip}\selectfont\centering}{\thechapter}{0pt}{}%
	\titlespacing{\chapter}{0pt}{23pt}{29pt}%
}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CABEÇALHO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\makeoddhead{abntheadings}{}{}{\ABNTEXfontereduzida\thepage}
\makeheadrule{abntheadings}{\textwidth}{0pt}