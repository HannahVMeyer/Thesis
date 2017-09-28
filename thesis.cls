\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}

\LoadClass[twoside, titlepage, DIV=10, BCOR=8.5mm, open=right]{scrreprt}

%%% Packages 
%  general packages
\RequirePackage[markcase=lower]{scrlayer-scrpage} %for page styles
\RequirePackage{setspace} 
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage{caption} 
\RequirePackage{subcaption}
\RequirePackage{tocstyle}
\RequirePackage{siunitx} %for number formating
\RequirePackage[toc,xindy,acronyms,nomain]{glossaries}

% language
\RequirePackage{polyglossia}
\RequirePackage{csquotes} % sensible quotations, recommended to load by polyglossia

% text setting
%\RequirePackage{microtype} % ligatures
\RequirePackage{nth} % ordinal numbers
\RequirePackage{scalefnt} % rescale fonts
\RequirePackage{url} % allows line breaks in refs,lniks
\usepackage{fix-cm} % for chapter numbers
\usepackage{titlesec} % for chapter numbers


%font packages
\RequirePackage{fontspec}
\RequirePackage{textcomp}

% math packages
%\RequirePackage{xfrac}
\RequirePackage{lualatex-math}
\RequirePackage{amsmath}
\RequirePackage{unicode-math} % needs to be loaded after any other math(-related) package

% figure related packages
\RequirePackage{graphicx} % enhanced graphics

% list packages
\RequirePackage[inline]{enumitem}

% tabular packages
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage{booktabs} 
\RequirePackage{longtable}

\RequirePackage{scrhack}
% bib packages
\RequirePackage[natbib, 
	backend=biber, 
	style=authoryear, 
	sorting=nyt, 
	maxcitenames=2, 
	minbibnames=20,
	maxbibnames=20, 
	doi=false, 
	date=year, 
	isbn=false, 
	url=false, backref, 
	useprefix, 
	uniquename=false, 
	uniquelist=false,
	dashed=false,
	firstinits=true]{biblatex}

% possibly for use 
%\RequirePackage{etoolbox}
% Font packages
%\RequirePackage[explicit]{titlesec} % labeling of sections

% ref packages
\RequirePackage{hyperref}
\RequirePackage[nameinlink, noabbrev]{cleveref} % has to be loaded last, according to manual

%%% Settings
% general
\onehalfspacing % via setspace
\setmainlanguage[variant=uk]{english} % set language
\usetocstyle{nopagecolumn}

% bibliography
\DeclareNameAlias{sortname}{last-first} % alsways last name, then first name in bibliography
\setlength\bibitemsep{0.2\baselineskip} % increase distance between bibliography entries

\DefineBibliographyStrings{english}{%
	andothers = {\&~al\adddot},
	and= {\&},
	bibliography = {References},
  	references = {References},
	shorthands = {{List of Abbreviations}{Abbreviations}},
	}
	
\AtEveryCite{%
    \let\bibopenparen=\bibopenbracket%
    \let\bibcloseparen=\bibclosebracket}

\DeclareFieldFormat[article,inbook]{title}{#1} % removes quotation marks around title
\DeclareFieldFormat{pages}{#1} % removes 'pages' before pages are printed
\DeclareFieldFormat[article]{number}{\mkbibparens{#1}}
\renewbibmacro{in:}{} % removes 'in' before name of journal
\renewcommand{\labelnamepunct}{\addspace} % removes punctuation of title
\renewcommand{\bibpagespunct}{\addcolon\space} % adds colon between issue and pages
\renewbibmacro*{volume+number+eid}{% remove dot behind volume
  \printfield{volume}%
  \setunit{}%
  \printfield{number}%
  \setunit{\addcomma\space}%
  \printfield{eid}}
\renewcaptionname{english}{\bibname}{References}  

% caption setup 
\captionsetup{
format=plain,
	labelformat=simple, 
	labelsep=colon, 
	justification=justified, 
	labelfont=bf,
	textfont=normalfont, 
	font=small
}

% color settings
\colorlet{thesis@toccolor}{black}
\colorlet{thesis@linkcolor}{black!75}
\colorlet{chapnumcol}{gray!75}  % color for chapter number

% hyperref set up
\hypersetup{
    hypertexnames=false,
    linktoc=all,
    colorlinks,
    citecolor=thesis@linkcolor,
    linkcolor=thesis@linkcolor,
    filecolor=thesis@linkcolor,
    urlcolor=thesis@linkcolor
}

% font setup
\setmainfont[
	Ligatures=TeX, 
	Numbers=OldStyle
]{TeX Gyre Pagella}
\setmathfont[bold-style=TeX]{Latin Modern Math}
%\mathversion{pagella}

\setsansfont[
    Ligatures=TeX,
    UprightFont={* Light},
    BoldFont={*},
    ItalicFont={* Light Italic},
    BoldItalicFont={* Italic},
    Scale=MatchLowercase
]{Gill Sans}



%\setmathfont[BoldFont=*bold]{TeX Gyre Pagella Math}
%\DeclareMathAlphabet{\mathcal}{OMS}{cmsy}{m}{n}
%\setmathfont[Extension=.otf, BoldFont=*bold]{texgyrepagella-math}

%\setoperatorfont\symscr

\sisetup{
    group-digits=true,
    group-separator={,},
    group-minimum-digits = 4,
}

% chapter headings
\newcommand{\chapnumfont}{%     % define font for chapter number
  \fontseries{b}      % choose New Chancery, bold, normal shape
  \fontsize{100}{100} % font size 100pt, baselineskip 100pt
  \selectfont%                  % activate font
}

\newcommand{\red}{\textcolor{red}}
\newcommand{\subfig}{\textcolor{black!75}}


\newcommand{\beginsupplement}{%
	\setcounter{chapter}{0}
	\renewcommand\thechapter{\Alph{chapter}}
}

