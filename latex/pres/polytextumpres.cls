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


%%
%% Fonts
%%

% Microtypographic awesomeness!
\RequirePackage[final]{microtype}

% Load system fonts
\RequirePackage[no-math]{fontspec}

% Use text figures everywhere
\defaultfontfeatures{Numbers={OldStyle}}

% Replace Fira Sans with Scala Sans
\setsansfont[
  BoldFont={Scala Sans Pro} % Disable bold font
]{Scala Sans Pro}

% Use the OpenType version of Fira Mono
\setmonofont[Scale=MatchLowercase]{Fira Mono OT}

% Use text figures in math
\RequirePackage[italic]{mathastext}

% Intelligently suppress ligatures
\RequirePackage{selnolig}

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

% Prevents bad habits
\RequirePackage[l2tabu, orthodox]{nag}

% Proper hyphenation
\RequirePackage[british]{babel}

% Hyphenated left-aligned text
\RequirePackage{ragged2e}

% Filler text
\RequirePackage{blindtext}
\RequirePackage{kantlipsum}

% Even better mathematical typesetting
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mathtools}
\RequirePackage[group-separator={,}]{siunitx}

% Chemical typesetting
\RequirePackage[version=4]{mhchem}

% Command for a centered chemical formula
\newcommand{\ch}[1]{\begin{figure}[ht]\centering\ce{#1}\end{figure}}

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

\endinput
