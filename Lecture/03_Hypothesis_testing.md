---
title: "Inference"
subtitle: "Confidence Interval and Hypothesis Testing"
author: "Ranadeep Daw"
date: "2024-08-26"
execute:
  echo: true
  eval: true
  warning: false
  message: false
output:
  revealjs::revealjs_presentation:
    theme: "simple"
    self_contained: yes
    mode: selfcontained
    keep_md: true
    center: true
    widescreen: true
    slide_number: true
    width: 1600
    height: 900
    df-print: paged
    html-math-method: katex
---



\newcommand{\X}{\mathrm{X}}


## Lecture Outline

* Normal distribution
* Estimation
* Confidence interval
* Hypothesis testing


## Binomial Distribution

* Recall the coin toss example from last class. We tossed a coin $n$ times, where one toss followed a *probability distribution* as:
  \begin{align*}
  \mathbb{P}(X = H) = p \\
  \mathbb{P}(X = T) = 1-p \\
  \end{align*}

* This is an example of Binomial distribution.
* Very important for discrete or non-numeric data.
* To be revisited later, while analyzing count data.


## Plotting the Probability Distribution

* If I assign $p = 0.2$, the plot of probabilities will look like this:

<img src="03_Hypothesis_testing_files/figure-revealjs/unnamed-chunk-1-1.png" height="400" />



## Normal Distribution

* Today, we will discuss normal distribution -- the most common distribution for continuous data.
* We will discuss estimation, confidence interval, and hypothesis testing.
* We will start with two sample tests.



## Normal Distribution: Definition

* Defined by two parameters: $\mu$ (mean) and $\sigma^2$ (variance).
* Probability density function:
  $$f(x; \mu, \sigma^2) = \frac{1}{\sqrt{2\pi \sigma^2}} \exp{ - \frac{(x - \mu)^2}{2\sigma^2}}$$

  
  
## Properties

* Mean($X$) = Median($X$) = $\mu$.
* var($X$) = $\sigma^2$.
* $X$ is symmetric around the mean.
* Quartiles:
  - $Q_1 \approx \mu − 0.674 * \sigma$
  - $Q_3 \approx \mu + 0.674 * \sigma$
 

## Plotting the Probability Distribution

<img src="03_Hypothesis_testing_files/figure-revealjs/unnamed-chunk-2-1.png" height="500" />


## Point Estimates

* Recall, we never know parameters. We try to guess them from a sample.
* Suppose we have a sample from a $\mathbb{N}(\mu, \sigma^2)$:
  - $\X = \{x_1, \ldots, x_n\}$.
* We want to estimate the parameters $\mu$ and  $\sigma^2)$:
  - $\hat{\mu} = \bar{x}$ (sample mean).
  - $\hat{\sigma^2} = s^2$ (sample variance).
  

## Confidence Interval (CI)

* Even if we have only $3$ observations, we can estimate both $\mu$ and $\sigma^2$.
* But, are they any good? How confident are we?
* To analyze our confidence in the estimate, we need to study confidence interval.


## CI (contd.)

* A $100(1 - \alpha)\%$ CI is an interval that is expected to contain the true parameter had we have access to a large number of samples.

* Example: Set $\alpha = 0.05$. A $95\%$ CI for the population mean  ($\mu$) means that, if we had 100 random samples from the population, I expect $95$ of the intervals to contain the true $\mu$.



## CI: Key takeaway

* A wider interval would increase our confidence level $100(1 - \alpha)\%$, but it also introduces more uncertainty on my point estimate.
* We fix the confidence level first, usually at $95\%$ (or $\alpha = 0.05$).
* Given the level, we want a CI as narrow as possible.


## CI for Normal Distribution

* <span style="color:blue;">Case 1: Known variance ($\sigma^2$)</span>.
  - Point estimate of $\mu$: $\bar{x}$.
  - $100(1-\alpha)\%$ of $\mu$ = $\bar{x} \pm z_{\alpha/2} * \frac{\sigma}{\sqrt{n}}$.
    - $\bar{x}$ is the sample mean.
    - $\sigma$ is the standard deviation.
    - $n$ is the number of observations.
    - $z_{\alpha/2}$ is the **z score**, a value derived from the *standard* normal distribution.

## CI for Normal Distribution

* <span style="color:blue;">Case 2: Unknown variance (typical case).</span>
- Point estimate of $\mu$: $\bar{x}$.
- Point estimate of $\sigma^2$: $s^2$.
  - $100(1-\alpha)\%$ of $\mu$ = $\bar{x} \pm t_{\alpha/2, n-1} * \frac{s}{\sqrt{n}}$.
    - $\bar{x}$ and $s^2$ are the sample mean and variance.
    - $n$ is the number of observations.
    - $t_{\alpha/2, n-1}$ is the critical value from a **student's t** distribution with degrees of freedom $n-1$.





## $\texttt{R}$  syntax (Unknown)

``` r
t.test(vector, conf.level = 1- alpha)$conf.int
```

* Example with $\texttt{mtcars}$ data: $95\%$ CI for gas mileage (mpg).


``` r
data("mtcars")
mpgs = mtcars$mpg
t.test(mpgs, conf.level = 0.95)$conf.int
```

```
## [1] 17.91768 22.26357
## attr(,"conf.level")
## [1] 0.95
```





## Example: computation by hand (unknown case)

Example with $\texttt{mtcars}$ data: $95\%$ CI for gas mileage (mpg).


``` r
data("mtcars")
n = nrow(mtcars)
mpgs = mtcars$mpg
xbar = mean(mpgs)
sample_sd = sd(mpgs)
alpha = 0.05
critical_score = qt(1 - alpha/2, df = n - 1)
lower = xbar -critical_score * sample_sd/sqrt(n)
upper = xbar +critical_score * sample_sd/sqrt(n)
c(lower, upper)
```

```
## [1] 17.91768 22.26357
```



## Example: computation by hand (known case)

Example with $\texttt{mtcars}$ data: $95\%$ CI for gas mileage (mpg). Assume $\sigma = 6$.


``` r
sigma = 6
data("mtcars")
n = nrow(mtcars)
mpgs = mtcars$mpg
xbar = mean(mpgs)
alpha = 0.05
zscore = qnorm(1 - alpha)
lower = xbar -zscore * sigma/n
upper = xbar +zscore * sigma/n
c(lower, upper)
```

```
## [1] 19.78221 20.39904
```



## Hypothesis Testing

* What is a hypothesis?
  - 

