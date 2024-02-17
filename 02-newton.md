## The problem: computing square roots

Idea: **√a** is a root of the function **f(x) = x² - a**.


## Newton's method

![Newton's method](02-newton_iteration.svg)

* take an initial approximation **x_0**
* iterate with **x_n**:
    * if **x_n** is good enough,
                    return it,
    * otherwise improve it
* good enough: ![|f(x_n)| < \varepsilon](02-newton_good_enough.png)
* improvement: ![x_{n+1}=x_{n}-{\frac {f(x_{n})}{f'(x_{n})}}](02-newton_improve.png)


