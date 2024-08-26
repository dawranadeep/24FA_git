---
title: "Introduction to R Markdown"
author: "Ranadeep Daw"
date: "2024-08-21"
output:
  revealjs::revealjs_presentation:
    theme: "simple"
    self_contained: yes
    mode: selfcontained
    keep_md: true
    center: true
    widescreen: true
---




## Welcome

  - This note is for basic introduction to $\texttt{R}$ Markdown.
  - Please download the **code file** is the **02_Intro_Markdown_Slides.Rmd** file from *Canvas*.
  - Open file with $\texttt{RStudio}$. Complete the questions to practice (not a homework).
  - Remember, Markdown files will have extension "**.Rmd**".
  


## What is Markdown?
  
  - A language that helps you write html (and pdf).
  - It is now integrated with $\texttt{RStudio}$, so that you can do $\texttt{R}$ calculations, write answers in html, and document everything together.
  - For example, this file is written in $\texttt{R}$ Markdown, where I have written instructions as well as $\texttt{R}$ code.
  
  
## Before you begin

  - This will be the typical file format for all the homework assignments and midterms 1 and 2. 
  - Use this assignment to practice writing Markdown.
  - Write your answer after my questions. I have marked it with "Write your answer here".
  - Next, we will learn authoring, knitting, writing, and including $\texttt{R}$ code.
  

## Authoring

  - Refer to the code file **02_Intro_Markdown_Slides.Rmd**.
  - See the block at the top of the document between the $``---"$ and $``---"$ syntax. This block is called **YAML** block.
  - This is where you will put author information. I will give you the basic structure, you will have to complete the details.
  

## Authoring Example
  - To claim yourself as author, write your name beside the author option in the YAML block.
  - For example, in the code file, I referred to it as **"Your Name Here"**.
  - If you want, you can change the title/ subtitle fields.
  - I fixed the date as the current system date. No need to change this.
  
## Knitting

  - $\textit{Knitting}$ is the Markdown-equivalent of compiling a .Rmd file.
  - To make life easier, please knit everytime you make a small change. It makes troubleshooting easier.
  - After writing any answer (or partial answer), please click the **Knit** button (from Editor toolbar), or **Ctrl+Shift+K** (Windows), or **Cmd+Shift+K** (Mac), to compile the document.
  
  
## Writing plain text

  - Write as if you are writing in word/ notepad.
  - Example:
    - **What is your name?**
      - Your answer here.
    - **What is your major?**
      - Your answer here.
    - **What is 2+5?**
      - Your answer here.
      
## Including $\texttt{R}$ Code

- For this practice code file (**02_Intro_Markdown_Slides.Rmd**), I have given you the $\texttt{R}$ code chunks.
- In the .Rmd file, it looks like \`\`\`\{r\}  \<\<Your code here\>\> \`\`\`.
- Write your code in between \`\`\`\{r\} and \`\`\`.
- To add a code chunk, use the keyboard shortcut **Ctrl + Alt + I** (Windows) or **Cmd + Option + I** (Mac) or the **Add Chunk** command in the editor toolbar.


##  Practice the following (a)

- Using $\texttt{R}$, sum any two numbers that you want and show the output. I have given you the sample code below. Make sure to remove ``#'' from the code.

- Write your answer within the $\texttt{R}$ code chunk. 

``` r
# x = <<Any number you like>>
# y = <<Any number you like>>
# x + y
```
##  Practice the following (b)
- Load the $\texttt{tidyverse}$ package in $\texttt{R}$.

- Write your answer within the $\texttt{R}$ code chunk.

``` r
# Write here. Remember to remove "#"
# Remember, to load a package, you should use  library("...").
# If it shows an error in loading (there is no package called ...), the package is not installed. Then you have to install it first using  install.package("...").
```





## Final Instructions

1. To clarify, you don't need to know all the YAML syntaxes. I will provide you the .Rmd files and you will have to enter your details (name, title, etc.) beside the options and write answers between the questions.

1. Don't forget to knit after small changes. 

2. Download the resulting html file. This is what you will submit for homework.
