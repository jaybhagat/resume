%----------------------------------------------------------------------------------------
% CLASS OPTIONS AND REQUIRED PACKAGES
%----------------------------------------------------------------------------------------
\usepackage[log-declarations=false]{xparse}
\usepackage{fontspec}

\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\usepackage[hmargin=3.9cm, vmargin=1.4cm]{geometry} % Specifies horizontal and vertical page margins
\usepackage{hyperref} % Required for links
\usepackage{enumitem} % Required for links

%----------------------------------------------------------------------------------------
% PAGE NUMBERS
%----------------------------------------------------------------------------------------

\pagenumbering{gobble}

%----------------------------------------------------------------------------------------
% COLORS
%----------------------------------------------------------------------------------------

\usepackage[usenames,dvipsnames]{xcolor} % Required for custom colors

\definecolor{primary}{HTML}{2b2b2b} % The primary document color for content text
\definecolor{headings}{HTML}{0A369D} % The color of the large sections
\definecolor{black_headings}{HTML}{6A6A6A}
\definecolor{black}{HTML}{000000}
\definecolor{subheadings}{HTML}{333333} % The color of subsections and places worked/studied

%----------------------------------------------------------------------------------------
% FONTS
%----------------------------------------------------------------------------------------

\usepackage{fontspec} % Required for specifying custom fonts in XeLaTeX

\setmainfont[Color=black, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig} % The primary font for content text; defines bold, italic and bold-italic as well

\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight} % The font used where \sfffamily is called

%----------------------------------------------------------------------------------------
% MAIN HEADING COMMAND
%----------------------------------------------------------------------------------------

\newcommand{\namesection}[3] {
  % Name
  \centering {
    \color{black}
    \fontsize{40pt}{40pt}
    \fontspec[Path = fonts/alegreya/]{AlegreyaSC-Regular}\selectfont #1 #2
  }
  \\[10pt] % Whitespace between the name and text below it
  % Contact information
  \centering {
    \color{black}
    \fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{9pt}{9pt}\selectfont #3
  }
  \vspace{15pt}
}
\newcommand{\latoItaFont}[1] {
  \color{black_headings}
  \fontspec[Path = fonts/lato/]{Lato-RegIta}\fontsize{9.5pt}{14pt}\selectfont #1
}
\newcommand{\alegreyaItaFont}[1] {
  \color{black_headings}
  \fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{11pt}{14pt}\selectfont #1
}

%----------------------------------------------------------------------------------------
% SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

\usepackage{titlesec} % Required for customizing section/subsection/etc titles

\titlespacing{\subsection}{0pt}{0pt}{0pt} % Removes the spacing around the subsections
\newcommand{\sectionspace}{\vspace{6pt}} % Defines a command to add a set amount of space after sections and subsections

\newcommand{\ssection}[1] {
  \section* {
    \color{black}
    \scshape
    \fontspec[Path = fonts/alegreya/]{AlegreyaSC-Regular}
    \fontsize{16pt}{24pt}
    \selectfont
    \raggedright
    \centering #1
    \vspace{-3mm}
  }
}

\newcommand{\ssubsection}[2] {
  \color{black}
  \fontspec[Path = fonts/alegreya/]{Alegreya-Regular}
  \fontsize{10pt}{10pt}
  \raggedright
  \selectfont #1:
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{9pt}{9pt}
  \selectfont #2
  \vspace{1mm}
}

\newcommand{\ssubsectionWithoutSpaceAtEnd}[2] {
  \color{black}
  \fontspec[Path = fonts/alegreya/]{Alegreya-Regular}
  \fontsize{10pt}{10pt}
  \raggedright
  \selectfont #1:
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{9pt}{9pt}
  \selectfont #2
  \vspace{0.5mm}
}

\newcommand{\sssubsection}[3] {
  \color{black}
  \fontspec[Path = fonts/alegreya/]{Alegreya-Regular}
  \fontsize{10pt}{10pt}
  \raggedright
  \selectfont #1:
  \fontspec[Path = fonts/lato/]{Lato-LigIta}
  \fontsize{9pt}{9pt}
  \selectfont #2
  \fontspec[Path = fonts/lato/]{Lato-Lig}
  \fontsize{9pt}{9pt}
  \selectfont #3
  \vspace{1mm}
}

\newcommand{\jobSectionHeading}[3] {
  \color{black}
  \fontspec[Path = fonts/alegreya/]{AlegreyaSC-Regular}
  \fontsize{13pt}{13pt}
  \selectfont #1
  \hfill
  \color{subheadings}
  \fontspec[Path = fonts/alegreya/]{AlegreyaSC-Regular}
  \fontsize{10pt}{10pt}
  \raggedright
  \selectfont #2\\
  \vspace{1mm}
  \color{black_headings}
  \fontspec[Path = fonts/lato/]{Lato-LigIta}
  \fontsize{9pt}{9pt}
  \raggedright
  \selectfont #3
  \normalfont
  \color{black}
}

\newcommand{\boldit}[1] {
  \hspace{-3mm}
  \fontspec[Path = fonts/alegreya/]{AlegreyaSC-Regular} {
    \fontsize{10pt}{10pt}
    \selectfont {
      \textcolor{black}{#1}
    }
  }
  \hspace{-2.5mm}
  \normalfont
}

\newcommand{\itit}[1] {
  \hspace{-4mm}
  \fontspec[Path = fonts/lato/]{Lato-LigIta} {
    \fontsize{9pt}{9pt}
    \selectfont {
      \textcolor{black}{#1}
    }
  }
  \hspace{-1mm}
  \normalfont
}

%----------------------------------------------------------------------------------------
% SECTION TITLE STYLING AND SPACING
%----------------------------------------------------------------------------------------

% Defines the tightitemize environment which modifies the itemize environment to be more compact
\newenvironment{tightitemize} {
  \vspace{-\topsep}
  \begin{itemize}[leftmargin=*]\itemsep2pt \parskip2pt \parsep0pt
}{
  \end{itemize}
  \vspace{-\topsep}
}
