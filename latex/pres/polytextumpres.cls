% vim: ft=tex nomodeline:
\ProvidesClass{polytextumprose}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{beamer}

%%
%% Theme
%%

% Use the metropolis theme for a more modern layout
\usetheme[
  progressbar=frametitle % Show a prgress bar under the frame title
]{metropolis}

% Use green colours instead of the orange-and-teal colours used by default
\usecolortheme{spruce}


%%
%% Fonts
%%

% Microtypographic awesomeness!
\RequirePackage[final]{microtype}

% Load system fonts
\RequirePackage[no-math]{fontspec}

% Use text figures instead of lining figures
\setsansfont[
  BoldFont={Fira Sans},
  Numbers={OldStyle},
  SmallCapsFeatures={LetterSpace={10}},
]{Fira Sans Light}

% Use text figures in math
\RequirePackage[italic]{mathastext}

% Commands for letterspaced capitals
\newcommand{\lowercaps}[1]{\textsc{\MakeLowercase{#1}}}
\newcommand{\uppercaps}[1]{\textsc{\MakeUppercase{#1}}}

% Commands for declerative formatting
\newcommand{\abbr}[1]{\lowercaps{#1}}
\newcommand{\oldand}[1]{\&}


%%
%% Bibliography
%%

% Required by biblatex
\RequirePackage{csquotes}

% Bibliography management
\RequirePackage[
  backend=biber,        % Use biber as backend
  style=numeric-comp,   % Sort inline citations
  autocite=superscript, % Show citation number as a superscript
  backref=true          % Show where something was cited
]{biblatex}

% Set bibliography source file
\addbibresource{refs.bib}


%%
%% Random packages
%%

\RequirePackage{booktabs}  % Fancy rules for tables
\RequirePackage{graphicx}  % Add images
\RequirePackage{longtable} % Wrap tables across frames
\RequirePackage{tabularx}  % Allows you to wrap lines in a table
\RequirePackage{textcase}  % Manipulate text capitalisation more easily


%%
%% Links
%%

\RequirePackage{hyperref}

% Use sans-serif font for links
\urlstyle{sf}

% Set link colours
\hypersetup{%
  colorlinks=true,
  linkcolor=black,
  anchorcolor=black,
  citecolor=black,
  urlcolor=MSUgreen,
  breaklinks,
  pdfborder=0 0 0,
}

