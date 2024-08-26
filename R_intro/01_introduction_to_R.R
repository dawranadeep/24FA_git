# 1. Download R at https://cran.rstudio.com
# 2. Download RStudio at https://posit.co/download/rstudio-desktop/
# 3. Alternatively, use RStudio at https://rstudio.hmcse.uwf.edu/
# 4. Once done, you should open this file and run each line in order to practice


# Welcome to RStudio. See how we use "#" in front of a line to make it a comment

#1. Console (Usually bottom left): Where we will do mathematical and statistical calculations

2 + 5  # Addition
60 - 20 # Subtraction
5 * 4  # Multiplication
10/5  # Division
log(24) #Log
5^2 #Square
sqrt(100) #Square root


#2. Source Editor (Usually top left): Where we write/edit our code and save in a file
# Select any line in the editor and click "Run" to see the output in Console


# Define a numeric variable
# Variable name should start with letter, but may contain character
x = 20
x + 5
x - 11
x * 4

# Define a character variable
# Must use ""
y = "Ranadeep"
y + 1
z = "10"
z/5

# Define a vector (vector is like an array of numbers/ characters)
# Must use c(..., ..., ... ) syntax


w = c(10, 20 , 50, 5.32)
w[1]
w[3]
w[10]

#x = NA

length(w) # Gives you the number of elements
max(w) # Shows the maximum
min(w) # Shows the minimum


# Character vectors
y = c("Ranadeep", "Biostatistics", "STA4173", "UWF", "4173" )
y[2] 
y[10] # See it doesn't give any error, but shows NA



# Careful with mixed vectors
z = c( 100, "Ranadeep", 35, 40, 45)
z
z[1] # Note, it is within quotes, so not a number
z[1] + 10


############################## Plot #############################

x = c(25, 26, 29, 30, 31,45, 22, 30)
plot(x)

# We will learn the following later. It's called scatterplot
y = c(35, 40, 62, 65, 65, 72, 21, 60)
plot(y)
plot(x, y)

ww = c(1,2,3,4,5)
plot(ww)


########################## Packages ################################

# We will need to use some packages throughout

# # Let's try the car package
install.packages("car")    # installs a package. do it only once
library("car")   #loads a package.

# Does it throw an error? If not, you are good to go. If yes, do install.packages("cowsay")
install.packages("cowsay")
library("cowsay")
say("Welcome to STA4173 - Biostatistics", by = "cow")



###############################   Data  ##############################
#Class: data.frame

data("mtcars")
class(mtcars)


mtcars
head(mtcars) # head(...) to see only first 6 rows
# Use "?" to see Help about any package/ function

#Q1: How many observations or data points?
nrow(mtcars)

#Q2: How many variables?
ncol(mtcars)

#Q3: What are the column names?
colnames(mtcars)

#Q4: How can I see only the "mpg" colums?
## <<dataframe_name>>$<<column_name>>
mtcars$mpg

#Q4a: How can I see only the "hp" colums?

mtcars$hp

#Q5: How can I see the max and min of "mpg" column?
max(mtcars$mpg)
min(mtcars$mpg)

#Q5: How can I plot the "mpg" column against "disp" column?
plot(mtcars$disp, mtcars$mpg)




