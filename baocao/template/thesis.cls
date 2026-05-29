\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template/thesis}[2024/04/16 v2.0.0 UIT Thesis Template by LuanVT]
\LoadClass[11pt]{report}

% Core packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1,T5]{fontenc}
\RequirePackage{anyfontsize}
% \RequirePackage[vietnamese,english]{babel}
% \RequirePackage{csquotes}
\RequirePackage{template/slashbox}
% \RequirePackage{microtype}

% Layout and headers
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage[titles]{tocloft}

% Graphics and tables
\RequirePackage{graphicx}
\RequirePackage{caption,subcaption}
\RequirePackage{array,tabularx,booktabs,longtable}
\RequirePackage{multirow,makecell}
\RequirePackage{float}
\RequirePackage{ragged2e}

% Math packages
\RequirePackage{amsmath,amsfonts,amssymb,mathtools}
\RequirePackage{siunitx}
\RequirePackage[mathscr]{euscript}

% Miscellaneous
\RequirePackage{pifont,adforn}
\RequirePackage{algorithm}
\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{template/slashbox}
\RequirePackage{pdfpages}
\RequirePackage{ftnxtra}
\RequirePackage{xcolor}


\RequirePackage[
	colorlinks=true,
	pdfstartview=FitV,
	linkcolor=black,
	citecolor=blue,
	urlcolor=blue,
	breaklinks=true
]{hyperref}
\RequirePackage{cleveref}


\RequirePackage{multido}
\RequirePackage{etoolbox}

\RequirePackage{latexsym,bbm,rotating}
\RequirePackage{enumitem,hhline,stmaryrd,bussproofs,arydshln}
\usetikzlibrary{calc}
\RequirePackage{lipsum}
\RequirePackage{textcase}
\RequirePackage{ftnxtra}


\providecommand\phantomsection{}

\RequirePackage{array,booktabs,arydshln,xcolor}
\newcommand\VRule[1][\arrayrulewidth]{\vrule width #1}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

%\RequirePackage{showframe}
\renewcommand{\labelitemii}{$\diamond$}
\renewcommand\cftchappresnum{Chương }
\renewcommand\cftchapaftersnum{.}
\newlength\mylen
\settowidth\mylen{\bfseries\cftchappresnum\thechapter\ }
\addtolength{\cftchapnumwidth}{\mylen}


\setlength\headheight{32pt}

% \RequirePackage[fontsize=13pt]{scrextend}

\RequirePackage{setspace}
\renewcommand{\baselinestretch}{1.5}

\titleformat{\chapter}[hang]
{\large\bfseries}{\cftchappresnum\thechapter.}{0.5 em}{\centering\MakeUppercase}

\titlespacing{\chapter}{0in}{-23pt}{20pt}

\titleformat*{\section}{\normalsize\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize\bfseries}
\titleformat*{\paragraph}{\normalsize\bfseries}
\titleformat*{\subparagraph}{\normalsize\bfseries}

\geometry{
	a4paper,
	left=1.38in,
	right=0.79in,
	top=1.18in,
	bottom=1.38in
}


\RequirePackage{acro,tabularray}
\acsetup{
    list/template=tabularray,
    patch/longtable=false
}
\input{abbrev}

\RequirePackage[maxcitenames=2, mincitenames=1, backend=biber,
sorting=none, bibencoding=utf8, natbib=true, maxbibnames=99, style=ieee]{biblatex}
\DefineBibliographyStrings{english}{andothers={và các cộng sự}}
\DefineBibliographyStrings{english}{and={và}}
%\DefineBibliographyStrings{english}{pages={trang}}
%\DefineBibliographyStrings{english}{in={trong}}
\addbibresource{bibliography.bib}

\captionsetup[figure]{name={Hình},labelsep=period}
\captionsetup[table]{name={Bảng},labelsep=period}

\renewcommand{\chaptername}{Chương}
\renewcommand\appendixname{Phụ lục}
\renewcommand{\contentsname}{Mục lục}
\renewcommand{\listtablename}{Danh mục các bảng}
\renewcommand\listfigurename{Danh mục các hình vẽ và đồ thị}
\renewcommand{\bibname}{Tài liệu tham khảo}
\newcommand{\abbrevname}{Danh mục từ viết tắt}

\overfullrule=2pt

\fancypagestyle{customfancy}
{
   \fancyhf{}
    \fancyhead[L]{\parbox[t]{0.985\textwidth}{\RaggedRight\leftmark\strut}}
    \fancyfoot[C]{\thepage}
}

\renewcommand{\headrulewidth}{1pt}
\renewcommand{\footrulewidth}{1pt}


% //STY


\if@twoside
 \setlength\oddsidemargin   {36.1\p@}
 \setlength\evensidemargin  {0\p@}
 \setlength\marginparwidth {40\p@}
\else
 \setlength\oddsidemargin   {36.1\p@}
 \setlength\evensidemargin  {36.1\p@}
 \setlength\marginparwidth  {40\p@}
\fi

\marginparsep 10pt
\topmargin -46pt
\headsep .1in
\textheight 10in
\textwidth 6in

\brokenpenalty=10000

%%%%%%%%%% Title Module %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\Title}[2][local]{
    \expandafter\def\csname Title#1\endcsname{#2}%
}
\newcommand{\@Title}[1][local]{
    \edef\currentValue{\csname Title#1\endcsname}%
    \currentValue
}
%%%%%%%%%% End Title Module %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\University#1{\gdef\@University{#1}}
\def\CollegeOrDept#1{\gdef\@CollegeOrDept{#1}}
\def\Faculty#1{\gdef\@Faculty{#1}}
\def\Degree#1{\gdef\@Degree{#1}}
\def\ThesisType#1{\gdef\@ThesisType{#1}}
\def\ThesisYear#1{\gdef\@ThesisYear{#1}}
\def\ThesisLocation#1{\gdef\@ThesisLocation{#1}}
\def\Major#1{\gdef\@Major{#1}}
\def\MajorCode#1{\gdef\@MajorCode{#1}}

%%%%%%%%%% Author module %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\Authors{}
\newcommand{\Author}[2]{%
    \listadd{\Authors}{#1}%
    \expandafter\def\csname authorId#1\endcsname{#2}%
}
\newcommand{\@Authors}[1][\\]{ % #1 is delimiter
    \def\concatenated{}%
    \renewcommand*{\do}[1]{\edef\concatenated{\concatenated ##1#1}}%
    \dolistloop{\Authors}%
    \concatenated%
}
\newcommand{\@AuthorsWithId}[1][\par]{ % #1 is delimiter
    \renewcommand*{\do}[1]{
        {##1 – \csname authorId##1\endcsname#1}
    }%
    \dolistloop{\Authors}%
}
%%%%%%%%%% End Author module %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%% Supervisor Module %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\Supervisors{}
\newcommand{\Supervisor}[1]{%
    \listadd{\Supervisors}{#1}%
}

\newcommand{\@Supervisor}[1][\\]{ % #1 is delimiter
    \def\concatenated{}%
    \renewcommand*{\do}[1]{\edef\concatenated{\concatenated ##1#1}}%
    \dolistloop{\Supervisors}%
    \concatenated%
}
%%%%%%%%%% End Supervisor Module %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newif\iffigurespage
\newif\iftablespage
\figurespagetrue
\tablespagetrue
\def\firsttitlep{
    \thispagestyle{empty}
    \begin{center}
    	{\par{\textbf{\@University}}\par}
    	{{\textbf{\@CollegeOrDept}}\par}
    	{{\textbf{\@Faculty}}\par}
        \adfflowerleft {\Large\adfast1}\adfflowerright
    	\vspace*{18ex}
     
    	{{\textbf{\@Authors}}\par}
    	\vspace*{9ex}
    
        {{\textbf{\@ThesisType}}\par}
        \vspace*{1.5ex}
        {{{\large\textbf{\MakeUppercase\expandafter{\@Title}}}}\par}
        \vspace*{1.5ex}
        {\textcolor{red}{\textbf{\@Title[en]}}\par}
        \vspace*{7.5ex}
        
        {\@ifundefined{@MajorCode}{\empty} {MÃ NGÀNH: {\@MajorCode \par}}}
        \vspace*{6ex}
    	\vfill
    	\textbf{{\@ThesisLocation}, {\@ThesisYear}}
        \vspace*{1ex}
    \end{center}
    \newpage
}

\def\secondtitlep{
    \thispagestyle{empty}
    % \vspace*{-4ex}
    \begin{center}
    	{\par{\textbf{\@University}}\par}
    	{{\textbf{\@CollegeOrDept}}\par}
    	{{\textbf{\@Faculty}}\par}
    
    	\vspace*{5ex}
    	\begin{figure}[h]
    	    \centering
    	    \includegraphics[scale=0.6]{img/logouit.png}
    	\end{figure}
    	\vspace*{5ex}
    	{{\textbf{\@AuthorsWithId}}\par}
    	\vspace*{9ex}
        {{\textbf{\@ThesisType}}\par}
        \vspace*{1.5ex}
        {{\large\textbf{\@Title}}\par} 
        \vspace*{1.5ex}
        {\textcolor{red}{\textbf{\@Title[en]}}\par}
        \vspace*{7.5ex}
        
        \vspace*{6ex}
        \textbf{GIẢNG VIÊN HƯỚNG DẪN}\par
    	{\textbf{\@Supervisor}\par\vspace*{15mm}} 
    	\vfill
    	{{\textbf{\uppercase{\@ThesisLocation}, \@ThesisYear}}}
        \vspace*{2ex}
    \end{center}\newpage
}


\def\firstbeforepreface{
    \pagenumbering{roman}
    \pagestyle{plain}
    \begin{tikzpicture}[remember picture, overlay]
      \draw[line width = 1pt] ($(current page.north west) + (108pt,-65pt)$) rectangle ($(current page.south east) + (-56pt,56pt)$);
    \end{tikzpicture}
    \firsttitlep
    \cleardoublepage
}

\def\secondbeforepreface{
    \pagenumbering{roman}
    \pagestyle{plain}
    \begin{tikzpicture}[remember picture, overlay]
      \draw[line width = 1pt] ($(current page.north west) + (108pt,-65pt)$) rectangle ($(current page.south east) + (-56pt,56pt)$);
    \end{tikzpicture}
    \secondtitlep
    \cleardoublepage
}
        

\def\prefacesection#1{
    \chapter*{#1}
    \addcontentsline{toc}{chapter}{#1}
}

\def\afterpreface{
    \pagestyle{customfancy}

    % \newpage
    % \phantomsection
    % \addcontentsline{toc}{chapter}{Thông tin hội đồng bảo vệ khóa luận}
    % \input{chapters/council}

    % \newpage
    % \phantomsection
    % \addcontentsline{toc}{chapter}{Lời cảm ơn}
    % \input{chapters/ack.tex}

    \newpage
    \phantomsection
    \addcontentsline{toc}{chapter}{Tóm tắt}
    \input{chapters/abstract.tex}

    \newpage
    \phantomsection
	\tableofcontents



    % \newpage
    % \phantomsection
	% \addcontentsline{toc}{chapter}{\listtablename}
    % \iftablespage
    %     \listoftables
    % \fi
 
    % \newpage
    % \phantomsection
	% \addcontentsline{toc}{chapter}{\listfigurename}
    % \iffigurespage
    %     \listoffigures
    % \fi
    
    % \newpage
    % \phantomsection
    % \addcontentsline{toc}{chapter}{\abbrevname}
    % \printacronyms[name=\abbrevname]
    
    \cleardoublepage
    \pagenumbering{arabic}
    \pagestyle{customfancy}
}


\let\@ldthebibliography\thebibliography
\renewcommand{\thebibliography}[1]{\newpage
                \@ldthebibliography{#1}
\addcontentsline{toc}{chapter}{\bibname}}

\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{plain}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}

\makeatletter  
%% Switch meanings of starred and unstarred macros
%% (see https://tex.stackexchange.com/a/278398/5001)
\newcommand{\XDeclarePairedDelimiter}[3]{%  "X" for "exchange"
  \expandafter\DeclarePairedDelimiter\csname RIGHT\string#1\endcsname{#2}{#3}%
  \newcommand#1{%
    \@ifstar{\csname RIGHT\string#1\endcsname}
            {\@ifnextchar[{\csname RIGHT\string#1\endcsname}
                          {\csname RIGHT\string#1\endcsname*}%
}}}
\makeatother
\let\norm\relax % undefine existing "\norm" macro
\XDeclarePairedDelimiter{\norm}{\lVert}{\rVert}

\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}