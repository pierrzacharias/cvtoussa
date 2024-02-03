%% Adapted from work by Christophe Roger (Darwiin)
\ProvidesClass{cv_style}[]
\LoadClass[a4paper,10pt]{article}
% \DeclareOption{cv}{
%   \RequirePackage[left=1cm,top=1cm,right=1cm,bottom=1cm,nohead,nofoot]{geometry}
% }
% \DeclareOption{letter}{
%   \RequirePackage[left=5.6cm,top=1cm,right=1cm,bottom=1cm,nohead,nofoot]{geometry}
% }

\RequirePackage[utf8]{luainputenc}
%\RequirePackage[latin1]{inputenc}
\RequirePackage{fontspec} 					                 
\RequirePackage[french]{babel}
\RequirePackage{url,parskip} 	    
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{fontawesome}
\RequirePackage{hyperref}\hypersetup{hidelinks}
\RequirePackage{enumitem}
\RequirePackage{longtable} 	
\RequirePackage{etoolbox}
\RequirePackage{tikz}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{xcolor}
\RequirePackage{adjustbox}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage[explicit]{titlesec}
\RequirePackage{pstricks}
\RequirePackage{amssymb}
\RequirePackage{paralist}
\RequirePackage{hyperref}
\RequirePackage{ragged2e}
\RequirePackage{array, adjustbox}
\RequirePackage{xifthen}
\RequirePackage{pifont}

% \hypersetup{
%     pdftitle=CV/Resume \textbar{} Pierre Gauthier,
%     pdfauthor=Pierre Gauthier,
%     pdfsubject=CV/Resume%
%     }
\newcommand{\amount}{5.7in}
\pagenumbering{gobble}
  
% ---------------------------------------------------------------------------- %
%                         COLOR
% ---------------------------------------------------------------------------- %
\definecolor{basecolor}{HTML}{000066}       %BLUE
\colorlet{linkcolor}{basecolor}
\definecolor{darkGrey}{HTML}{989898}
\colorlet{accentcolor}{linkcolor!90}
\colorlet{symbolcolor}{linkcolor!85}
\definecolor{darkgray}{HTML}{434C5e}
\definecolor{gray}{HTML}{2E3440}
\definecolor{lightgray}{HTML}{4C566a}
\definecolor{blue1}{HTML}{5e81ac}
\definecolor{blue2}{HTML}{81a1c1}
\definecolor{blue3}{HTML}{88c0d0}
\definecolor{blue4}{HTML}{8fbcbb}
\definecolor{red}{HTML}{BF616A}
\definecolor{orange}{HTML}{D08770}
\definecolor{green}{HTML}{A3BE8C}
\definecolor{purple}{HTML}{b48ead}
\definecolor{aquamarine}{HTML}{36AF90}
\definecolor{mygray}{gray}{0.95}
\definecolor{lightdark}{gray}{0.55}
\definecolor{dark}{gray}{0.3}
\definecolor{skillbg}{gray}{0.7}
% Setup hyperref package, and colours for links
%\definecolor{linkcolour}{rgb}{0,0.2,0.6}
\hypersetup{breaklinks}

\pagestyle{empty}                         % non-numbered pages
%\font\fb=''[cmr10]''                      % for use with \LaTeX command




\linespread{1.2}

\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\setlength{\parindent}{0mm}

\newcommand{\contactline}[2]{
    \bfseries{#1} & \raleway{#2}
}
% ------------------------------------------------------------------------- %
%                                  FONT
% ------------------------------------------------------------------------- %

\defaultfontfeatures{Ligatures=TeX}
\newfontfamily\bodyfont{FontAwesome.ttf}[Path=fonts/]
\RequirePackage{raleway}                      % Load raleway font
\renewcommand{\familydefault}{\sfdefault}
%\newfontfamily\raleway{Raleway}
% \newfontfamily\ralewaym{Raleway Medium}
% \newfontfamily\ralewaysb{Raleway SemiBold}
% \newfontfamily\ralewayb{Raleway Bold}
% \newfontfamily\ralewayeb{Raleway ExtraBold}
% \newfontfamily\ralewaybb{Raleway Black}
% \setmainfont{Raleway}
% \setlength{\rightcolumnlength}{14.8cm}
% \newlength{\leftcolumn}
% Font Awesome icons 
\newcommand{\mailSymbol}{\faEnvelope}
\newcommand{\mailSymbolO}{\faEnvelopeO} 
\newcommand{\locationSymbol}{\faMapMarker}
\newcommand{\itemsymbol}{\faAngleRight}
\newcommand{\homeSymbol}{\faLink}
\newcommand{\weiboSymbol}{\faWeibo}
\newcommand{\linkedinSymbol}{\faLinkedin}
\newcommand{\mobileSymbol}{\faMobilePhone}
\newcommand{\githubSymbol}{\faGithub}

\newcommand\link[2]{\color{linkcolor}\href{#1}{#2}\color{Black} }
\newcommand\important[1]{\textbf #1}

\newcommand{\socialtext}[2]{\mbox{\textcolor{symbolcolor}{#1}\hspace{0.5em}#2\hspace{1em}}}
\newcommand{\sociallink}[3]{\mbox{\textcolor{symbolcolor}{#1}\hspace{0.5em}\href{#2}{#3}\hspace{1em}}}

\newcommand*{\linkedin}[2]{\sociallink{\linkedinSymbol}{#1}{/in/#2}}
\newcommand*{\github}[2]{\sociallink{\githubSymbol}{#1}{git/#2}}

\newcommand*{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\photo}[2]{\def\@photo{#2}\def\@photodiameter{#1}}
\newcommand*{\email}[1]{\sociallink{\mailSymbol}{mailto:#1}{#1}}
\newcommand*{\emailO}[1]{\sociallink{\mailSymbolO}{mailto:#1}{#1}}
\newcommand*\smartphone[1]{\socialtext{\mobileSymbol}{#1}}    


\newcommand{\textsize}[0]{
    \fontsize{9}{10}\selectfont
}
\newcommand{\mainbartextsize}[0]{
    \fontsize{12}{14}\selectfont
}
\newcommand{\leftsize}{.2}
\newcommand{\rightsize}{.85}

\pagenumbering{gobble}

% ------------------------------------------------------------------------- %
%                                  TOP BAR
% ------------------------------------------------------------------------- %

\newcommand{\topdraw}{
    \begin{tikzpicture}[remember picture,overlay]
      \draw [line width=.4mm,   blue2] (-6.87,-0.076) -- (10,-0.076) {};
    \end{tikzpicture} 
}

\newcommand{\Topbox}[2]{
  % \vspace{1cm}
  \begin{minipage}[t]{\textwidth}
    
    \begin{tikzpicture}[remember picture,overlay]
      %\path[fill=aquamarine] (8.2,0) rectangle node[white] (A) {\Large\raggedright \textbf{#1}} (11.1,.7); 

        \path[fill=aquamarine] (5.9 ,0) rectangle node[white] (A) {}  (8.51,0.7);
        \node (text) at (2.7) {};
        \node (mynode)  [
            %rectangle, 
            %fill=aquamine, 
            left,
            text = white
        ] at (8.51,0.35) {
            \Large \textbf{#1} \\ 
        };


      \draw [line width=.4mm,   aquamarine] (#2,0) -- (8.51,0) {};


    \end{tikzpicture} 
    
  \end{minipage}
}
\newcommand{\topleftsize}{.39}
\newcommand{\toprightsize}{.6}
\newcommand{\topbarleftsize}{.5}
\newcommand{\topbarrightsize}{.5}

% ------------------------------------------------------------------------- %
%                                  SIDEBAR
% ------------------------------------------------------------------------- %

\newcommand{\Infobox}[3]{
  \vspace{1cm}
  \begin{minipage}[l]{.5\textwidth}
    
    \begin{tikzpicture}[remember picture,overlay]
        \path[fill=aquamarine] (#2,-0.35) rectangle node[white] (A) {}  (4.1,0.35);
        \node (text) at (2.7) {};
        \node (mynode)  [
            %rectangle, 
            %fill=aquamine, 
            left,
            text = white
        ] at (4.1,0) {
            \Large \textbf{#1} \\ 
        };
    \ifthenelse{#3=1}{
      \draw [line width=.4mm,   aquamarine] (0,-.33) -- (4.1,-.33) {};
    }{}
    \end{tikzpicture} 
    \vspace{1cm}
    
  \end{minipage}
}

\newcommand{\Infoboxfr}[4]{
  \vspace{1cm}
  \begin{minipage}[l]{.5\textwidth}
    
    \begin{tikzpicture}[remember picture,overlay]
        \path[fill=aquamarine] (1.585,-0.56) rectangle node[white] (A) {}  (4.1,0.685);
        \node (mynode)  [
                %rectangle, 
                %fill=aquamarine, 
                text = white
            ] at (2.85,0) {
            \begin{tabular}{c}
                \Large \textbf{#1} \\ 
                \Large \textbf{#3}
            \end{tabular}};
        % \draw (-2,0) node[left] {mynode}  

      \draw [line width=.4mm,   aquamarine] (-.5,-0.54) -- (4.1,-0.54) {};
    \vspace{-.5cm}\\
    \end{tikzpicture}
    \vspace{1.5cm}
  \end{minipage}
}

% ------------------------------------------------------------------------- %
%                                  SECTIOn
% ------------------------------------------------------------------------- %
\titleformat{\section}{\Large\raggedright}{}{0em}{}[\titlerule]
% \titlespacing{\section}{0pt}{2pt}{2pt}
\titlespacing*{\section}{0pt}{4pt}{10pt}
\renewcommand{\thesection}{\twodigits{\arabic{section}}.}
% \titleformat{\section}
% [hang]
% {\bfseries\Large\color{dark}}
% {}
% {.5em}
% {}
% [{\titlerule[0.8pt]}]


\newcommand{\titleboxbis}[3]{
  \vspace{.5cm}
    \begin{tikzpicture}[remember picture,overlay]
        %\draw [line width=.4mm,   blue2] (0,0) -- (\textwidth,0) {};

    \path[fill=blue2] (0,0) rectangle node[white] (A) {}  (#2,0.7);
    \node (mynode)  [
        right,
        %%rectangle, 
        %%fill=aquamarine, 
        text = white
    ] at (-0.01,0.35) {
    \Large \textbf{#1}
    };
      \draw [line width=.4mm,   blue2] (0,0.02) -- (#3, 0.02) {};
  \end{tikzpicture} 
  \vspace{.5cm}

}

\newcommand{\titlebox}[3]{
  \vspace{.5cm}
    \begin{tikzpicture}[remember picture,overlay]
        %\draw [line width=.4mm,   blue2] (0,0) -- (\textwidth,0) {};

    \path[fill=blue2] (0,0) rectangle node[white] (A) {}  (#2,0.7);
    \node (mynode)  [
        right,
        %%rectangle, 
        %%fill=aquamarine, 
        text = white
    ] at (-0.01,0.40) {
    \Large \textbf{#1}
    };
      \draw [line width=.4mm,   blue2] (0,0.02) -- (#3, 0.02) {};
  \end{tikzpicture} 
  \vspace{.5cm}

}

\newcommand{\sectionTitle}[2]{
  \begin{minipage}{\textwidth}
    \vspace{1cm}
    \vspace{-2\parskip}
    \section{\texorpdfstring{\addfontfeature{Color=black}#2
    \enspace #1}{#1}}
  \end{minipage}
}

\newcommand{\InfoTitle[1]}{
  \vspace{0.5cm}
  {
    \addfontfeature{Color=aquamarine}
    \section{\texorpdfstring{
    \enspace \hfill #1{\hspace{0.3cm}} }{\hfill #1 {\hspace{0.3cm}}}}
  }
}

% ------------------------------------------------------------------------- %
%                                  SKILL
% ------------------------------------------------------------------------- %


\newenvironment{skillenv}
  {
    \begin{tabular*}{\textwidth}{l{0.4cm} > @{\extracolsep{\fill}}l}
    &
    \begin{minipage}[t]{.8\textwidth}
    \small 
  }
  {
    \end{minipage} \\
    \end{tabular*}
  }
\newcommand{\rightchevrontilde}{
\begin{tikzpicture}[line,rotate=-90, line width=.2mm, aquamarine]
  \draw (0,0) -- (.11,.1) (.1,.1) -- (.2,0);
  %\useasboundingbox (0,1.5);
\end{tikzpicture}  
}
\newcommand{\rightchevron}{
\begin{tikzpicture}[line,rotate=-90, line width=.2mm, blue2]
  \draw (0,0) -- (.11,.1) (.1,.1) -- (.2,0);
  %\useasboundingbox (0,1.5);
\end{tikzpicture}  
}

\newcommand{\skilltitlefr}[2]{
  % \vspace{.2cm} 
    \large{
      \color{aquamarine}
      
      \bfseries{#1}\\
      \vspace{#2 cm}\\
  }
      \vspace{-0.8cm}\\
      }
}
\newcommand{\skilltitle}[1]{
  % \vspace{.2cm} 
    \large{
      \color{aquamarine}
      
      \bfseries{#1}{\hspace{0.0cm}:}
      }
      \vspace{.5cm}\\
}

\newcommand{\skilllist}[1]{
  \small
\begin{tabular}{{0.05cm}l > {\arraybackslash}{\textwidth}l}
  #1
\end{tabular}

}

\newcommand{\skilllevel}[3]{
  \small
\begin{tabular}{p{-.1cm}p{2.5cm}l}
  \ifthenelse{\isempty{#1}}{}{ & \hspace{-.01cm}\rightchevron\hspace{.1cm}  \bfseries{\color{blue2} Proficient} & #1 \\}
  \ifthenelse{\isempty{#2}}{}{ & \hspace{-.01cm}\rightchevron\hspace{.1cm}  \bfseries{\color{blue2} Familiar} & #2 \\}
  \ifthenelse{\isempty{#3}}{}{ & \hspace{-.01cm}\rightchevron\hspace{.1cm}  \bfseries{\color{blue2} Knowledge} & #3 \\}
\end{tabular}
}

\newcommand{\skilllevelfr}[3]{
  \small
\begin{tabular}{p{-.1cm}p{2.5cm}l}

  \ifthenelse{\isempty{#1}}{}{ & \hspace{-.01cm}\rightchevron\hspace{.1cm}  \bfseries{\color{blue2} Maîtrise} & #1 \\}
  \ifthenelse{\isempty{#2}}{}{ & \hspace{-.01cm}\rightchevron\hspace{.1cm}  \bfseries{\color{blue2} Familier} & #2 \\}
  \ifthenelse{\isempty{#3}}{}{ & \hspace{-.01cm}\rightchevron\hspace{.1cm}  \bfseries{\color{blue2} Notions} & #3 \\}

\end{tabular}
}

% ------------------------------------------------------------------------- %
%                                  EDUCATION
% ------------------------------------------------------------------------- %
\newcommand{\prettyindent}[2]{
  
    \ifthenelse{
      \isempty{#2}}
      {
        \begin{tikzpicture}[
        % remember picture,
        overlay]
          \path[fill=blue2] (0,-0.02) rectangle ++(0.1,.3);
          \node[text width=10cm, anchor=east, right] at (.08,.12)
          {\normalsize\textbf{\color{blue2}#1}}; 
        \end{tikzpicture}
        \vspace{0cm}\\
      }
      {
        \begin{tikzpicture}[
        % remember picture,
        overlay]
          \path[fill=blue2] (0,-0.47) rectangle ++(0.1,.75);
          \node[text width=10cm, anchor=west, right] at (.1,-.15)
          {\normalsize\textbf{\color{blue2}#1}};
      \end{tikzpicture}
      \vspace{.5cm}\\
      }
}
\newcommand{\prettyindentfr}[1]{
    \begin{tikzpicture}[overlay]
		\path[fill=blue2] (0, 0) rectangle ++(0.1,.3);
		\node[text width=10cm, anchor=east, right] at (.08,.12)
		{\normalsize\textbf{\color{blue2}#1}}; 
    \end{tikzpicture}
\vspace{0cm}\\
}
\newenvironment{liste}{
    \begin{tabular*}{\textwidth}{l{0.5cm} > @{\extracolsep{\fill}}l}
  }{%
    \end{tabular*}
}
\newcommand{\educationentry}[5]{
  \vspace{.2cm}
  \small
  \textsc{#1} & 
  \begin{minipage}[t]{.8\textwidth}
    \small
    {
      \prettyindent{#2}{#3}
    } 
    #4 \\
    {\addfontfeature{Color=aquamarine} #5}\\
  \end{minipage} \\
}
\newcommand{\educationentryfr}[4]{
  \vspace{.2cm}
  \small
  \textsc{#1} & 
  \begin{minipage}[t]{.8\textwidth}
    \small
    {
      \prettyindentfr{#2}
    } 
    #3 \\
		{\addfontfeature{Color=aquamarine} \textbf{#4}}\\
  \end{minipage} \\
}
% ------------------------------------------------------------------------- %
%                                  EXPERIENCE
% ------------------------------------------------------------------------- %

\newcommand{\prettyindentcompany}[3]{
  
        \begin{tikzpicture}[overlay]
          \path[fill=blue2] (0,-0.47) rectangle ++(0.1,.76);
          \node[text width=11.44cm, anchor=west, right] at (.1,-.1)
          {\normalsize\textbf{#1}}; 
          % \node[text width=10cm, anchor=west, right] at (7.35,-0.4)
          \node[text width=11.44cm, anchor=west, right] at (0,-0.35)
          {
            \begin{minipage}{\textwidth}
							\hfill {\addfontfeature{Color=aquamarine} \textbf{#3}}
            \end{minipage} 
          }; 
      \end{tikzpicture} \\
      \vspace{.5cm}\\
      % }
}
\newcommand{\cventry}[8]{
	\small
\textsc{#1} & 
\hspace{-6.68cm}
\begin{minipage}[t]{.8\textwidth}
	\small
	{\prettyindentcompany{{\color{blue2} #2} \\ \textbf{\addfontfeature{Color=aquamarine}#3}}{2}{#4}} 
\end{minipage} \\
	% \vspace{-0.9cm}\\
	% {\textbf{\addfontfeature{Color=blue2}#3}}\\}
{\small #5}
	\vspace{-0.4cm}\\
	#6
	%Utilized\hspace{0cm}:
	{\textbf{\color{aquamarine}#7}\hspace{.2cm} #8} \\
	% \vspace{0.1cm}\\
}


\newcommand{\frcventrycurrent}[8]{
    \begin{tabular*}{\textwidth}{ll}
        \small

				\begin{tikzpicture}[overlay]
					\node[text width=10cm, anchor=west, right] at (-.11, -0.36)
					{\small\textsc{#1}}; 
					\node[text width=10cm, anchor=west, right] at (-.11, -.84)
					{\small\textsc{#2}}; 
				\end{tikzpicture} \\

				& 
        \hspace{1.5cm}

        \begin{minipage}[t]{\textwidth}
            \small
            {\prettyindentcompany{{\color{blue2} #3} \\ \textbf{\addfontfeature{Color=aquamarine}#4}}{2}{#5}} 
        \end{minipage} \\
    \end{tabular*}

    \begin{tabular*}{\textwidth}{ll}
				\\
			&
				\hspace{-0.50cm}
				\begin{minipage}[t]{13.50cm}
						\vspace{-1.4cm}\\
							\small
						#6
						\\
						\vspace{-0.3cm}\\
						{\textbf{\color{aquamarine}#7}\hspace{.2cm} #8} \\
				\end{minipage} \\
    \end{tabular*}
}
\newcommand{\frcventry}[7]{
    \begin{tabular*}{\textwidth}{ll}
        \small
        \textsc{#1} & 
        % \hspace{0.082cm}
        \hspace{0.10cm}
        \begin{minipage}[t]{\textwidth}
            \small
            {\prettyindentcompany{{\color{blue2} #2} \\ \textbf{\addfontfeature{Color=aquamarine}#3}}{2}{#4}} 
        \end{minipage} \\
    \end{tabular*}

    \begin{tabular*}{\textwidth}{ll}
				\\
			&
				\hspace{-0.5cm}
				\begin{minipage}[t]{13.50cm}
						\vspace{-1.4cm}\\
						\small
						#5
						\\
						\vspace{-0.3cm}\\
						{\textbf{\color{aquamarine}#6}\hspace{.2cm} #7} \\
				\end{minipage} \\
			% \vspace{0.1cm}\\
		\end{tabular*}
}

\newcommand{\difffrcventry}[7]{
    \begin{tabular*}{\textwidth}{l{0.5cm} > @{\extracolsep{\fill}}l}
        \small
        \textsc{#1} & 
        \hspace{0.165cm}
        \begin{minipage}[t]{.8\textwidth}
            \small
            {\prettyindentcompany{{\color{blue2} #2} \\ \textbf{\addfontfeature{Color=aquamarine}#3}}{2}{#4}} 
        % \vspace{-0.9cm}\\
            % {\textbf{\addfontfeature{Color=blue2}#3}}\\}
        \end{minipage} \\
    \end{tabular*}
    \begin{minipage}[t]{.95\textwidth}
        \vspace{-0.4cm}\\
        #5
        \\
        \vspace{-0.2cm}\\
        {\textbf{\color{aquamarine}#6}\hspace{.2cm} #7} \\
    \end{minipage} \\
    % \vspace{0.1cm}\\
}

% ------------------------------------------------------------------------- %
%                                  PROJECT
% ------------------------------------------------------------------------- %
\newenvironment{projects}
{\begin{tabular*}{l}}
  {\end{tabular*}}



\newcommand{\cvproject}[6]{
	{\normalsize \color{blue2}\textbf{#1}} \hfill {\addfontfeature{Color=aquamarine}\hfill  \textbf{#2}}\\
    \vspace{-0.45cm}\\
		% \small
		#3 
    \vspace{-0.4cm}\\
    \ifthenelse{\isempty{#4}}{
        \vspace{-0.55cm}\\
        }{
    % \small
        \\
        #4 \\
    }
    \vspace{-0.4cm}\\
    %Utilized\hspace{0cm}:
    {\textbf{\color{aquamarine}#5}\hspace{.2cm} #6} \\
    \vspace{0.2cm}\\
  }


% ------------------------------------------------------------------------- %
%                                  LETTER
% ------------------------------------------------------------------------- %


\newcommand{\lineheader}[1]{
  \begin{tikzpicture}[remember picture,overlay]
    % \node[text width=10cm, anchor=west, right] at (5,0) {\Large\textbf{#1}};  
    %\draw [line width=.2mm,   blue2](0.1,-1.4) -- (10.1,-1.4) {};
    \node[text width=10cm, anchor=west, right] at (0,-2) {#1};  
  \end{tikzpicture} 
}

\newcommand{\letterheader}[4]{

  \begin{minipage}[t]{\textwidth}
  % \begin{center}      
    \lineheader{
      %\begin{tabular}{l}
          {\large\textbf{#1}} \vspace{.1cm}\\
          #4 \\
          #2 \\
          #3 \\
        \vspace{.1cm} \\
      %\end{tabular}  
    }
  % \end{center}
  \end{minipage}
}

% ------------------------------------------------------------------------- %
%                                  INVISIBLE
% ------------------------------------------------------------------------- %
% Such text is not visible, only present in the document for index tools

\newcommand{\invisible}[1]{
    \textcolor{white}{#1}
}
