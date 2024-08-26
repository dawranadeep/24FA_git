---
title: "Introduction to R"
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

  - This note is for basic introduction to $\texttt{R}$ and $\texttt{RStudio}$.
  - Please download the **code file** is the **01_introduction_to_R.R** file in *Canvas* module.
  - Once you have access to $\texttt{RStudio}$ (instructions next slide), open the 01_introduction_to_R.R file with it. Run each line to practice and familiarize.
  
## Download instructions

You can either download $\texttt{R}$ and $\texttt{RStudio}$ in your local machine or access it from the college server.

  - If you want to download:
    - Download $\texttt{R}$ at https://cran.rstudio.com.
    - Download $\texttt{RStudio}$ at https://posit.co/download/rstudio-desktop/.
  
  - Alternatively, to access the college server:
    - Go to $\texttt{RStudio}$ at <https://rstudio.hmcse.uwf.edu/>. 
    - Click on **New session** to launch $\texttt{RStudio}$.



## Panes

![](Rstudio_panes2.png)


## $\texttt{R}$ Console (Usually bottom left part): 

  - Here we do mathematical and statistical calculations.
  - Write any code here; then press enter to see the output.
  - Refer to the code files. Run the following lines in Console window of $\texttt{RStudio}$ to practice calculation.
  

``` r
2 + 5  # Addition
```

```
## [1] 7
```

``` r
60 - 20 # Subtraction
```

```
## [1] 40
```
  
## Examples (contd.)

``` r
5 * 4 # Multiplication
```

```
## [1] 20
```

``` r
10/5  # Division
```

```
## [1] 2
```

``` r
log(24) #Log
```

```
## [1] 3.178054
```


## Examples (contd.)


``` r
5^2 #Square
```

```
## [1] 25
```

``` r
sqrt(100) #Square root
```

```
## [1] 10
```
  



## Source Editor (Usually top left): 
  
  - This is like any text editor, such as Notepad, Word, Textedit, etc.
  - Here we write and edit our code and save in a file.
  - To run any line, take your cursor to anywhere in the line. Then click **Run** from the Editor Toolbar. Alternatively,  **Ctrl+Enter** (Windows)/**Cmd+Enter**(Mac).
  

## Other Panes on the right

  - Right side has a few panes.
  - Important for now: 
    - Plots (Usually bottom right)
    - Environment (Usuallly  top right)
    


## Define a numeric variable

 - **Syntax: \<\<Variable name\>\> = \<\<Variable value\>\>**
 - Variable name can not start with numerics or special character.
 - Refer to code file. Practice the following in $\texttt{R}$:



``` r
x = 20 # Define a variable
x + 5 # Use it in future calculation 
```

```
## [1] 25
```

``` r
x * 4 
```

```
## [1] 80
```


## Define a character variable

  - Same syntax, but you must use ""
  - Examples: (practice)

``` r
y = "Ranadeep"
y + 1 # Will throw an error
```

```
## Error in y + 1: non-numeric argument to binary operator
```

``` r
z = "10"
z/5 # Another error
```

```
## Error in z/5: non-numeric argument to binary operator
```
  


## Define a vector 

  - Vector is like an array of numbers or characters.
  - **Syntax: \<\<Vector name\>\> = \<\< c(..., ..., ...)\>\>**.
  - Examples: (please practice)


``` r
w = c(10, 20, 50, 5.32)
w[3] # Second element
```

```
## [1] 50
```

``` r
w[10] # 10-th element. It will show NA, a special keyword in R.
```

```
## [1] NA
```

## Vector(Contd.)


``` r
length(w) # Length of the vector
```

```
## [1] 4
```

``` r
max(w) # Maximum
```

```
## [1] 50
```

``` r
min(w) # Minimum
```

```
## [1] 5.32
```
## Character vectors

  - Same syntax, but must use "..." to define character elements.
  - Examples:
      

``` r
y = c("Ranadeep", "Biostatistics", "STA4173", "UWF", "4173" )
y[2] #Shows second element of vector
```

```
## [1] "Biostatistics"
```

``` r
y[10] # Doesn't give any error, but shows NA
```

```
## [1] NA
```


## Careful: No mixed type of vector
- You can not use a vector to contain both number and character.
- $\texttt{R}$ will automatically convert everything to character.
- Try the following and check the output:

``` r
z = c( 100, "Ranadeep", 35, 40, 45)
z
```

```
## [1] "100"      "Ranadeep" "35"       "40"       "45"
```

``` r
z[1] + 10 # Will give you an error
```

```
## Error in z[1] + 10: non-numeric argument to binary operator
```


## Commenting

  - Commenting means adding notes to your code. 
  - $\texttt{R}$ will not process these lines.
  - Any line starting with **\#** is a comment.
  - Examples:

``` r
# 5 + 10 \# See that there is no output 
# x = 20
# "abcd" + 10
```


## Plot

- Plots will be visible in the bottom right pane.



``` r
x = c(25, 26, 29, 30, 31,45, 22, 30)
plot(x)
```

<img src="01_Intro_R_Slides_files/figure-revealjs/unnamed-chunk-11-1.png" width="50%" height="50%" />

## Plot (contd.)

- We will learn this later. It's called **scatterplot**. I am plotting one variable against another.


``` r
y = c(35, 40, 62, 65, 65, 72, 21, 60)
plot(x, y) 
```

<img src="01_Intro_R_Slides_files/figure-revealjs/unnamed-chunk-12-1.png" width="50%" height="50%" />




## Packages


- Many contributors have written/ are writing packages that include functionalities.
- The basic $\texttt{R}$ does not come with ALL packages.
- To use them, we will need to install them (only once) and then load (everytime you use it).

## Example 1: $\texttt{R}$ package

- Let's try installing the $\texttt{car}$ package.


``` r
# install.packages("car")    # Installs the package. 
# Remove the first "#" from above to run the line
library("car")   #loads the package.
```

```
## Loading required package: carData
```


## Example 2: What does the cow say?
- Let's (install and) load the $\texttt{cowsay}$ package. 

``` r
# install.packages("cowsay")    # Install it once
library("cowsay")
say("Welcome to STA4173 - Biostatistics", by = "cow")
```

```
## 
##  ----- 
## Welcome to STA4173 - Biostatistics 
##  ------ 
##     \   ^__^ 
##      \  (oo)\ ________ 
##         (__)\         )\ /\ 
##              ||------w|
##              ||      ||
```


## Your task

Can you install and load the $\texttt{tidyverse}$ package?





##   Data and data.frame

- In $\texttt{R}$, we will analyze and model any data.
- Typically, whenever you load any data, it will be of class $\texttt{data.frame}$.
- Rows of data are different observations, columns are different variables.
- Let's try the $\texttt{mtcars}$ data that automatically comes with basic $\texttt{R}$.

## Example

``` r
data("mtcars") #loads the data for further use
# ?mtcars # Use "?..." to see Help about any package/ function
head(mtcars) # head(...) to see only first 6 rows
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```

## $\texttt{mtcars}$ (Contd.)
#### Q1: How many observations or data points (or how many cars do we have here)?

**Ans:** Count the number of rows.

``` r
nrow(mtcars)
```

```
## [1] 32
```

#### Q2: How many variables?
**Ans:** Count the number of columns.

``` r
ncol(mtcars)
```

```
## [1] 11
```

## $\texttt{mtcars}$ (Contd.)
#### Q3: What are the variables (or column names)?

``` r
colnames(mtcars)
```

```
##  [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
## [11] "carb"
```

## $\texttt{mtcars}$ (Contd.)
#### Q4: How can I see only the values of the "mpg" variable/colum?

``` r
mtcars$mpg
```

```
##  [1] 21.0 21.0 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 17.8 16.4 17.3 15.2 10.4
## [16] 10.4 14.7 32.4 30.4 33.9 21.5 15.5 15.2 13.3 19.2 27.3 26.0 30.4 15.8 19.7
## [31] 15.0 21.4
```

## $\texttt{mtcars}$ (Contd.)
#### Q4a: How can I see only the "disp" variable/column?

``` r
#Try it yourself
# Hint: Syntax is <<dataframe name>>$<<column name>>
```

## $\texttt{mtcars}$ (Contd.)
#### Q5: How can I see the maximum and minimum "mpg" of the cars?

``` r
max(mtcars$mpg)
```

```
## [1] 33.9
```

``` r
min(mtcars$mpg)
```

```
## [1] 10.4
```

## $\texttt{mtcars}$ (Contd.)

#### Q6: How can I plot the "mpg" column against "disp" column?

``` r
plot(mtcars$disp, mtcars$mpg, xlab = "Disp", ylab = "mpg")
```

<img src="01_Intro_R_Slides_files/figure-revealjs/unnamed-chunk-22-1.png" width="50%" height="50%" />
