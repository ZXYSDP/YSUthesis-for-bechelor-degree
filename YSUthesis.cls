%% This is file `YSUthesis.cls',
%% for XeLaTeX
%%
%% Copyright 2010-2011
%% jasonryan@163.com and any individual authors listed elsewhere in this file.
%%
%% This file was generated from file(s) of the YSUthesis package project.
%% ----------------------------------------------------------------------
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% This file may only be distributed together with a copy of original
%% source files. You may however distribute original source files
%% without such generated files. Copying of this file is authorized
%% only if either:
%% (1) you make absolutely no changes to your copy, including name; OR
%% (2) if you do make changes, you first rename it to some other name.
%%
%% To produce the documentation run the original source files ending
%% with `.dtx' through LaTeX.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{YSUthesis}
  [2012/3/17 v0.3.3 YSUthesis
   document class]

%% 加载各种宏包
%%=====================================%%
\newif\ifCAST@typeinfo \CAST@typeinfofalse
\DeclareOption{showtypeinfo}{\CAST@typeinfotrue}
\newif\ifCAST@dvips \CAST@dvipsfalse
\DeclareOption{dvips}{\CAST@dvipstrue}
\DeclareOption{dvipdfm}{\CAST@dvipsfalse}
\DeclareOption{pdftex}{\CAST@dvipsfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
\LoadClass[a4paper]{ctexbook}[2005/11/25]
\RequirePackage{fancyhdr}
%\RequirePackage{fntef}
%% check pdfTeX mode
\RequirePackage{ifpdf,ifxetex}
%% math packages
\RequirePackage{amsmath,amsthm,amsfonts,amssymb}
%% 图形宏包 graphics packages
\RequirePackage{graphicx}
\RequirePackage{subfigure}
%% 引用宏包 sort and compress citations
\RequirePackage[sort&compress]{gbt7714}
%% 页面设置宏包 geometry
\RequirePackage[top=3cm,bottom=3cm,left=2.8cm,right=2.8cm,%  bottom=3cm,left=3cm,right=3cm, % mzhy55
                headheight=5mm,headsep=0mm,footskip=5mm,dvipdfm]{geometry}
%% 行间距宏包 setspace
\RequirePackage{setspace}
%% 各种表格宏包
\RequirePackage{tabularx}
\RequirePackage{longtable}
\RequirePackage{booktabs}
%% 表题图题宏包
\RequirePackage[%labelsep=space,%quad  mzhy55
                    font=small,%normalsize  mzhy55
                   width=0.9\textwidth,%
           tableposition=top,%
           justification=centerlast,%
          figureposition=bottom]{caption}
\DeclareCaptionLabelSeparator{colon}{~~}%%%%解决图表中图序与内容间的间隔mzhy55图序与图题间距！！！  mzhy55
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%mzhy55 中英文图题
\newcommand{\FigureBiCaption}[2]
{\vspace{-0.5em}
%\bicaption{}{#1}{Figure}{#2}
\renewcommand{\figurename}{图}
\caption{#1}
\addtocounter{figure}{-1}
\renewcommand{\figurename}{Fig.}
\vspace{-1.5ex}
\caption{#2}
}
\newcommand{\SubfigureCaption}[2]  % Two Parameters, the first one is the width of the subfigure,
{
\addtocounter{subfigure}{-1}       % the second one is the caption of the subfigure
\vspace{-2ex}
\subfigure[#2]{\rule{#1}{0pt}}
}

\newcommand{\TableBiCaption}[2]
{\vspace{0.8ex}
\renewcommand{\tablename}{表}
\caption{#1}\vspace{-0.3em}

\addtocounter{table}{-1}
\renewcommand{\tablename}{Table}
\vspace{-1.5ex}
\caption{#2}
\vspace{-1.5ex}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%mzhy55 中英文图题
%% 数学字体宏包
\RequirePackage{unicode-math}
%% 正体希腊字符宏包 upgreek
\RequirePackage[Symbol]{upgreek}
%% 色彩宏包 color
\RequirePackage[usenames]{xcolor}
%% 程序代码样式宏包 listings
\RequirePackage{listings}
%% 索引宏包
\RequirePackage{makeidx}
%% 输入各种 TeX names
\RequirePackage{xltxtra}
\RequirePackage{mflogo,texnames}
%% 科学计数与单位
\RequirePackage{siunitx}
%% packages and settings depend on PDF mode
\ifxetex
  \RequirePackage[xetex]{hyperref}
  \DeclareGraphicsExtensions{.pdf,.png,.jpg}
\else
  \ifpdf   % We're running pdfTeX in PDF mode
    \RequirePackage[pdftex]{hyperref}
    \DeclareGraphicsExtensions{.pdf,.png,.jpg}
  \else    % We're not running pdfTeX, or running pdfTeX in DVI mode
    \ifCAST@dvips
      \RequirePackage[dvips]{hyperref}
      \RequirePackage{psfrag}
      \AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}} % GBK -> Unicode
    \else
      \RequirePackage[dvipdfm]{hyperref}
    \fi
    \DeclareGraphicsExtensions{.eps,.ps}
  \fi
\fi
\hypersetup{CJKbookmarks,%
       bookmarksnumbered,%
              colorlinks,%
               linkcolor=black,%
               citecolor=black,%
              plainpages=false,%
            pdfstartview=FitH}
\AtEndOfPackage{\makeatletter\input{YSUthesis.cfg}\makeatother}

%% 定义命令与环境
%%=====================================%%

% 正文字体设置
\setmainfont{Times New Roman}
%\setCJKmainfont[BoldFont={Adobe Heiti Std}, ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSong}
%%%%%上面一行是解决pdf文件复制乱码问题！！！下面是另外两种办法，共三种办法！！！
%\usepackage{ccmap}删掉前边的注释！为了解决论文查重，PDF文件复制出现乱码问题，请去掉这行前面的注释，编译完成后，使用Adobe Acrobat 删掉论文前面多余的两页即可！！！不知道是什么原因，但是这样可以解决问题，有待大家找到更好的解决办法！！！这种方法在编译过程中会终止，需要回车一下！！！mzhy55。
%为了解决论文查重，PDF文件复制出现乱码问题，请去掉这行前面的注释，编译完成后，使用Adobe Acrobat 删掉论文前面多余的两页即可！！！不知道是什么原因，但是这样可以解决问题，有待大家找到更好的解决办法！！！mzhy55

% 中文空白间距
\newcommand\CASTspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}

% 浮动对象与文本间距
\setlength{\intextsep}{8pt plus 2pt minus 3pt}
\setlength{\textfloatsep}{10pt plus 2pt minus 2pt}

% 段间距   % mzhy55 正文段前后距离
\parskip 0pt plus 0.25ex minus 0.25ex

% 行间距
\linespread{1.4}

%% 偶数页留白 cleardoublepage （学校不允许留白）
%\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
%  \thispagestyle{empty}%
%  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

% 浮动对象页面比例
\renewcommand{\floatpagefraction}{0.80}

% 参考文献文献格式 ysubst
\bibliographystyle{gbt7714-numerical}
%\renewcommand\@biblabel[1]{{[#1]}}

% 引用上标
\newcommand{\supercite}[1]{\textsuperscript{\cite{#1}}}

% 获取 latex 版本信息
\def\CAST@getfileinfo#1 #2 #3\relax#4\relax{%
  \def\CASTfiledate{#1}%
  \def\CASTfileversion{#2}%
  \def\CASTfileinfo{#3}}%
\expandafter\ifx\csname ver@YSUthesis.cls\endcsname\relax
  \edef\reserved@a{\csname ver@ctextemp_YSUthesis.cls\endcsname}
\else
  \edef\reserved@a{\csname ver@YSUthesis.cls\endcsname}
\fi
\expandafter\CAST@getfileinfo\reserved@a\relax? ? \relax\relax

% 定义下划线
\def\CAST@underline[#1]#2{%
  \CTEXunderline{\hbox to #1{\hfill#2\hfill}}}
\def\CASTunderline{\@ifnextchar[\CAST@underline\CTEXunderline}

% 定义中文封面新命令
\newcommand\classification[1]   {\def\CAST@value@classification{#1}}
\newcommand\UDC[1]              {\def\CAST@value@UDC{#1}}
\newcommand\degree[1]           {\def\CAST@value@degree{#1}}
\renewcommand\title[2][\CAST@value@title]{%
                                 \def\CAST@value@title{#2}
                                 \def\CAST@value@titlemark{\MakeUppercase{#1}}}
\renewcommand\author[1]         {\def\CAST@value@author{#1}}
\newcommand\advisor[1]          {\def\CAST@value@advisor{#1}}
\newcommand\major[1]            {\def\CAST@value@major{#1}}
\newcommand\institute[1]        {\def\CAST@value@institute{#1}}
\newcommand\school[1]           {\def\CAST@value@school{#1}}
\newcommand\confidential[1]     {\def\CAST@value@confidential{#1}}
\newcommand\serialnumber[1]     {\def\CAST@value@serialnumber{#1}}
\newcommand\advisorinstitute[1] {\def\CAST@value@advisorinstitute{#1}}
\newcommand\submitdate[1]       {\def\CAST@value@submitdate{#1}}
\newcommand\defenddate[1]       {\def\CAST@value@defenddate{#1}}
\newcommand\chairman[1]         {\def\CAST@value@chairman{#1}}

%\newcommand\makecover{%
%  \cleardoublepage
%  \thispagestyle{empty}
%  \begin{center}
%    \includegraphics[width=9.5cm]{ysulogo}\\
%    \vspace*{1.5cm}
%    {\zihao{-0}\ziju{0.5}\heiti{博士毕业设计（论文）}}\\
%    \vspace*{0.5cm}
%    {\zihao{-2} DOCTORAL DISSERTATION}\\
%    \vspace*{3cm}
%    \begin{tabular}{p{3cm}p{9cm}}
%      \zihao{-2}{\heiti 论文题目} & \zihao{-2}{\kaishu\CAST@value@title}
%    \end{tabular}
%    \vfill
%    \renewcommand{\arraystretch}{2}
%    \begin{tabular}{p{3cm}p{9cm}}
%      \zihao{-2}{\heiti 作者姓名} & \zihao{-2}{\kaishu\CAST@value@author} \\
%      \zihao{-2}{\heiti 学科专业} & \zihao{-2}{\kaishu\CAST@value@major}  \\
%      \zihao{-2}{\heiti 指导教师} & \zihao{-2}{\kaishu\CAST@value@advisor}
%    \end{tabular}\\
%    \vspace*{2cm}
%    \zihao{-2}\songti\textbf{2018年5月}%\textbf{ \the\year 年 \the\month 月}
%  \end{center}
%  \clearpage
%  \if@twoside
%    \thispagestyle{empty}
%    \noindent
%    \ifCAST@typeinfo
%      \begin{center}
%      {\zihao{3}\heiti 燕山大学博士毕业设计（论文）~\XeLaTeX{}~模板~\CASTfileversion{}使用说明}
%      \vskip \baselineskip
%      \end{center}
%      \noindent{\heiti 编译信息：}
%
%      编译日期：\today
%
%      模板信息： \texttt{YSUthesis} \CASTfileversion{} (\XeLaTeX{}).
%      %\vskip \baselineskip
%
%      \noindent{\heiti 更新：}
%
%        加入unicode-math宏包
%
%        去掉bm宏包
%
%      %\vskip \baselineskip
%
%      \noindent{\heiti 致谢：}
%
%本模板是在中科院毕业设计（论文）~\LaTeXe~模板
%~\footnote{\url{http://www.ctex.org/PackageCASthesis}}\texttt
%{CASthesis}~v0.2~的基础之上修改而来，在此对原作者吴凌云表示感谢！
%
%参考文献格式是在CTeX论坛
%~\footnote{\url{http://bbs.ctex.org/viewthread.php?tid=33591}} movier 制作的
%~GBT7714-2005.bst 文件基础之上修改得到的，向原作者表示感谢！
%      %\noindent{\heiti 反馈：}
%
%%反馈意见请发送邮件至：\url{jasonryan@163.com}
%%
%%更新通知请关注新浪微博：\url{http://weibo.com/ysuthesis}
%%
%%或者：\url{https://ysuthesis.googlecode.com/}
%
%非常感谢燕山大学理学院物理专业硕士毕业的尹国冰同学。我们在他所做的模板基础上做
%了一些修改，修改地方已在文档中注释过，比如目录对齐，页码格式，参考文献的部分格
%式等。非常感谢！
%
%\noindent{\heiti YSUthesis 模板使用说明}
%
%该模板是在CTeX 2.9.2.164下运行成功，主要编译顺序为：XeLaTeX > BibTeX > XeLaTeX
%> XeLaTeX，这样可以生成正确的参考文献和交叉引用链接！具体操作过程详见模板示
%例。如果有的同学编译不通过，可能是下列原因：
%
%(1) 如果有的计算机不能编译通过，原因可能是操作系统缺少某些字体（本文件夹内的三
%个AdobeSongStd，AdobeHeitiStd，AdobeKaitiStd），将它们复制到C:>WINDOWS>Fonts即
%可，我们已经测试成功过五台计算机！这是计算机操作系统缺少字体问题，并非模版问
%题。
%
%(2) 如果完成上面的操作(1)后，还是不能顺利编译通过，可能还缺少其它字体，请查看
%编译错误提示，下载并安装字体即可。
%
%再次感谢尹国冰同学，制作的YSUthesis.cls宏文件，我们在此基础上做了一些修改，为
%我们硕士研究生顺利完成毕业论文提供了极大的帮助。
%      \begin{center}
%        （去掉主文档template.tex中的参数showtypeinfo即可隐藏本页内容。）
%      \end{center}
%    \fi
%    \cleardoublepage
%  \fi
%}
% 重新定义 maketitle
\renewcommand\maketitle{%
  \cleardoublepage
  \thispagestyle{empty}
  %{
  %\songti\zihao{-4}
  %\begin{tabular}{p{10cm}p{6cm}}%%%mzhy55
  %  \hspace{-2em}\CAST@label@classification~\CAST@value@classification & 学校代码：10216 \\ %%%mzhy55
  %  \hspace{-2em}\CAST@label@UDC~\CAST@value@UDC                       & 密级：公开
  %\end{tabular}
  %}
  \begin{center}
    \vspace*{2cm}
      {\songti\zihao{-2}\textbf{\CAST@value@degree \CAST@label@thesis}} \\
    \vspace*{2cm}
    \begin{spacing}{2.5}
      {\heiti\zihao{2}\CAST@value@title}
    \end{spacing}
    \vskip \stretch{1}

    \songti\zihao{4}
    \def\arraystretch{1.15}%%%mzhy55%%%{1.3}
    \setlength\tabcolsep{1pt}
    \begin{tabular}{p{4cm}p{5cm}}
      \heiti\begin{CJKfilltwosides}{3.8cm}\CAST@label@institute\end{CJKfilltwosides} & \CAST@value@institute       \\
      \heiti\begin{CJKfilltwosides}{3.8cm}\CAST@label@major\end{CJKfilltwosides}     & \CAST@value@major           \\
      \heiti\begin{CJKfilltwosides}{3.8cm}\CAST@label@author\end{CJKfilltwosides}    & \CAST@value@author          \\
      \heiti\begin{CJKfilltwosides}{3.8cm}\CAST@label@school\end{CJKfilltwosides}    & \CAST@value@school          \\
      \heiti\begin{CJKfilltwosides}{3.8cm}\CAST@label@advisor\end{CJKfilltwosides}   & \CAST@value@advisor         \\
      %\heiti\begin{CJKfilltwosides}{3.8cm}\CAST@label@degree\end{CJKfilltwosides}    & \CAST@value@degree          \\
      \heiti\begin{CJKfilltwosides}{3.8cm}\CAST@label@defenddate\end{CJKfilltwosides} & \CAST@value@defenddate     \\
    \end{tabular}
  \end{center}
  \vspace*{1cm}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
  \fi
}
% 以下是英文封面对应的命令
\newcommand\enclassification[1]   {\def\CAST@value@enclassification{#1}}
\newcommand\enUDC[1]              {\def\CAST@value@enUDC{#1}}
\newcommand\englishdegree[1]      {\def\CAST@value@englishdegree{#1}}
\newcommand\entitle[1]            {\def\CAST@value@entitle{#1}}
\newcommand\enauthor[1]           {\def\CAST@value@enauthor{#1}}
\newcommand\enadvisor[1]          {\def\CAST@value@enadvisor{#1}}
\newcommand\enmajor[1]            {\def\CAST@value@enmajor{#1}}
\newcommand\eninstitute[1]        {\def\CAST@value@eninstitute{#1}}
\newcommand\enschool[1]           {\def\CAST@value@enschool{#1}}
\newcommand\enstatement[1]        {\def\CAST@value@enstatement{#1}}
\newcommand\enathdate[1]          {\def\CAST@value@enathdate{#1}}

\newcommand\makeenglishtitle{%
  \cleardoublepage
  \thispagestyle{empty}
  \noindent\zihao{4}
    \CAST@label@enstatement\CAST@value@enstatement\\
  \vspace*{32.4pt}
  \begin{center}
    \zihao{-2}\textbf{\MakeUppercase{\CAST@value@entitle}}%%%%mzhy55
    \vskip \stretch{1}

    \zihao{4}
    by \CAST@value@enauthor\\
    \vspace*{1.6cm}
    \CAST@label@enadvisor\CAST@value@enadvisor\\
    \vspace*{5cm}
    \textbf{\CAST@value@enschool}\\
    \vspace*{1cm}
    \CAST@value@enathdate
  \end{center}
  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}
\newcommand\makelicense{%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    {\heiti\zihao{-2} 燕山大学博士毕业设计（论文）原创性声明}
  \end{center}
  \zihao{-4}

本人郑重声明：此处所提交的博士毕业设计（论文）《\CAST@value@title》，是本人在导师指导
下，在燕山大学攻读博士学位期间独立进行研究工作所取得的成果。论文中除已注明部分
外不包含他人已发表或撰写过的研究成果。对本文的研究工作做出重要贡献的个人和集
体，均已在文中以明确方式注明。本声明的法律结果将完全由本人承担。
  \vskip 1em
  \begin{tabular}{p{2cm}p{4cm}p{2cm}p{1cm}p{1cm}p{1cm}}
   & 作者签字：& 日期：& 年 & 月 & 日
  \end{tabular}
  \vskip 4em
  \begin{center}
    {\heiti\zihao{-2} 燕山大学博士毕业设计（论文）使用授权书}
  \end{center}
  \zihao{-4}

《\CAST@value@title》系本人在燕山大学攻读博士学位期间在导师指导下完成的博士学
位论文。本论文的研究成果归燕山大学所有，本论文的研究内容不得以其它单位的名义发
表。本人完全了解燕山大学关于保存、使用毕业设计（论文）的规定，同意学校保留并向有关部门
送交论文的复印件和电子版本，允许论文被查阅和借阅。本人授权燕山大学，可以采用影
印、缩印或其它复制手段保存论文，可以公布论文的全部或部分内容。
  \vskip 1em
  \begin{tabular}{ll}
                   &保密 $\Box$，在 \CASTspace 年解密后适用本协议书。\\
   本毕业设计（论文）属于  &                                              \\
                   &不保密 $\Box$。
  \end{tabular}

  （请在以上对应方框内打“ $\checkmark$”）
  \vskip 2em
  \begin{tabular}{p{2cm}p{4cm}p{2cm}p{1cm}p{1cm}p{1cm}}
   & 作者签名：& 日期：& 年 & 月 & 日 \\
                    &                 \\
   & 导师签名：& 日期：& 年 & 月 & 日
  \end{tabular}

  \clearpage
  \if@twoside
    \thispagestyle{empty}
    \cleardoublepage
  \fi
}

% 页眉与页脚的设置

%%\fancypagestyle{plain}{%
%  \fancyhf{}%
%  \renewcommand{\headrulewidth}{0pt}%
 % \renewcommand{\footrulewidth}{0pt}%
%  \renewcommand{\headrule}{}
%\fancyhead[CE]{{\zihao{5} 燕山大学\CAST@value@degree 毕业设计（论文）}}
%\fancyhead[CO]{\zihao{5} 参考文献}
%\fancyfoot[C]{{\zihao{-5} -~\thepage~-}}
%}
%\pagestyle{fancy}%%%%% 页眉 mzhy55
%\fancyhf{}
%\fancyhead[CE]{{\zihao{5} 燕山大学\CAST@value@degree 毕业设计（论文）}}
%\fancyhead[CO]{{\zihao{5} 参考文献}}
%\fancyfoot[C]{{\zihao{-5} -~\thepage~-}}

% 定义页眉线绘制命令，这里为等宽双线
\renewcommand{\headrule}{
  \makebox[0pt][l]{\rule[0.6\baselineskip]{\headwidth}{0.5pt}}%
  \rule[0.7\baselineskip]{\headwidth}{1.5pt}}


% 重新定义环境 摘要 abstract
\newenvironment{abstract}
  {\Nchapter{\CAST@label@abstract}}

% 重新定义环境 关键词 keyword
\newenvironment{keywords}
  {\hangafter1\hangindent10ex\vspace{\baselineskip}\noindent{\heiti \CAST@label@keywords}\songti}

% 英文 摘要
\newenvironment{englishabstract}
  {\Nchapter{\CAST@label@englishabstract}}

% 英文 关键词
\newenvironment{englishkeywords}
  {\hangafter1\hangindent11ex\vspace{\baselineskip}\noindent{\textbf{\CAST@label@englishkeywords}}}

% 章节标题的格式设置
%\CTEXsetup[number={\arabic{chapter}},name={第~,~章}]{chapter}
%\ctexset{chapter={name={第,章}},number=\chinese{chapter},}
\ctexset { chapter = { number={\arabic {chapter}},name={第~,~章} } }
\renewcommand{\chaptermark}[1]{\markboth{第~\thechapter~章\hspace{0.5em}#1}{}} % 缩小页眉上章序号与章标题间距
% 重新定义命令 目录
\renewcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname}%
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }

% 去掉目录标题间的空格
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}

% 新命令 Nchapter
\newcommand\Nchapter[1]{%
  \if@mainmatter%
    \@mainmatterfalse%
    \chapter{#1}%
    \@mainmattertrue%
  \else
    \chapter{#1}%
  \fi}

% 重新定义 图题编号的格式
\renewcommand\thefigure{\arabic{chapter}-\arabic{figure}}

% 重新定义 表格编号的格式
\renewcommand\thetable{\arabic{chapter}-\arabic{table}}

% 重新定义 公式编号格式
\renewcommand\theequation{\arabic{chapter}-\arabic{equation}}

% 定义命令 目录点线
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th\mkern 1.5mu.\mkern 1.5mu$}\hfill%%%%%%%%\cdot mzhy55
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}

% 目录中 part 的格式
\renewcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large %\bfseries #1
       \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
       \hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}

% 目录中 chapter 的格式
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    %\vskip 1.5em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \heiti
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak
      \leaders\hbox{$\m@th\mkern 1.5mu\cdot\mkern 1.5mu$}
      \hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

% 重新定义环境 thebibliography
\renewenvironment{thebibliography}[1]
     {\Nchapter{\bibname}%
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \itemsep -0.4em \topsep\z@\partopsep\z@\parskip\z@ %mzhy55修正参考文献间距  \z@用0.4em换，解决段前后距离  \renewcommand{\baselinestretch}{1.35}
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\zihao{5}%%%%%\small   mzhy55
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

% 学术成就 achievement
\newenvironment{achievement}
  {\Nchapter{\CAST@label@achievement}}

\newcommand\project[1]{%
  \vspace{2ex}\noindent{\heiti \CAST@label@project} #1}

\newcommand\publications[1]{%
  \vspace{2ex}\noindent{\heiti \CAST@label@publications} #1}

%\newenvironment{publications}[1]
%     {\zihao{-4}\heiti{\CAST@label@publications}%
%      \@mkboth{\MakeUppercase\CAST@label@publications}
%              {\MakeUppercase\CAST@label@publications}%
%      \list{\@biblabel{\@arabic\c@enumiv}}%
%           {\settowidth\labelwidth{\@biblabel{#1}}%
%            \leftmargin\labelwidth
%            \advance\leftmargin\labelsep
%            \@openbib@code
%            \usecounter{enumiv}%
%            \let\p@enumiv\@empty
%            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%      \sloppy
%      \clubpenalty4000
%      \@clubpenalty \clubpenalty
%      \widowpenalty4000%
%      \sfcode`\.\@m}
%     {\def\@noitemerr
%       {\@latex@warning{Empty `publications' environment}}%
%      \endlist}

% 结论 conclusion
\newenvironment{conclusion}
  {\Nchapter{\CAST@label@conclusion}}
  {}

% 简历 resume
\newenvironment{resume}
  {\Nchapter{\CAST@label@resume}}
  {}

% 致谢 thanks
\renewenvironment{thanks}
  {\Nchapter{\CAST@label@thanks}}
  {}

% 新环境 resumesection
\newenvironment{resumesection}[1]
  {{\noindent\normalfont\bfseries #1}
   \list{}{\labelwidth\z@
           \leftmargin 2\ccwd}
   \item\relax}
  {\endlist}

%% 新环境 resumelist
%\newenvironment{resumelist}[1]
%  {{\noindent\normalfont\bfseries #1}
%   \list{}{\labelwidth\z@
%           \leftmargin 4\ccwd
%           \itemindent -2\ccwd
%           \listparindent\itemindent}
%   \item\relax}
%  {\endlist}

% 索引深度
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

% 新定理环境
\newtheoremstyle{break}% name
  {}%      Space above, empty = `usual value'
  {}%      Space below
  {\itshape}% Body font
  {}%         Indent amount (empty = no indent, \parindent = para indent)
  {\bfseries}% Thm head font
  {.}%        Punctuation after thm head
  {\newline}% Space after thm head: \newline = linebreak
  {}%         Thm head spec
\endinput
%%
%% End of file `YSUthesis.cls'.
