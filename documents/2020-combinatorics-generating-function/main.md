<span> </span>

1.  Find a closed form formula for the sequence $(a_n)$ defined by
    $a_0 = 2, a_1 = 12$, and $a_{n+2} = 7 a_{n+1} - 10a_n$ for
    $n \geq 0$.

    > First we rewrite the equation using the advancement operation:
    > $$\begin{aligned}
    >                     0 &= (A^2 - 7A + 10)a  \\
    >                     0 &= (A - 2) (A - 5)a  
    >             \end{aligned}$$ The general solution will have the
    > form $a_n = x2^n + y 5^n$. Plugging in the initial conditions we
    > see $x + y = 2$ and $2x + 5y = 12$, thus $x = -\frac{2}{3}$,
    > $y = \frac{8}{3}$.
    >
    > The closed form of $a_n$ is
    > $a_n = -\frac{2}{3}2^n + \frac{8}{3}5^n$.

2.  Find a closed form formula for the sequence $(a_n)$ defined by
    $a_0 = 1, a_1 = 3$, $a_2 = 27$, and
    $a_{n+3} = 9a_{n+2} - 27a_{n+1} + 27a_n$ for $n \geq 0$.

    > First we rewrite the equation using the advancement operation
    > $$\begin{aligned}
    >                 0 &= (A^3 -9A^2 +27A -27)a \\
    >                 0 &= (A-3)^3 a
    >             \end{aligned}$$ This equation has a solution with the
    > form $a_n = c3^n$ and the general solution will have the form
    > $a_n = c_1 3^n + c_2 n3^n + c_3 n^2 3^n$.
    >
    > Plugging in the initial conditions, we get the following system of
    > equations, $$\begin{aligned}
    >                     c_1 &= 1\\
    >                     3 &= 3c_1 + 3c_2 + 3c_3\\
    >                     27 &= 9c_1 + 18c_2 + 36c_3
    >                 \end{aligned}$$ Solving for the unknowns, we find:
    > $c_1 = 1, c_2 = -1, c_3 = 1$.
    >
    > Thus, the closed form is: $a_n =  3^n - n3^n + n^2 3^n$.

3.  Give the general solution to the recurrence
    $a_{n+3} = 4a_{n+2} - 5a_{n+1} + 2a_n$. (Note:
    $x^3 - 4x^2 + 5x - 2 = (x - 1)^2(x - 2)$)

    > First, we rewrite the recurrence using the advancement operator:
    > $$\begin{aligned}
    >                 0 &= (A^3 - 4A^2 + 5A - 2)a\\
    >                 0 &= (A - 1)^2(A - 2)a
    >             \end{aligned}$$ This equation has general solutions of
    > the form $$a_n = c_1 + n c_2 +  c_3 2^n$$

4.  Let $p$ be a polynomial of degree $k$. Suppose $\lambda$ is not a
    root of $p$. Find a solution to the recurrence
    $(p(A)a)(n) = \lambda^n$.

    > We would like to find a particular solution to the nonhomogeneous
    > recurrence, $$\begin{aligned}
    >                 f_0(n) &= d \lambda^n \\
    >                 p(A) d \lambda^n &= \lambda^n \\
    >                 (\sum A^k c^k) d \lambda^n &= \lambda^n \\
    >                 d \sum c^k A^k \lambda^n &= \lambda^n \\
    >                 d \sum c^k \lambda^{n+k} &= \lambda^n \\
    >                 d \sum c^k \lambda^k &= 1  \\
    >                 d p(\lambda) &= 1  \\
    >                 d &= \frac{1}{p(\lambda)}               
    >             \end{aligned}$$ Thus, a particular solution will be,
    > $$f_0(n) = \frac{ \lambda^n}{p(\lambda)}$$

5.  Let $\alpha$ and $\beta$ be nonzero and distinct. Find the general
    solution to the recurrence
    $$a_{n+2} - (\alpha + \beta)a_{n+1} + \alpha\beta a_n = \alpha^n.$$

    > First, we rewrite the recurrence using the advancement operator:
    > $$\begin{aligned}
    >                 (A^2 - (\alpha + \beta)A + \alpha \beta)a &= \alpha^n\\
    >                 (A- \alpha)(A-\beta) &=\alpha^n
    >             \end{aligned}$$
    >
    > The general solution to the nonhomogeneous recurrence will be of
    > the form $f=f_0+f_1$ where $f_0$ is a particular solution and
    > $f_1$ is a solution to the corresponding homogeneous recurrence.
    > The homogeneous recurrence will be, $$\begin{aligned}
    >                 (A- \alpha)(A-\beta) &= 0
    >             \end{aligned}$$ So it will have a general solution
    > with the form, $$f_1(n) = c_1(\alpha^n) + c_2(\beta^n)$$
    >
    > Since $\alpha^n$ is a solution the homogeneous equation, we choose
    > a particular solution of the form, $$\begin{aligned}
    >                 f_0(n) &= d n \alpha^n\\
    >                 \implies (A- \beta)(A -\alpha)  d n \alpha^n 
    >                 &= (A-\beta)(d (n+1)\alpha^{n+1} - dn\alpha^{n+1}) \\
    >                 &= (A-\beta)d\alpha^{n+1}\\
    >                 &= d\alpha^{n+2} - d\alpha^{n+1}\beta\\
    >                 &= \alpha^{n}(d\alpha^2 - d\beta\alpha)
    >             \end{aligned}$$ We want this to equal $\alpha^n$ so we
    > let $d = \frac{1}{\alpha(\alpha-\beta)}$. Therefore the particular
    > solution will be,
    > $$f_0(n) = \frac{n\alpha^n}{\alpha(\alpha-\beta)}$$ And the
    > general solution will be,
    > $$f(n) = \frac{n\alpha^n}{\alpha(\alpha-\beta)} + c_1(\alpha^n) + c_2(\beta^n)$$

6.  Find the general solution to the recurrence
    $a_{n+2} - 5a_{n+1} + 6a_n = n + 1$.

    > First, we rewrite the recurrence using the advancement operator:
    > $$(A^2 - 5A +6)a = n+1$$ The corresponding homogeneous equation
    > is, $$\begin{aligned}
    >                 (A^2 - 5A +6)a &= 0 \\
    >                 (A-3)(A-2) &= 0.
    >             \end{aligned}$$ Which will have solutions of the form,
    > $$f_1(n) = c_1 3^n  + c_2 2^n$$ The particular solutions will have
    > the form, $$\begin{aligned}
    >                 f_0(n) &= c_3 +c_4 n \\
    >                 (A-3)(A-2)(c_3 + c_4n) &= n + 1 \\
    >                 (A-3)(c_3 + c_4(n+1)-2c_3 -2c_4n) &= n + 1 \\
    >                 n(2c_4) +(2c_3 -3c_4) &= n + 1 \\
    >                 \implies c_4 &= \frac{1}{2}\\
    >                 \implies c_3 &= \frac{5}{4} \\ 
    >                 \implies f_0(n) &= \frac{5}{4} + \frac{1}{2} n
    >             \end{aligned}$$ So the general solution will have the
    > form, $$f(n) = c_1 3^n + c_2 2^n +  \frac{1}{2} n +  \frac{5}{4}$$

7.  Let $p$ be a polynomial with $p(1) \neq 0$. Let $g$ be a polynomial
    of degree $\leq d$. Show that there is a unique polynomial $f$ of
    degree $\leq d$ such that the sequence $(f(n))$ satisfies the
    recursion $p(A)f = g$.

    > Using the hint, we let $P_d$ denote the space of polynomial
    > sequences of degree $\leq d$, i.e., $P_d$ consists of sequences
    > $(f(n))$ where $f$ is a polynomial of degree $\leq d$.
    >
    > We may assume that $P_d$ is a vector space and since p is a
    > polynomial, we can also assume that $p(A)$ is linear. Then
    > $\forall f_d \in P_d$,
    > $$f_d(x) = c_0 + c_1 x + c_2 x^2 + ... + c_d x^d$$ We can see that
    > the basis of the space of all polynomial sequences of this form
    > will be $\{ 1, x , x^2,...,x^d \}$. Since the basis is finite, it
    > must be true that $P_d$ is finite dimensional.
    >
    > We can also observe that the transformation $p(A)$ goes from $P_d$
    > to $P_d$, that is, the dimension of a function will never exceed
    > $d$. $\forall f_d \in P_d$ we’ve seen $f_d(n)$ is a linear
    > combination of terms of $n$ with degrees less than or equal to
    > $d$. Applying the advancement operator on any individual term of
    > degree $l \leq d$ will yield, $A(n^l) = (n+1)^l = n^l + ... + 1$.
    > Thus $A$ sends all terms from $P_d \to P_d$. Using linearity, we
    > can see that applying $A$ to all linear combinations of a
    > polynomial will also be sent to $P_d$. We can see that any powers
    > of $A$ will be sent to $P_d$ as well since the leading term will
    > never be able to exceed degree $d$.
    >
    > Next, we aim to show that $p(A)$ gives a bijective linear
    > transformation $P_d \to P_d$. Since $P_d$ is finite dimensional
    > and $p(A): P_d \to P_d$, we know from linear algebra that $p(A)$
    > is bijective $\iff$ $p(A)$ is injective $\iff$ $p(A)$
    > is surjective. Thus we can prove bijectivity by
    > proving injectivity.
    >
    > To show injectivity, we aim to show that $ker(p(A)) = 0$ (i.e.,
    > the kernel is trivial).
    >
    > $$p(A)(\sum_{j=0}^l a_j n^j) = (\sum_{i=1}^{k} c_iA^i) (\sum_{j=0}^l a_j n^j)$$
    > We know $a_l \neq 0$. We want to find the coeffecient of $n^l$ so
    > we can calculate $$\begin{aligned}
    >             (\sum_{i=1}^{k} c_iA^i) a_l n^l &=  a_l(\sum_{i=1}^{k} c_iA^i)n^l \\
    >             An^l  
    >             &= A(n^l + [\text{terms of degree $<l$}] ) \\
    >             &=(n+1)^l +  [\text{terms of degree $<l$}]\\
    >             &= n^l + [\text{terms of degree $<l$]}
    >         \end{aligned}$$ Again, we see that applying the
    > advancement operator several times will yield something of the
    > form $n^l + [\text{terms of degree $&lt;l$]}$. Moreover, the total
    > coeffecient of the $n^l$ term will be sum of the coefficients of
    > A, i.e. $\sum_{i=1}^{k} c_i$. As long as this sum is not zero, the
    > polynomial will not be zero and the kernel is trivial. We can use
    > the fact that $p(1) \neq 0$ to see this the sum is not zero and
    > the kernel of $p(A)$ is trivial.
    >
    > Using the previous findings we can conclude that the
    > transformation $p(A)$ is a bijection from $P_d \to P_d$. Thus for
    > all $g$ there exists a unique polynomial $f$ such that the
    > sequence $(f(n))$ satisfies the recursion $p(A)f = g$.

8.  Find a solution to the recursion
    $((A - 1)(A - 2)a)(n) = n + 2 \cdot 3^n$.

    > First, we solve the corresponding homogeneous recursion,
    > $(A - 1)(A - 2)a =0$ which will have solutions of the form
    > $$f_1(n) = c_1 + c_2 2^n$$ We may split the particular solution
    > into to parts and solve them separately, then by linearity we can
    > add them back together to get the final general solution.
    > $$\begin{aligned}
    >                 f_0^{(1)}(n) &= c_3n^2 +c_4n + c_5 \\
    >                 (A^2 - 3A + 2)(c_3n^2 +c_4n + c_5) &= n\\
    >                                                                 2 c_3 n^2 + 2 c_4 n - 3 c_3 (n + 1)^2 + c_3 (n + 2)^2 - 3 c_4 (n + 1) + c_4 (n + 2) &= n \\
    >                 -2 c_3 n + c_3 - c_4 &= n \\
    >                 \implies c_3 &= -\frac{1}{2} \\ 
    >                 \implies c_4 &= \frac{1}{2} \\
    >                 \implies c_5 &= 0 
    >             \end{aligned}$$ Thus, the first part of the particular
    > solution will have the form,
    > $$f_0^{(1)}(n) =  -\frac{1}{2}n^2 + \frac{1}{2}n$$ For the second
    > part of the particular solution we try, $$\begin{aligned}
    >                 f_0^{(2)}(n) &= d 3^n \\
    >                 (A^2 -3A+2)d 3^n &= 2\cdot3^n \\
    >                 (3^{n+1} - 3\cdot 3^{n+1} + 2\cdot3^n)d &= 2\cdot3^n \\
    >                 d(9 - 9 + 2) &= 2\cdot1 \\ 
    >                 d &= 1\\
    >                 \implies f_0^{(2)}(n) &= 3^n
    >             \end{aligned}$$
    >
    > Thus, the general solution will be,
    > $$f(n) =  c_1 + c_2 2^n + -\frac{1}{2}n^2 + \frac{1}{2}n + 3^n$$

9.  There is a famous puzzle called the Towers of Hanoi that consists of
    three pegs and $n$ circular discs, all of different sizes. The discs
    start on the leftmost peg, with the largest disc on the bottom, the
    second largest on top of it, and so on, up to the smallest disc
    on top. The goal is to move the discs so that they are stacked in
    this same order on the rightmost peg. However, you are allowed to
    move only one disc at a time, and you are never able to place a
    larger disc on top of a smaller disc. Let $t_n$ denote the fewest
    moves (a move being taking a disc from one peg and placing it
    onto another) in which you can accomplish the goal. Determine an
    explicit formula for $t_n$.

    > To move the largest disc to the rightmost peg, we must first move
    > all other discs onto the middle peg first. This can be done in
    > $t_{n-1}$ moves. Next we add one to move the largest disc to the
    > right peg and again repeat moving all the discs from the centre
    > peg to the right peg in $t_{n-1}$ moves. This results in the
    > following recursion, $$t_n = 2t_{n-1} + 1, t_1 = 1; n > 0$$ To
    > find a closed form formula, we rewrite the equation using the
    > advancement operation: $$(A -2) =1$$ We see that the general
    > solution will have the form $$f(n) = c_1 2^n + c_2.$$ Solving for
    > $c_2$, $$\begin{aligned}
    >                 2c_2 + 1  &= 1 \\
    >                 \implies c_2 &= -1.  
    >             \end{aligned}$$ Solving for $c_1$, $$\begin{aligned}
    >                f(1) &=  c_1(2)^1 -1 = 1\\
    >                 \implies c_1 &= 1
    >             \end{aligned}$$ Thus, an explicit formula is given by:
    > $$t_n = 2^n -1$$
