%%
%% This is file `ENSEIRB_poster.cls` <2017/01/30>
%% ENSEIRB-MatMeca poster style
%%
%%  Created on 2018/01/30 by P. Dorbec
%%     v1.0 on 2018/02/01 by P. Dorbec
%%  Modified on 2018/08/07 by M. Faverge to change from LaBRI to ENSEIRB
%%  Modified on 2022/02/15 by M. Faverge to update the Bordeaux INP graphic chart.
%%
%% Inspired from http://www.nathanieljohnston.com/2009/08/latex-poster-template/
%% Inspired from the LaBRI template done by P. Dorbec
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ENSEIRB_poster}
              [2022/02/15 v1.1 ENSEIRB-MatMeca - poster style]

\LoadClass{beamer}
\usepackage{tikz}
\usepackage{graphicx}
\usepackage{amsmath,amsthm, amssymb, latexsym}
%\usefonttheme[onlymath]{serif}
%\boldmath
%\usepackage[orientation=portrait,size=a1,scale=1.4,debug]{beamerposter}
\usepackage[orientation=portrait,size=a1,scale=1.2,debug]{beamerposter}

\usepackage{beamercolorthemeenseirb}

%% \definecolor{enseirbBlack}{RGB}{0,0,0}
%% \definecolor{enseirbOrange}{RGB}{242,148,0}
%% \definecolor{enseirbRouge}{RGB}{226,0,26}
%% \definecolor{enseirbMagenta}{RGB}{226,0,122}
%% \definecolor{enseirbVert}{RGB}{151,190,13}
%% \definecolor{enseirbBleu}{RGB}{58,170,220}
\definecolor{enseirbGris}{RGB}{118,116,118}
%% \definecolor{enseirbViolet}{RGB}{119,39,99}
%% \definecolor{enseirbVertJaune}{RGB}{205,205,0}
%% \definecolor{enseirbBleuMarine}{RGB}{0,55,139}

\newlength{\sepwidth}
\newlength{\onecolwidth}
\newlength{\twocolwidth}
\newlength{\threecolwidth}
\newlength{\fourcolwidth}
\newlength{\twothirdcolwidth}
\newlength{\bottomcolwidth}

%-----------------------------------------------------------
% Define the column widths and overall poster size
% To set effective sepwid, onecolwid and twocolwid values, first choose how many columns you want and how much separation you want between columns
% In this template, the separation width chosen is 0.022 of the paper width
% onecolwidth should correspond to everything but 2 sepwidth
% twocolwid to be (onecolwid-sepwid)/2 = 0.464
% threecolwid to be (3*onecolwid)+2*sepwid = 0.708

\setlength{\sepwidth}{0.022\paperwidth} % Separation width (white space) between columns
\setlength{\fourcolwidth}{0.2225\paperwidth} % width for four columns
\setlength{\threecolwidth}{0.304\paperwidth} % Width for three columns
\setlength{\twothirdcolwidth}{0.630\paperwidth} % Width for three columns
\setlength{\twocolwidth}{0.467\paperwidth} % Width for two columns
\setlength{\onecolwidth}{0.956\paperwidth} % Width for a single column
\setlength{\topmargin}{-0.5in} % Reduce the top margin size


% define some length variables that are used by the template
\newlength{\inboxwd}
\newlength{\iinboxwd}
\newlength{\inboxrule}
\makeatletter
\makeatother

\setbeamerfont{block title}{series=\bfseries}
\setbeamerfont{block alerted title}{series=\bfseries}

\setbeamercolor{block title}{fg=primaryEM,bg=white}
\setbeamercolor{block body}{fg=black,bg=white}
\setbeamercolor{block inside}{fg=black,bg=white}
\setbeamercolor{block frame}{fg=primaryEM,bg=primaryEM}

%% \setbeamercolor{block alerted frame}{fg=black,bg=secondaryRed!90!black}
%% \setbeamercolor{block body alerted}{fg=black,bg=secondaryRed!20!white}
%% \setbeamercolor{block title alerted}{fg=white,bg=secondaryRed!90!black}

\setbeamercolor{block alerted frame}{fg=black,bg=secondaryRed01}
\setbeamercolor{block body alerted}{fg=black,bg=secondaryRed04!20!white}
\setbeamercolor{block title alerted}{fg=white,bg=secondaryRed01}

%% \setbeamercolor{block example frame}{fg=black,bg=secondaryGreen01!90!black}
%% \setbeamercolor{block body example}{fg=black,bg=secondaryGreen04!20!white}
%% \setbeamercolor{block title example}{fg=white,bg=secondaryGreen01!90!black}

\setbeamercolor{block example frame}{fg=black,bg=secondaryGreen01}
\setbeamercolor{block body example}{fg=black,bg=secondaryGreen04!20!white}
\setbeamercolor{block title example}{fg=white,bg=secondaryGreen01}

\setbeamercolor{block example frame}{fg=black,bg=secondaryRed13}
\setbeamercolor{block body example}{fg=black,bg=secondaryRed14!20!white}
\setbeamercolor{block title example}{fg=white,bg=secondaryRed13}

\setbeamercolor{toprulerbox}{fg=primaryEM,bg=primaryEM}
\setbeamercolor{bottomrulerbox}{fg=primaryEM,bg=primaryEM}

%==============================================================================
% build the poster title
%==============================================================================

\setbeamertemplate{headline}{
    \begin{columns}[c]
        %%\begin{column}{.03\linewidth}
        %%\end{column}
        \begin{column}{.2\linewidth}
          \includegraphics[width=.45\textwidth]{./logos/Logo}
          %%\includegraphics[width=\textwidth]{./logos/logo_em}
        \end{column}
        \begin{column}{.6\linewidth}
            \centering
            \usebeamercolor{title in headline}{\color{primaryBlack}\Huge{\textbf{\inserttitle}}\\[0.8ex]}
            \usebeamercolor{title in headline}{\color{primaryBlack}\huge{\textbf{\insertauthor}}\\[1ex]}
            \usebeamercolor{author in headline}{\color{primaryBlack}\large{Tuteur: \tuteur}\\[1ex]}
            \usebeamercolor{institute in headline}{\color{primaryBlack}\large{Ma\^itre de stage: \encadrant}\\[1ex]}
        \end{column}
        \begin{column}{.17\linewidth}
          \begin{center}
            %         \vspace{1cm}
            \includegraphics[width=.5\textwidth]{\authorpicture}
            
            \usebeamercolor{author in headline}{\color{primaryEM}\large{\filiere}\\[1ex]}
            \usebeamercolor{author in headline}{\color{primaryEM}\large{\option}}
          \end{center}
        \end{column}
        \begin{column}{.03\linewidth}
        \end{column}
    \end{columns}
  \vspace{0.5in}
  \begin{beamercolorbox}[wd=\paperwidth,colsep=0.2cm]{toprulerbox}\end{beamercolorbox}
 }

 % no navigation symbols
\setbeamertemplate{navigation symbols}{}


% TODO: Adjust to the number of logos you put here (see width defined above)
\setlength{\bottomcolwidth}{\fourcolwidth}

\setbeamertemplate{footline}{
    \hspace{0.5in}\begin{beamercolorbox}[wd=\onecolwidth,colsep=0.2cm]{bottomrulerbox}\end{beamercolorbox}
    \vspace{0.5in}
    \begin{columns}[c]
     \begin{column}{\bottomcolwidth}
         \centering
         %%\includegraphics[height=3cm]{logos/logo_BordeauxINP}
         \includegraphics[height=3cm]{logos/logo_em}
     \end{column}
     \begin{column}{\bottomcolwidth}
         \centering
         \includegraphics[height=3cm]{logos/logo_cnrs}
     \end{column}
     \begin{column}{\bottomcolwidth}
         \centering
         \includegraphics[height=3cm]{logos/logo_inria}
     \end{column}
     \begin{column}{\bottomcolwidth}
         \centering
         \includegraphics[height=3cm]{logos/UBX-7}
     \end{column}
 \end{columns}
 {}
 \vspace{2cm}
}

% Block definition
\setbeamertemplate{block begin}
{
  \vskip-2pt
  \setlength{\inboxwd}{\linewidth}
  \addtolength{\inboxwd}{-4pt}
  \setlength{\iinboxwd}{\inboxwd}
  \addtolength{\iinboxwd}{-10cm}
  \par\vskip\medskipamount
  \begin{beamercolorbox}[center,dp={2pt},rounded=true]{block frame}
    \vspace{-4pt}
    \begin{beamercolorbox}[wd=\inboxwd,center,rounded=true]{block inside}
      \begin{beamercolorbox}[ht=3ex,dp=1.5ex,center]{block title}
        \usebeamerfont{block title}\large\insertblocktitle
        %    \begin{flushleft}
        %    \vskip-1cm
        %    \begin{tikzpicture}[remember picture,overlay]
        %      \shade [inner color=gray,outer color=white]
        %      (0,0) rectangle (\textwidth,0.3cm);
        %    \end{tikzpicture}
        %    \end{flushleft}
      \end{beamercolorbox}
      {\parskip0pt\par}
      \begin{beamercolorbox}[leftskip=3ex,rightskip=3ex,dp=1.5ex]{block body}
}

\setbeamertemplate{block end}
{
      \end{beamercolorbox}
    \end{beamercolorbox}
  \end{beamercolorbox}
  \medskip
}

% Alert block definition (with frame)
\setbeamertemplate{block alerted begin}
{
  \par\vskip\medskipamount
  \begin{beamercolorbox}[sep=0ex,rounded=true,center,dp={2ex}]{block title alerted}
    \vskip0.01cm
    \usebeamerfont{block title}\large\insertblocktitle
  \end{beamercolorbox}
  {\parskip0pt\par}
  \usebeamerfont{block body}
  \vskip-0.8cm
  \begin{beamercolorbox}[sep=0.5cm, rounded=true,center]{block alerted frame}
    \setlength{\inboxwd}{\linewidth}
    \addtolength{\inboxwd}{-1cm}
    \begin{beamercolorbox}[rounded=true,wd={\inboxwd},center]{block body alerted}
      \setlength{\iinboxwd}{\inboxwd}
      \setlength{\inboxrule}{\inboxwd}
      \addtolength{\iinboxwd}{-0.5cm}
      \addtolength{\inboxrule}{0.5cm}
      \begin{center}
        \begin{minipage}{\iinboxwd}
          %  \justifying
}

\setbeamertemplate{block alerted end}
{
        \end{minipage}
      \end{center}
    \end{beamercolorbox}
  \end{beamercolorbox}
  \medskip
}

% Alert block definition (with frame)
\setbeamertemplate{block example begin}
{
  \par\vskip\medskipamount
  \begin{beamercolorbox}[sep=0ex,rounded=true,center,dp={2ex}]{block title example}
    \vskip0.01cm
    \usebeamerfont{block title}\large\insertblocktitle
  \end{beamercolorbox}
  {\parskip0pt\par}
  \usebeamerfont{block body}
  \vskip-0.8cm
  \begin{beamercolorbox}[sep=0.5cm, rounded=true,center]{block example frame}
    \setlength{\inboxwd}{\linewidth}
    \addtolength{\inboxwd}{-1cm}
    \begin{beamercolorbox}[rounded=true,wd={\inboxwd},center]{block body example}
      \setlength{\iinboxwd}{\inboxwd}
      \setlength{\inboxrule}{\inboxwd}
      \addtolength{\iinboxwd}{-0.5cm}
      \addtolength{\inboxrule}{0.5cm}
      \begin{center}
        \begin{minipage}{\iinboxwd}
          %  \justifying
}

\setbeamertemplate{block example end}
{
        \end{minipage}
      \end{center}
    \end{beamercolorbox}
  \end{beamercolorbox}
  \medskip
}
