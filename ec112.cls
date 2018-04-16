\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{../ec112}[2018/04/15 Bayesian Statistics]

\LoadClass[twoside, 11pt]{article}
\RequirePackage{amsfonts,amssymb,titlesec,enumitem,geometry,fancyhdr,graphicx,relsize,array,multirow,tabularx,rotating,xcolor,colortbl,makecell}

\titleformat{\section}[runin]{\bfseries\Large}{}{}{}[]

\newgeometry{left=2cm,right=2cm,top=3.5cm,bottom=2.5cm,headheight=1cm}

% https://tex.stackexchange.com/questions/50360/how-do-you-swap-the-commands-for-two-symbols
% swap phi, varphi
\let\temp\phi
\let\phi\varphi
\let\varphi\temp

% https://tex.stackexchange.com/questions/112576/math-mode-in-tabular-without-having-to-use-everywhere
% requires array
\newcolumntype{L}{>{$}l<{$}} % math-mode version of "l" column type

% Set default item labeling
\setenumerate{label=(\alph*),itemsep=3pt,topsep=3pt}

% Start sections on new pages
\newcommand{\sectionbreak}{\clearpage}

% Set up headers
% http://tex.stackexchange.com/questions/87768/headers-and-footers
\pagestyle{fancy}
\lhead{Mark Gillespie}
\chead{Ec 112}
%\cfoot{center of the footer!}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

% Command to set per-set details on headers and cover page
\newcommand{\setinfo}[2]{
\rhead{Set #1}
\title{Problem Set #1\\\vspace{5mm}
  Ec/ACM/CS 112\\
  Caltech\\\vspace{5mm}
  Spring 2018
}
\author{Name: Mark Gillespie\\
Email: mgillesp@caltech.edu\\
Due Date: #2}
}

\newcommand\RotText[1]{\rotatebox{90}{\parbox{3.5cm}{\centering#1}}}

\definecolor{lightgray}{gray}{0.9}

% Command to draw fancy tables for homework results
\newcommand{\hwtable}[4]{\setlength\extrarowheight{1em} %new code
\begin{table}[!htb]
\centering
\begin{tabularx}{\textwidth}{|l|X|X|}
    \hline
    \cellcolor{lightgray} & #2 & #3 \\
    \cline{2-3}
    \multirow{-2}{*}{\cellcolor{lightgray}\RotText{#1}}& \multicolumn{2}{c|}{\makecell[tl]{#4}}\\
    \hline
\end{tabularx}\end{table}}

% Command to draw simple two-cell tables
\newcommand{\dominotable}[2]{\begin{table}[!htb]
\centering
\begin{tabularx}{\textwidth}{|p{5cm}|p{11.7cm}|}
  \hline
  \cellcolor{lightgray} #1 & #2\\
  \hline
\end{tabularx}
\end{table}}
