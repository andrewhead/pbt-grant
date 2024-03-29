\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NSF}
% \LoadClass[11pt, letterpaper, timesnewroman, onecolumn]{article}

% BCP 22: Let's try a different font family:
\LoadClass[10pt, letterpaper, onecolumn]{article}
\usepackage{palatino}
\usepackage{mathpazo}
% \usepackage{microtype}

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
% % \titleformat{\section}{\Large\bfseries\filcenter}{}{0pt}%
% %                    {\titlecap{#1}\\\rule{\textwidth}{0.4pt}}
% \titleformat{\section}{\Large\bfseries}{}{0pt}{%
%   \thetoplevelsection.
%   \ \
%   #1}
% \titleformat{\subsection}{\large\bfseries}{}{0pt}{%
%   \arabic{subsection}.
%   \ \
%   #1}
% \newcommand{\subsectionstar}[1]{{\bigskip\large\bfseries\noindent#1} \par
%   \medskip\noindent \ignorespaces}
% % \titleformat{\subsubsection}{\bfseries}{}{0pt}{%
% %   D\arabic{subsection}.\arabic{subsubsection}.
% %   \makeatother
% %   [CurrentLabel=\makeatletter\@currentlabel\makeatother]
% %   %   D\arabic{subsection}.\arabic{subsubsection}.
% %   \ \
% %   #1}
% \newcommand{\subsubsectionstar}[1]{{%
%     \medskip\bfseries\noindent{#1}%
%     \par\smallskip\noindent\ignorespaces}}
% %\titlespacing*{\section}{0pt}{0.5em}{0.3pt}
% %\titlespacing*{\subsection}{0pt}{0.35em}{0pt}
% %\titlespacing*{\subsubsection}{0pt}{0.25em}{0pt}

% \newcounter{SECTION}
% \newcounter{SUBSECTION}[SECTION]

% \newcommand{\SECTION}[1]{%
%   \refstepcounter{SECTION}
%   \section*{D\arabic{SECTION}: #1}
% }
% \newcommand{\SUBSECTION}[1]{%
%   \refstepcounter{SUBSECTION}
%   \subsubsection*{D\arabic{SUBSECTION}: #1}
% }


\renewcommand{\title}[1]{\begin{center}\LARGE\bfseries{#1}\end{center}}

% Reset page numbering to 1.  This is helpful, since the text can only
% be 15 pages (unless otherwise specified, see individual solicitations),
% and reviewers will want to believe we've kept it within those limits
\newcommand{\thetoplevelsection}{UNDEFINED}
\newcommand{\newsection}[1]{%
  \pagenumbering{arabic}
  \renewcommand{\thetoplevelsection}{#1}
  % \renewcommand{\thepage}{#1--\arabic{page}}
}
