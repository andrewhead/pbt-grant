\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NSF}
% \LoadClass[11pt, letterpaper, timesnewroman, onecolumn]{article}

% BCP 22: Let's try a different font family:
\LoadClass[10pt, letterpaper, onecolumn]{article}
\usepackage{mathpazo}
\usepackage{microtype}

\RequirePackage[margin=1in]{geometry}
\RequirePackage[pdftex,colorlinks,linkcolor=black,citecolor=black,urlcolor=black,filecolor=black]{hyperref}

\RequirePackage[pdftex]{graphicx}
\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png}

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[R]{\thepage}

\RequirePackage{titlecaps}

\RequirePackage[explicit]{titlesec}
% \titleformat{\section}{\Large\bfseries\filcenter}{}{0pt}%
%                    {\titlecap{#1}\\\rule{\textwidth}{0.4pt}}
\titleformat{\section}{\Large\bfseries}{}{0pt}{%
  \thetoplevelsection.
  \ \
  \titlecap{#1}}
\titleformat{\subsection}{\large\bfseries}{}{0pt}{%
  \thetoplevelsection \arabic{subsection}.
  \ \
  \titlecap{#1}}
\newcommand{\subsectionstar}[1]{{\bigskip\large\bfseries\noindent\titlecap{#1}} \par
  \medskip\noindent \ignorespaces}
\titleformat{\subsubsection}{\bfseries}{}{0pt}{%
  \arabic{subsection}.\arabic{subsubsection}.
  \ \
  \titlecap{#1}}
\newcommand{\subsubsectionstar}[1]{{%
    \smallskip \bfseries \noindent \titlecap{#1} \smallskip \noindent \ignorespaces}}
%\titlespacing*{\section}{0pt}{0.5em}{0.3pt}
%\titlespacing*{\subsection}{0pt}{0.35em}{0pt}
%\titlespacing*{\subsubsection}{0pt}{0.25em}{0pt}

\renewcommand{\title}[1]{\begin{center}\LARGE\bfseries{#1}\end{center}}

% Reset page numbering to 1.  This is helpful, since the text can only
% be 15 pages (unless otherwise specified, see individual solicitations),
% and reviewers will want to believe we've kept it within those limits
\newcommand{\thetoplevelsection}{UNDEFINED}
\newcommand{\newsection}[1]{%
  \pagenumbering{arabic}
  \renewcommand{\thetoplevelsection}{#1}
  \renewcommand{\thepage}{#1--\arabic{page}}
}
