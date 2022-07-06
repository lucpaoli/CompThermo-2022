### A Pluto.jl notebook ###
# v0.19.9

using Markdown
using InteractiveUtils

# ╔═╡ cdb524b6-00fa-4819-b744-0583f0b10141
md"""
### Section 1.2

# Numerical Methods

To effectively design and implement routines to calculate thermodynamics properties, we first need to have an understanding of some of the key numerical methods used today. There are 2 broad categories of methods we need to consider: Root finding and Optimisation. This aims to be a very, very brief overview and discussion of the methods used in this course.

## Multivariable calculus

Before getting into the core numerical methods, we should review the basic definitions in multivariable calculus.

- A scalar field maps from $N\times 1$ vector to a scalar. For real numbers, this can be written as
$$\mathbb R^N \to \mathbb R^1$$

- A vector field maps from a $N\times 1$ vector to a $M\times 1$ vector. For real numbers, this can be written as
$$\mathbb R^N \to \mathbb R^M$$

- The first derivative of a scalar field is a $N\times 1$ vector of partial derivatives. This is referred to as the gradient, and can be written using a nabla. This is a vector field.
$$\nabla f$$

- The first derivative of a vector field is a $N\times M$ matrix of partial derivatives. This is referred to as the Jacobian, and can be written using a J. If $N=M$, then this is a square matrix.
$$\mathbf J$$

## Root Finding

### 1D

Root finding in the 1 dimension case refers to solving

$$f(x) = 0$$

This is generally not too hard of a problem, provided you do not mind which root you converge to.

#### Successive Substitution

Successive substitution can be applied when a function $f(x)$ can be expressed in the form

$$x = f_2(x)$$

Where

$$f_2(x) = f(x) - x$$

Which is then iterated from an initial guess $x_0$ using

$$x_{n+1} = f_2(x_n)$$

#### Bisection

#### Newton's method

### Multidimensional
In multidimensional cases, this is a [vector field](https://en.wikipedia.org/wiki/Vector_field), so for our problem to be nicely solvable (not over or under defined) it must return the same number of dimensions as we input. With the exception of bisection, most 1D methods can be generalised to N dimensions.

$$\vec{F}(\vec{x}) = 0$$

This is quite easy to do for linear systems, as these can be expressed as a matrix.

In this course we will primarily use successive substitution and Newton's method.

#### Successive Substitution

This behaves the same as the 1D case, and can just be written as

$$\vec{x}_{n+1} = \vec{F}(\vec{x}_n)$$

#### Newton's Method

This behaves the same as the 1D case, but is written as

$$\vec{x}_{n+1} = \vec{x}_n - J(\vec{x}_n)^{-1}\cdot \vec{F}(\vec{x}_n)$$

Where $n$ is the current iteration, $n+1$ is the next iteration, $J(\vec{x})$ is the current Jacobian matrix, and $\vec{F}(\vec{x})$ is the current value of the function.

#### Quasi-Newton Methods

The idea behind Quasi-Newton methods is that evaluating the Jacobian is expensive, especially in large systems (think millions of equations in CFD or FEA) though they still can provide speedups in any system. These typically rely on **low rank updates**, meaning at each iteration only part of an already-inverted Jacobian is updated using the [woodbury formula](https://en.wikipedia.org/wiki/Woodbury_matrix_identity). Common examples of this includes Broyden's method, a generalisation of the secant method, and [BFGS](https://en.wikipedia.org/wiki/Broyden%E2%80%93Fletcher%E2%80%93Goldfarb%E2%80%93Shanno_algorithm).


#### Parameters in Newton Methods

Newton and Quasi-Newton have some common improvements.

##### Line Search
##### Trust Region

## Optimisation

In optimisation problems, we attempt to solve for critical points using

$$f'(x) = 0$$

or in the multidimensional case

$$\vec{F}'(\vec{x}) = 0$$


## Floating point numbers

## Conditioning

In numerical methods relying on the Hessian or Jacobian matrix, the conditioning of the matrix is important.
"""

# ╔═╡ bbd6b837-b2f5-4f2a-bc6b-3a9ebf2c57e4
md"""
## Further Reference
For interested students, I recommend [Numerical Methods for Scientific Computing](https://www.equalsharepress.com/media/NMFSC.pdf), which aims to "provide a concise
treatment of the core ideas, algorithms, proofs, and pitfalls of numerical methods
for scientific computing".
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╠═cdb524b6-00fa-4819-b744-0583f0b10141
# ╟─bbd6b837-b2f5-4f2a-bc6b-3a9ebf2c57e4
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
