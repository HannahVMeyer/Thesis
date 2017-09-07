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

% language
\RequirePackage{polyglossia}
\RequirePackage{csquotes} % sensible quotations, recommended to load by polyglossia

% text setting
%\RequirePackage{microtype} % ligatures
\RequirePackage{nth} % ordinal numbers
\RequirePackage{scalefnt} % rescale fonts
\RequirePackage{url} % allows line breaks in refs,lniks

% math packages
\RequirePackage{amsmath}
\RequirePackage{fontspec}
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

% bib packages
\RequirePackage[natbib, backend=biber, style=authoryear, maxcitenames=2, maxbibnames=99, useprefix]{biblatex}

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
\DefineBibliographyStrings{english}{andothers = {\&~al\adddot}}

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
\colorlet{thesis@linkcolor}{black!70}

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
\setmainfont[Ligatures=TeX, Numbers=OldStyle]{TeX Gyre Pagella}
\setsansfont[
    Ligatures=TeX,
    UprightFont={* Light},
    BoldFont={*},
    ItalicFont={* Light Italic},
    BoldItalicFont={* Italic},
    Scale=MatchLowercase
]{Gill Sans}


\setmathfont[bold-style=TeX,]{texgyrepagella-math.otf}
%\DeclareMathAlphabet{\mathcal}{OMS}{cmsy}{m}{n}
%\setmathfont[Extension=.otf, BoldFont=*bold]{texgyrepagella-math}

%\setoperatorfont\symscr

\sisetup{
    group-digits=true,
    group-separator={,},
    group-minimum-digits = 4,
}



\newcommand{\red}{\textcolor{red}}
\newcommand{\subfig}{\textcolor{black!70}}

\newcommand{\beginsupplement}{%
	\setcounter{chapter}{0}
	\renewcommand\thechapter{\Alph{chapter}}
}


\endinput