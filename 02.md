## The problem: computing square roots

Idea: **√a** is a root of the function **f(x) = x² - a**.


## Newton's method

[Newton's method in Wikipedia](https://en.wikipedia.org/wiki/Newton%27s_method)

![Newton's method](img/02-newton_iteration.svg)

### Algorithm

* Start with an initial guess **x_0**.
* Iterate with **x_n**:
    * if **x_n** is good enough, return it;
    * otherwise improve it.
* Good enough: ![|f(x_n)| < \varepsilon](img/02-newton_good_enough.png)
* Improve: ![x_{n+1}=x_{n}-{\frac {f(x_{n})}{f'(x_{n})}}](img/02-newton_improve.png)

## The Core of Functional Programming

* Functions as arguments
* Partial application (functions as results)
* Higher-order functions
* Anonymous functions (lambdas)