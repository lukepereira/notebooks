---
title:  Lie Groups and Lie Algebras
---

-   [Terminology and notation](#terminology-and-notation)
    -   [Lie groups](#lie-groups)
    -   [Lie algebras](#lie-algebras)
-   [The covering
    $\operatorname{SU}(2)\to  \operatorname{SO}(3)$](#the-covering-operatornamesu2to-operatornameso3)
-   [The Lie algebra of a Lie group](#the-lie-algebra-of-a-lie-group)
    -   [Review: Tangent vectors and vector
        fields](#review-tangent-vectors-and-vector-fields)
    -   [The Lie algebra of a Lie
        group](#the-lie-algebra-of-a-lie-group-1)
-   [The exponential map](#the-exponential-map)
-   [Cartan's theorem on closed
    subgroups](#cartans-theorem-on-closed-subgroups)
-   [The adjoint representations](#the-adjoint-representations)
    -   [Automorphisms](#automorphisms)
    -   [The adjoint representation of
        $G$](#the-adjoint-representation-of-g)
    -   [The adjoint representation of
        $\mathfrak{g}$](#the-adjoint-representation-of-mathfrakg)
-   [The differential of the exponential
    map](#the-differential-of-the-exponential-map)
-   [Actions of Lie groups and Lie
    algebras](#actions-of-lie-groups-and-lie-algebras)
    -   [Lie group actions](#lie-group-actions)
    -   [Lie algebra actions](#lie-algebra-actions)
    -   [Integrating Lie algebra
        actions](#integrating-lie-algebra-actions)
    -   [Proper actions](#proper-actions)

# Terminology and notation

## Lie groups

A Lie group (pronounced \"Lee\") is a group that is also a
differentiable manifold (See differential geometry notebook). Combining
these two ideas, one obtains a continuous group where points can be
multiplied together, and their inverse can be taken. If the
multiplication and taking of inverses are defined to be smooth
(differentiable), one obtains a Lie group. Lie groups appear as symmetry
groups of physical systems, and their Lie algebras (tangent vectors near
the identity) may be thought of as infinitesimal symmetry motions. Thus
Lie algebras and their representations are used extensively in physics,
notably in quantum mechanics and particle physics.

::: {.definition}
*Definition 1*. A Lie group is a group $G$, equipped with a manifold
structure such that the group operations
$$\operatorname{Mult}\colon G\times G\to G,\ \ (g_1,g_2)\mapsto g_1 g_2$$
$$\operatorname{Inv}\colon G\to G,\ \ g\mapsto g^{-1}$$ are smooth. A
morphism of Lie groups $G,G'$ is a morphism of groups
$\phi\colon G\to G'$ that is smooth.
:::

::: {.remark}
*Remark 2*. Using the implicit function theorem, one can show that
smoothness of $\operatorname{Inv}$ is in fact automatic.
:::

The first example of a Lie group is the *general linear group*
$$\operatorname{GL}(n,\mathbb{R})=\{A\in \operatorname{Mat}_n(\mathbb{R})|\ \det(A)\not=0\}$$
of invertible $n\times n$ matrices. It is an open subset of
$\operatorname{Mat}_n(\mathbb{R})$, hence a submanifold, and the
smoothness of group multiplication follows since the product map for
$\operatorname{Mat}_n(\mathbb{R})$ is obviously smooth.

Our next example is the orthogonal group
$$\operatorname{O}(n)=\{A\in \operatorname{Mat}_n(\mathbb{R})|\ A^T A=I\}.$$
To see that it is a Lie group, it suffices to show that
$\operatorname{O}(n)$ is an embedded submanifold of
$\operatorname{Mat}_n(\mathbb{R})$. In order to construct submanifold
charts, we use the exponential map of matrices
$$\exp\colon \operatorname{Mat}_n(\mathbb{R})\to \operatorname{Mat}_n(\mathbb{R}),\ \ 
B\mapsto \exp(B)=\sum_{n=0}^\infty \frac{1}{n!} B^n$$ (an absolutely
convergent series). One has $\frac{{\mbox{d}}}{{\mbox{d}}
t}|_{t=0}\exp(tB)=B$, hence the differential of $\exp$ at $0$ is the
identity $\operatorname{id}_{\operatorname{Mat}_n(\mathbb{R})}$. By the
inverse function theorem, this means that there is $\epsilon>0$ such
that $\exp$ restricts to a diffeomorphism from the open neighborhood
$U=\{B:\ ||B||<\epsilon\}$ of $0$ onto an open neighborhood $\exp(U)$ of
$I$. Let
$$\mathfrak{o}(n)=\{B\in \operatorname{Mat}_n(\mathbb{R})|\ B+B^T=0\}.$$
We claim that
$$\exp(\mathfrak{o}(n)\cap U)=\operatorname{O}(n)\cap \exp(U),$$ so that
$\exp$ gives a submanifold chart for $\operatorname{O}(n)$ over
$\exp(U)$. To prove the claim, let $B\in U$. Then
$$\begin{split} \exp(B)\in \operatorname{O}(n) & \Leftrightarrow 
\exp(B)^T=\exp(B)^{-1}\\
& \Leftrightarrow 
\exp(B^T)=\exp(-B)\\
& \Leftrightarrow 
B^T=-B\\
& \Leftrightarrow B\in \mathfrak{o}(n).
\end{split}$$ For a more general $A\in \operatorname{O}(n)$, we use that
the map
$\operatorname{Mat}_n(\mathbb{R})\to \operatorname{Mat}_n(\mathbb{R})$
given by left multiplication is a diffeomorphism. Hence, $A\exp(U)$ is
an open neighborhood of $A$, and we have
$$A\exp(U)\cap \operatorname{O}(n)=A(\exp(U)\cap \operatorname{O}(n))=A\exp(U\cap \mathfrak{o}(n)).$$
Thus, we also get a submanifold chart near $A$. This proves that
$\operatorname{O}(n)$ is a submanifold. Hence its group operations are
induced from those of $\operatorname{GL}(n,\mathbb{R})$, they are
smooth. Hence $\operatorname{O}(n)$ is a Lie group. Notice that
$\operatorname{O}(n)$ is compact (the column vectors of an orthogonal
matrix are an orthonormal basis of $\mathbb{R}^n$; hence
$\operatorname{O}(n)$ is a subset of
$S^{n-1}\times\cdots S^{n-1}\subset \mathbb{R}^n\times\cdots \mathbb{R}^n$).

A similar argument shows that the *special linear group*
$$\operatorname{SL}(n,\mathbb{R})=\{A\in \operatorname{Mat}_n(\mathbb{R})|\ \det(A)=1\}$$
is an embedded submanifold of $\operatorname{GL}(n,\mathbb{R})$, and
hence is a Lie group. The submanifold charts are obtained by
exponentiating the subspace
$$\mathfrak{sl}(n,\mathbb{R})=\{B\in \operatorname{Mat}_n(\mathbb{R})|\ \operatorname{tr}(B)=0\},$$
using the identity $\det(\exp(B))=\exp(\operatorname{tr}(B))$.

Actually, we could have saved most of this work with
$\operatorname{O}(n),\
 \operatorname{SL}(n,\mathbb{R})$ once we have the following beautiful
result of E. Cartan:

> **Fact:** *Every closed subgroup of a Lie group is an embedded
> submanifold, hence is again a Lie group.*

We will prove this very soon, once we have developed some more basics of
Lie group theory. A closed subgroup of $\operatorname{GL}(n,\mathbb{R})$
(for suitable $n$) is called a *matrix Lie group*. Let us now give a few
more examples of Lie groups, without detailed justifications.

::: {.examples}
*Examples 3*.

1.  Any finite-dimensional vector space $V$ over $\mathbb{R}$ is a Lie
    group, with product $\operatorname{Mult}$ given by addition.

2.  Let $\mathcal{A}$ be a finite-dimensional associative algebra over
    $\mathbb{R}$, with unit $1_\mathcal{A}$. Then the group
    $\mathcal{A}^\times$ of invertible elements is a Lie group. More
    generally, if $n\in\mathbb{N}$ we can create the algebra
    $\operatorname{Mat}_n(\mathcal{A})$ of matrices with entries in
    $\mathcal{A}$, and the *general linear group*
    $$\operatorname{GL}(n,\mathcal{A}):=\operatorname{Mat}_n(\mathcal{A})^\times$$
    is a Lie group. If $\mathcal{A}$ is *commutative*, one has a
    determinant map
    $\operatorname{det}\colon \operatorname{Mat}_n(\mathcal{A})\to \mathcal{A}$,
    and $\operatorname{GL}(n,\mathcal{A})$ is the pre-image of
    $\mathcal{A}^\times$. One may then define a *special linear group*
    $$\operatorname{SL}(n,\mathcal{A})=\{g\in  \operatorname{GL}(n,\mathcal{A})|\ \det(g)=1\}.$$

3.  We mostly have in mind the cases
    $\mathcal{A}=\mathbb{R},\mathbb{C},\mathbb{H}$. Here $\mathbb{H}$ is
    the algebra of *quaternions* (due to Hamilton). Recall that
    $\mathbb{H}=\mathbb{R}^4$ as a vector space, with elements
    $(a,b,c,d)\in \mathbb{R}^4$ written as $$x=a+ib+jc+kd$$ with
    imaginary units $i,j,k$. The algebra structure is determined by
    $$i^2=j^2=k^2=-1,\ ij=k,\ jk=i,\ ki=j.$$ Note that $\mathbb{H}$ is
    non-commutative (e.g. $ji=-ij$), hence
    $\operatorname{SL}(n,\mathbb{H})$ is *not* defined. On the other
    hand, one can define complex conjugates $$\overline{x}=a-ib-jc-kd$$
    and $$|x|^2:=x\overline{x}=a^2+b^2+c^2+d^2.$$ defines a norm
    $x\mapsto |x|$, with $|x_1x_2|=|x_1| |x_2|$ just as for complex or
    real numbers. The spaces $\mathbb{R}^n,\mathbb{C}^n,\mathbb{H}^n$
    inherit norms, by putting
    $$||x||^2=\sum_{i=1}^n |x_i|^2,\ \ x=(x_1,\ldots,x_n).$$ The
    subgroups of
    $\operatorname{GL}(n,\mathbb{R}),\  \operatorname{GL}(n,\mathbb{C}),\  \operatorname{GL}(n,\mathbb{H})$
    preserving this norm (in the sense that $||Ax||=||x||$ for all $x$)
    are denoted
    $$\operatorname{O}(n),\ \operatorname{U}(n),\ \operatorname{Sp}(n)$$
    and are called the *orthogonal, unitary, and symplectic group*,
    respectively. Since the norms of $\mathbb{C},\mathbb{H}$ coincide
    with those of $\mathbb{C}\cong \mathbb{R}^2$,
    $\mathbb{H}=\mathbb{C}^2 \cong \mathbb{R}^4$, we have
    $$\operatorname{U}(n)= \operatorname{GL}(n,\mathbb{C})\cap \operatorname{O}(2n),\ \ 
    \operatorname{Sp}(n)= \operatorname{GL}(n,\mathbb{H})\cap \operatorname{O}(4n).$$
    In particular, all of these groups are compact. One can also define
    $$\operatorname{SO}(n)=\operatorname{O}(n)\cap  \operatorname{SL}(n,\mathbb{R}),\ \  \operatorname{SU}(n)=\operatorname{U}(n)\cap  \operatorname{SL}(n,\mathbb{C}),$$
    these are called the *special orthogonal* and *special unitary*
    groups. The groups
    $\operatorname{SO}(n),\  \operatorname{SU}(n), \operatorname{Sp}(n)$
    are often called the *classical groups* (but this term is used a bit
    loosely).

4.  For any Lie group $G$, its universal cover $\widetilde{G}$ is again
    a Lie group. The universal cover
    $\widetilde{ \operatorname{SL}(2,\mathbb{R})}$ is an example of a
    Lie group that is not isomorphic to a matrix Lie group.
:::

## Lie algebras

::: {.definition}
*Definition 4*. A Lie algebra is a vector space $\mathfrak{g}$, together
with a bilinear map
$[\cdot,\cdot]:\,\mathfrak{g}\times\mathfrak{g}\to \mathfrak{g}$
satisfying *anti-symmetry*
$$[\xi,\eta]=-[\eta,\xi] \mbox{ for all } \xi,\eta\in\mathfrak{g},$$ and
the *Jacobi identity*,
$$[\xi,[\eta,\zeta]]+[\eta,[\zeta,\xi]]+[\zeta,[\xi,\eta]]=0
\mbox{ for all }\xi,\eta,\zeta\in\mathfrak{g}.$$ The map $[\cdot,\cdot]$
is called the Lie bracket. A morphism of Lie algebras
$\mathfrak{g}_1,\mathfrak{g}_2$ is a linear map
$\phi\colon \mathfrak{g}_1\to \mathfrak{g}_2$ preserving brackets.
:::

.1in The space
$$\mathfrak{gl}(n,\mathbb{R})=\operatorname{Mat}_n(\mathbb{R})$$ is a
Lie algebra, with bracket the commutator of matrices. (The notation
indicates that we think of $\operatorname{Mat}_n(\mathbb{R})$ as a Lie
algebra, not as an algebra.)

A Lie subalgebra of $\mathfrak{gl}(n,\mathbb{R})$, i.e. a subspace
preserved under commutators, is called a *matrix Lie algebra*. For
instance,
$$\mathfrak{sl}(n,\mathbb{R})=\{B\in\operatorname{Mat}_n(\mathbb{R})\colon \operatorname{tr}(B)=0\}$$
and
$$\mathfrak{o}(n)=\{B \in\operatorname{Mat}_n(\mathbb{R})\colon \ B^T=-B\}$$
are matrix Lie algebras (as one easily verifies). It turns out that
every finite-dimensional real Lie algebra is isomorphic to a matrix Lie
algebra (*Ado's theorem*), but the proof is not easy.

The following examples of finite-dimensional Lie algebras correspond to
our examples for Lie groups. The origin of this correspondence will soon
become clear.

::: {.examples}
*Examples 5*.

1.  Any vector space $V$ is a Lie algebra for the zero bracket.

2.  Any associative algebra $\mathcal{A}$ can be viewed as a Lie algebra
    under commutator. Replacing $\mathcal{A}$ with matrix algebras over
    $\mathcal{A}$, it follows that
    $\mathfrak{gl}(n,\mathcal{A})=\operatorname{Mat}_n(\mathcal{A})$, is
    a Lie algebra, with bracket the commutator. If $\mathcal{A}$ is
    commutative, then the subspace
    $\mathfrak{sl}(n,\mathcal{A})\subset \mathfrak{gl}(n,\mathcal{A})$
    of matrices of trace $0$ is a Lie subalgebra.

3.  We are mainly interested in the cases
    $\mathcal{A}=\mathbb{R},\mathbb{C},\mathbb{H}$. Define an inner
    product on $\mathbb{R}^n,\mathbb{C}^n,\mathbb{H}^n$ by putting
    $$\langle x,y\rangle=\sum_{i=1}^n \overline{x}_i y_i,$$ and define
    $\mathfrak{o}(n),\ \mathfrak{u}(n),\ \mathfrak{sp}(n)$ as the
    matrices in
    $\mathfrak{gl}(n,\mathbb{R}),\ \mathfrak{gl}(n,\mathbb{C}),\ \mathfrak{gl}(n,\mathbb{H})$
    satisfying $$\langle B x,y\rangle=-\langle x,By\rangle$$ for all
    $x,y$. These are all Lie algebras called the (infinitesimal)
    orthogonal, unitary, and symplectic Lie algebras. For
    $\mathbb{R},\mathbb{C}$ one can impose the additional condition
    $\operatorname{tr}(B)=0$, thus defining the special orthogonal and
    special unitary Lie algebras $\mathfrak{so}(n),\ \mathfrak{su}(n)$.
    Actually, $$\mathfrak{so}(n)=\mathfrak{o}(n)$$ since $B^T=-B$
    already implies $\operatorname{tr}(B)=0$.
:::

# The covering $\operatorname{SU}(2)\to  \operatorname{SO}(3)$

The Lie group $\operatorname{SO}(3)$ consists of rotations in
3-dimensional space. Let $D\subset \mathbb{R}^3$ be the closed ball of
radius $\pi$. Any element $x\in D$ represents a rotation by an angle
$||x||$ in the direction of $x$. This is a 1-1 correspondence for points
in the interior of $D$, but if $x\in \partial D$ is a boundary point
then $x,-x$ represent the same rotation. Letting $\sim$ be the
equivalence relation on $D$, given by antipodal identification on the
boundary, we have $D^3/\sim =\mathbb{R}P(3)$. Thus
$$\operatorname{SO}(3)=\mathbb{R}P(3)$$ (at least, topologically). With
a little extra effort (which we'll make below) one can make this into a
diffeomorphism of manifolds.

By definition
$$\operatorname{SU}(2)=\{A\in \operatorname{Mat}_2(\mathbb{C})|\ A^\dagger=A^{-1},\ \det(A)=1\}.$$
Using the formula for the inverse matrix, we see that
$\operatorname{SU}(2)$ consists of matrices of the form
$$\operatorname{SU}(2)=\left\{\left(\begin{array}{cc}
z&-\overline{w}\\ w& \overline{z}
\end{array}\right)|\ |w|^2+|z|^2=1\right\}.$$ That is,
$\operatorname{SU}(2)=S^3$ as a manifold. Similarly,
$$\mathfrak{su}(2)=\left\{\left(\begin{array}{cc}
it &-\overline{u}\\ u& -it
\end{array}\right)|\ t\in\mathbb{R},\ u\in\mathbb{C}\right\}$$ gives an
identification
$\mathfrak{su}(2)=\mathbb{R}\oplus \mathbb{C}=\mathbb{R}^3$. Note that
for a matrix $B$ of this form, $\det(B)=t^2+|u|^2$, so that $\det$
corresponds to $||\cdot||^2$ under this identification.

The group $\operatorname{SU}(2)$ acts linearly on the vector space
$\mathfrak{su}(2)$, by matrix conjugation: $B\mapsto ABA^{-1}$. Since
the conjugation action preserves $\det$, we obtain a linear action on
$\mathbb{R}^3$, preserving the norm. This defines a Lie group morphism
from $\operatorname{SU}(2)$ into $\operatorname{O}(3)$. Since
$\operatorname{SU}(2)$ is connected, this must take values in the
identity component:
$$\phi\colon  \operatorname{SU}(2)\to  \operatorname{SO}(3).$$ The
kernel of this map consists of matrices $A\in \operatorname{SU}(2)$ such
that $A
B A^{-1}=B$ for all $B\in\mathfrak{su}(2)$. Thus, $A$ commutes with all
skew-adjoint matrices of trace $0$. Since $A$ commutes with multiples of
the identity, it then commutes with all skew-adjoint matrices. But since
$\operatorname{Mat}_n(\mathbb{C})=\mathfrak{u}(n)\oplus i\mathfrak{u}(n)$
(the decomposition into skew-adjoint and self-adjoint parts), it then
follows that $A$ is a multiple of the identity matrix. Thus
$\operatorname{ker}(\phi)=\{I,-I\}$ is discrete. Since
${\mbox{d}}_e\phi$ is an isomorphism, it follows that the map $\phi$ is
a double covering. This exhibits $\operatorname{SU}(2)=S^3$ as the
double cover of $\operatorname{SO}(3)$.

# The Lie algebra of a Lie group

## Review: Tangent vectors and vector fields

We begin with a quick reminder of some manifold theory, partly just to
set up our notational conventions.

Let $M$ be a manifold, and $C^\infty(M)$ its algebra of smooth
real-valued functions. For $m\in M$, we define the tangent space $T_mM$
to be the space of directional derivatives:
$$T_mM=\{v\in  \operatorname{Hom}(C^\infty(M),\mathbb{R})|\ v(fg)=v(f) g+v(g) f\}.$$
Here $v(f)$ is local, in the sense that $v(f)=v(f')$ if $f'-f$ vanishes
on a neighborhood of $m$.

::: {.example}
*Example 6*. If $\gamma\colon J\to M$, $J\subset \mathbb{R}$ is a smooth
curve we obtain tangent vectors to the curve,
$$\dot{\gamma}(t)\in T_{\gamma(t)}M,\ \ \dot{\gamma}(t)(f)= \frac{\partial}{\partial t}|_{t=0}f(\gamma(t)).$$
:::

::: {.example}
*Example 7*. We have $T_x\mathbb{R}^n=\mathbb{R}^n$, where the
isomorphism takes $a\in\mathbb{R}^n$ to the corresponding velocity
vector of the curve $x+t a$. That is,
$$v(f)=\frac{\partial}{\partial t}|_{t=0}f(x+ta)=\sum_{i=1}^n a_i \frac{\partial f}{\partial x_i}.$$
:::

A smooth map of manifolds $\phi\colon M\to M'$ defines a *tangent map*:
$${\mbox{d}}_m\phi\colon T_mM\to T_{\phi(m)}M',\ \ 
({\mbox{d}}_m\phi(v))(f)=v(f\circ \phi).$$ The locality property ensures
that for an open neighborhood $U\subset M$, the inclusion identifies
$T_mU=T_mM$. In particular, a coordinate chart
$\phi\colon U\to \phi(U)\subset \mathbb{R}^n$ gives an isomorphism
$${\mbox{d}}_m\phi\colon T_mM=T_mU\to T_{\phi(m)}\phi(U)=T_{\phi(m)}\mathbb{R}^n=\mathbb{R}^n.$$
Hence $T_mM$ is a vector space of dimension $n=\dim M$. The union
$TM=\bigcup_{m\in M}T_mM$ is a vector bundle over $M$, called the
tangent bundle. Coordinate charts for $M$ give vector bundle charts for
$TM$. For a smooth map of manifolds $\phi\colon M\to M'$, the entirety
of all maps ${\mbox{d}}_m\phi$ defines a smooth vector bundle map
$${\mbox{d}}\phi\colon TM\to TM'.$$

A *vector field* on $M$ is a derivation
$X\colon C^\infty(M)\to C^\infty(M)$. That is, it is a linear map
satisfying $$X(fg)=X(f) g+f X(g).$$ The space of vector fields is
denoted $\mathfrak{X}(M)=\operatorname{Der}(C^\infty(M))$. Vector fields
are local, in the sense that for any open subset $U$ there is a
well-defined restriction $X|_U\in\mathfrak{X}(U)$ such that
$X|_U(f|_U)=(X(f))|_U$. For any vector field, one obtains tangent
vectors $X_m\in T_mM$ by $X_m(f)=X(f)|_m$. One can think of a vector
field as an assignment of tangent vectors, depending smoothly on $m$.
More precisely, a vector field is a smooth section of the tangent bundle
$TM$. In local coordinates, vector fields are of the form
$\sum_i a_i \frac{\partial}{\partial x_i}$ where the $a_i$ are smooth
functions.

It is a general fact that the commutator of derivations of an algebra is
again a derivation. Thus, $\mathfrak{X}(M)$ is a Lie algebra for the
bracket $$[X,Y]=X\circ Y-Y\circ X.$$

In general, smooth maps $\phi\colon M\to M'$ of manifolds do not induce
maps of the Lie algebras of vector fields (unless $\phi$ is a
diffeomorphism). One makes the following definition.

::: {.definition}
*Definition 8*. Let $\phi\colon M\to N$ be a smooth map. Vector fields
$X,Y$ on $M,N$ are called $\phi$-related, written $X\sim_\phi Y$, if
$$X(f\circ \phi)=Y(f)\circ \phi$$ for all $f\in C^\infty(M')$.
:::

In short, $X\circ \phi^*=\phi^* \circ Y$ where
$\phi^*\colon C^\infty(N)\to C^\infty(M),\ f\mapsto f\circ \phi$.

One has $X\sim_\phi Y$ if and only if $Y_{\phi(m)}
={\mbox{d}}_m\phi (X_m)$. From the definitions, one checks
$$X_1\sim_\phi
Y_1,\ X_2\sim_\phi Y_2\  \Rightarrow\  [X_1,X_2]\sim_\phi[Y_1,Y_2].$$

::: {.example}
*Example 9*. Let $j\colon S\hookrightarrow M$ be an embedded
submanifold. We say that a vector field $X$ is *tangent to $S$* if
$X_m\in T_mS\subset T_mM$ for all $m\in S$. We claim that if two vector
fields are tangent to $S$ then so is their Lie bracket. That is, the
vector fields on $M$ that are tangent to $S$ form a Lie subalgebra.

Indeed, the definition means that there exists a vector field
$X_S\in\mathfrak{X}(S)$ such that $X_S\sim_j X$. Hence, if $X,Y$ are
tangent to $S$, then $[X_S,Y_S]\sim_j [X,Y]$, so $[X_S,Y_S]$ is tangent.

Similarly, the vector fields vanishing on $S$ are a Lie subalgebra.
:::

Let $X\in\mathfrak{X}(M)$. A curve
$\gamma(t),\ t\in J\subset \mathbb{R}$ is called an *integral curve* of
$X$ if for all $t\in J$, $$\dot{\gamma}(t)=X_{\gamma(t)}.$$ In local
coordinates, this is an ODE
$\frac{{\mbox{d}}x_i}{{\mbox{d}}t}=a_i(x(t))$. The existence and
uniqueness theorem for ODE's (applied in coordinate charts, and then
patching the local solutions) shows that for any $m\in M$, there is a
unique maximal integral curve $\gamma(t),\ t\in J_m$ with $\gamma(0)=m$.

::: {.definition}
*Definition 10*. A vector field $X$ is *complete* if for all $m\in M$,
the maximal integral curve with $\gamma(0)=m$ is defined for all
$t\in\mathbb{R}$.
:::

In this case, one obtains a *smooth* map
$$\Phi\colon \mathbb{R}\times M\to M,\ (t,m)\mapsto \Phi_t(m)$$ such
that $\gamma(t)=\Phi_{-t}(m)$ is the integral curve through $m$. The
uniqueness property gives
$$\Phi_0=\operatorname{Id},\ \ \Phi_{t_1+t_2}=\Phi_{t_1}\circ \Phi_{t_2}$$
i.e. $t\mapsto \Phi_t$ is a group homomorphism. Conversely, given such a
group homomorphism such that the map $\Phi$ is smooth, one obtains a
vector field $X$ by setting
$$X=\frac{\partial}{\partial t}|_{t=0} \Phi_{-t}^*,$$ as operators on
functions. That is,
$X(f)(m)=\frac{\partial}{\partial t}|_{t=0} f(\Phi_{-t}(m))$. [^1]

The Lie bracket of vector fields measure the non-commutativity of their
flows. In particular, if $X,Y$ are complete vector fields, with flows
$\Phi_t^X,\ \Phi_s^Y$, then $[X,Y]=0$ if and only if
$$\Phi_t^X\circ \Phi_s^Y =\Phi_s^Y \circ \Phi_t^X.$$ In this case, $X+Y$
is again a complete vector field with flow
$\Phi_t^{X+Y}=\Phi_t^X\circ \Phi_t^Y$. (The right hand side defines a
flow since the flows of $X,Y$ commute, and the corresponding vector
field is identified by taking a derivative at $t=0$.)

## The Lie algebra of a Lie group

Let $G$ be a Lie group, and $TG$ its tangent bundle. For all $a\in
G$, the left,right translations $$L_a\colon G\to G,\ g\mapsto ag$$
$$R_a\colon G\to G,\ g\mapsto ga$$ are smooth maps. Their differentials
at $e$ define isomorphisms ${\mbox{d}}_g
L_a\colon T_g G\to T_{ag} G$, and similarly for $R_a$. Let
$$\mathfrak{g}=T_eG$$ be the tangent space to the group unit.

A vector field $X\in \mathfrak{X}(G)$ is called left-invariant if
$$X\sim_{L_a} X$$ for all $a\in G$, i.e. if it commutes with $L_a^*$.
The space $\mathfrak{X}^L(G)$ of left-invariant vector fields is thus a
Lie subalgebra of $\mathfrak{X}(G)$. Similarly the space of
right-invariant vector fields $\mathfrak{X}^R(G)$ is a Lie subalgebra.

::: {.lemma}
**Lemma 11**. *The map
$$\mathfrak{X}^L(G)\to \mathfrak{g},\ X\mapsto X_e$$ is an isomorphism
of vector spaces. (Similarly for $\mathfrak{X}^R(G)$.)*
:::

::: {.proof}
*Proof.* For a left-invariant vector field, $X_a=({\mbox{d}}_eL_a)X_e$,
hence the map is injective. To show that it is surjective, let
$\xi\in \mathfrak{g}$, and put $X_a=({\mbox{d}}_eL_a)\xi \in T_a G$. We
have to show that the map $G\to TG,\ 
a\mapsto X_a$ is smooth. It is the composition of the map
$G\to G\times\mathfrak{g},\ g\mapsto (g,\xi)$ (which is obviously
smooth) with the map
$G\times\mathfrak{g}\to TG,\ (g,\xi)\mapsto {\mbox{d}}_e L_g(\xi)$. The
latter map is the restriction of
${\mbox{d}}\operatorname{Mult}\colon TG\times TG\to TG$ to
$G\times\mathfrak{g}\subset TG\times TG$, and hence is smooth. ◻
:::

We denote by $\xi^L\in\mathfrak{X}^L(G),\ \xi^R\in\mathfrak{X}^R(G)$ the
left,right invariant vector fields defined by $\xi\in \mathfrak{g}$.
Thus $$\xi^L|_e=\xi^R|_e=\xi$$

::: {.definition}
*Definition 12*. The Lie algebra of a Lie group $G$ is the vector space
$\mathfrak{g}=T_eG$, equipped with the unique bracket such that
$$[\xi,\eta]^L=[\xi^L,\eta^L],\ \ \xi\in\mathfrak{g}.$$
:::

::: {.remark}
*Remark 13*. If you use the right-invariant vector fields to define the
bracket on $\mathfrak{g}$, we get a minus sign. Indeed, note that
$\operatorname{Inv}\colon G\to G$ takes left translations to right
translations. Thus, $\xi^R$ is $\operatorname{Inv}$-related to some left
invariant vector field. Since
${\mbox{d}}_e\operatorname{Inv}=-\operatorname{Id}$, we see
$\xi^R\sim_{\operatorname{Inv}}-\xi^L$. Consequently,
$$[\xi^R,\eta^R]\sim_{\operatorname{Inv}} [-\xi^L,-\eta^L]=[\xi,\eta]^L.$$
But also $-[\xi,\eta]^R\sim_{\operatorname{Inv}} [\xi,\eta]^L$, hence we
get $$[\xi^R,\zeta^R]=-[\xi,\zeta]^R.$$
:::

The construction of a Lie algebra is compatible with morphisms. That is,
we have a *functor* from Lie groups to finite-dimensional Lie algebras.

::: {#th:phirelated .theorem}
**Theorem 14**. *For any morphism of Lie groups $\phi\colon G\to G'$,
the tangent map ${\mbox{d}}_e\phi\colon \mathfrak{g}\to \mathfrak{g}'$
is a morphism of Lie algebras. For all
$\xi\in\mathfrak{g},\ \xi'={\mbox{d}}_e\phi(\xi)$ one has
$$\xi^L\sim_\phi (\xi')^L,\ \xi^R\sim_\phi (\xi')^R.$$*
:::

::: {.proof}
*Proof.* Suppose $\xi\in\mathfrak{g}$, and let
$\xi'={\mbox{d}}_e\phi(\xi)\in\mathfrak{g}'$. The property
$\phi(ab)=\phi(a)\phi(b)$ shows that
$L_{\phi(a)}\circ \phi=\phi\circ L_a$. Taking the differential at $e$,
and applying to $\xi$ we find
$({\mbox{d}}_e L_{\phi(a)})\xi'=({\mbox{d}}_a\phi)({\mbox{d}}_e L_a(\xi))$
hence $(\xi')^L_{\phi(a)}= ({\mbox{d}}_a\phi)(\xi^L_a)$. That is
$\xi^L\sim_{\phi}(\xi')^L$. The proof for right-invariant vector fields
is similar. Since the Lie brackets of two pairs of $\phi$-related vector
fields are again $\phi$-related, it follows that ${\mbox{d}}_e\phi$ is a
Lie algebra morphism. ◻
:::

::: {.remark}
*Remark 15*. Two special cases are worth pointing out.

1.  Let $V$ be a finite-dimensional (real) vector space. A
    representation of a Lie group $G$ on $V$ is a Lie group morphism
    $G\to  \operatorname{GL}(V)$. A representation of a Lie algebra
    $\mathfrak{g}$ on $V$ is a Lie algebra morphism
    $\mathfrak{g}\to \mathfrak{gl}(V)$. The Theorem shows that the
    differential of any Lie group representation is a representation of
    its a Lie algebra.

2.  An *automorphism of a Lie group $G$* is a Lie group morphism
    $\phi\colon G\to G$ from $G$ to itself, with $\phi$ a
    diffeomorphism. An *automorphism of a Lie algebra* is an invertible
    morphism from $\mathfrak{g}$ to itself. By the Theorem, the
    differential of any Lie group automorphism is an automorphism of its
    Lie algebra. As an example, $\operatorname{SU}(n)$ has a Lie group
    automorphism given by complex conjugation of matrices; its
    differential is a Lie algebra automorphism of $\mathfrak{su}(n)$
    given again by complex conjugation.
:::

::: {.exercise}
*Exercise 16*. Let $\phi\colon G\to G$ be a Lie group automorphism. Show
that its fixed point set is a closed subgroup of $G$, hence a Lie
subgroup. Similarly for Lie algebra automorphisms. What is the fixed
point set for the complex conjugation automorphism of
$\operatorname{SU}(n)$?
:::

# The exponential map

::: {.theorem}
**Theorem 17**. *The left-invariant vector fields $\xi^L$ are complete,
i.e. they define a flow $\Phi^\xi_t$ such that
$$\xi^L=\frac{\partial}{\partial t}|_{t=0}(\Phi^\xi_{-t})^*.$$ Letting
$\phi^\xi(t)$ denote the unique integral curve with $\phi^\xi(0)=e$. It
has the property $$\phi^\xi(t_1+t_2)=\phi^\xi(t_1)\phi^\xi(t_2),$$ and
the flow of $\xi^L$ is given by right translations:
$$\Phi^\xi_t(g)=g\phi^\xi(-t).$$ Similarly, the right-invariant vector
fields $\xi^R$ are complete. $\phi^\xi(t)$ is an integral curve for
$\xi^R$ as well, and the flow of $\xi^R$ is given by left translations,
$g\mapsto \phi^\xi(-t)g$.*
:::

::: {.proof}
*Proof.* If $\gamma(t),\ t\in J\subset \mathbb{R}$ is an integral curve
of a left-invariant vector field $\xi^L$, then its left translates
$a\gamma(t)$ are again integral curves. In particular, for $t_0\in J$
the curve $t\mapsto \gamma(t_0)\gamma(t)$ is again an integral curve.
Hence it coincides with $\gamma(t_0+t)$ for all $t\in J\cap
(J-t_0)$. In this way, an integral curve defined for small $|t|$ can be
extended to an integral curve for all $t$, i.e. $\xi^L$ is complete.

Since $\xi^L$ is left-invariant, so is its flow $\Phi^\xi_t$. Hence
$$\Phi^\xi_t(g)=\Phi^\xi_t \circ L_g(e)=L_g\circ \Phi^\xi_t(e)
=g \Phi^\xi_t(e)=g\phi^\xi(-t).$$ The property
$\Phi^\xi_{t_1+t_2}=\Phi^\xi_{t_1}\Phi^\xi_{t_2}$ shows that
$\phi^\xi(t_1+t_2)=\phi^\xi(t_1)\phi^\xi(t_2)$. Finally, since
$\xi^L\sim_{\operatorname{Inv}}-\xi^R$, the image
$$\operatorname{Inv}(\phi^\xi(t))=\phi^\xi(t)^{-1}=\phi^\xi(-t)$$ is an
integral curve of $-\xi^R$. Equivalently, $\phi^\xi(t)$ is an integral
curve of $\xi^R$. ◻
:::

Since left and right translations commute, it follows in particular that
$$[\xi^L,\eta^R]=0.$$

::: {.definition}
*Definition 18*. A 1-parameter subgroup of $G$ is a group homomorphism
$\phi\colon \mathbb{R}\to G$.
:::

We have seen that every $\xi\in\mathfrak{g}$ defines a 1-parameter
group, by taking the integral curve through $e$ of the left-invariant
vector field $\xi^L$. Every 1-parameter group arises in this way:

::: {.proposition}
**Proposition 19**. *If $\phi$ is a 1-parameter subgroup of $G$, then
$\phi=\phi^\xi$ where $\xi=\dot{\phi}(0)$. One has
$$\phi^{s\xi}(t)=\phi^\xi(st).$$ The map
$$\mathbb{R}\times\mathfrak{g}\to G,\ (t,\xi)\mapsto \phi^\xi(t)$$ is
smooth.*
:::

::: {.proof}
*Proof.* Let $\phi(t)$ be a 1-parameter group. Then
$\Phi_t(g):=g\phi(-t)$ defines a flow. Since this flow commutes with
left translations, it is the flow of a left-invariant vector field,
$\xi^L$. Here $\xi$ is determined by taking the derivative of
$\Phi_{-t}(e)=\phi(t)$ at $t=0$: $\xi=\dot{\phi}(0)$. This shows
$\phi=\phi^\xi$. As an application, since $\psi(t)=\phi^{\xi}(st)$ is a
1-parameter group with $\dot{\psi}^{\xi}(0)=s\dot{\phi}^\xi(0)=s\xi$, we
have $\phi^\xi(st)=\phi^{s\xi}(t)$. Smoothness of the map
$(t,\xi)\mapsto
\phi^\xi(t)$ follows from the smooth dependence of solutions of ODE's on
parameters. ◻
:::

::: {.definition}
*Definition 20*. The *exponential map* for the Lie group $G$ is the
smooth map defined by
$$\exp\colon \mathfrak{g}\to G,\ \xi\mapsto \phi^\xi(1),$$ where
$\phi^\xi(t)$ is the 1-parameter subgroup with $\dot{\phi}^\xi(0)=\xi$.
:::

::: {.proposition}
**Proposition 21**. *We have $$\phi^\xi(t)=\exp(t\xi).$$ If
$[\xi,\eta]=0$ then $$\exp(\xi+\eta)=\exp(\xi)\exp(\eta).$$*
:::

::: {.proof}
*Proof.* By the previous Proposition,
$\phi^\xi(t)=\phi^{t\xi}(1)=\exp(t\xi)$. For the second claim, note that
$[\xi,\eta]=0$ implies that $\xi^L,\eta^L$ commute. Hence their flows
$\Phi^\xi_t,\ \Phi^\eta_t$, and $\Phi^\xi_t \circ \Phi^\eta_t$ is the
flow of $\xi^L+\eta^L$. Hence it coincides with $\Phi^{\xi+\eta}_t$.
Applying to $e$, we get $\phi^\xi(t)\phi^\eta(t)=\phi^{\xi+\eta}(t)$.
Now put $t=1$. ◻
:::

In terms of the exponential map, we may now write the flow of $\xi^L$ as
$\Phi^\xi_t(g)=g\exp(-t\xi)$, and similarly for the flow of $\xi^R$.
That is, $$\xi^L=\frac{\partial}{\partial t}|_{t=0}R_{\exp(t\xi)}^*,\ \ 
\xi^R=\frac{\partial}{\partial t}|_{t=0}L_{\exp(t\xi)}^*.$$

::: {.proposition}
**Proposition 22**. *The exponential map is functorial with respect to
Lie group homomorphisms $\phi\colon G\to H$. That is, we have a
commutative diagram $$\begin{CD} G @>{\phi}>> H \\
@A{\exp}AA @AA{\exp}A \\
\mathfrak{g}@>>{{\mbox{d}}_e\phi}> \mathfrak{h}
\end{CD}$$*
:::

::: {.proof}
*Proof.* $t\mapsto \phi(\exp(t\xi))$ is a 1-parameter subgroup of $H$,
with differential at $e$ given by
$$\frac{d}{d t}\Big|_{t=0} \phi(\exp(t\xi))={\mbox{d}}_e\phi(\xi).$$
Hence $\phi(\exp(t\xi))=\exp(t {\mbox{d}}_e\phi(\xi))$. Now put $t=1$. ◻
:::

::: {.proposition}
**Proposition 23**. *Let $G\subset  \operatorname{GL}(n,\mathbb{R})$ be
a matrix Lie group, and
$\mathfrak{g}\subset \mathfrak{gl}(n,\mathbb{R})$ its Lie algebra. Then
$\exp\colon \mathfrak{g}\to G$ is just the exponential map for matrices,
$$\exp(\xi)=\sum_{n=0}^\infty \frac{1}{n!}\xi^n.$$ Furthermore, the Lie
bracket on $\mathfrak{g}$ is just the commutator of matrices.*
:::

::: {.proof}
*Proof.* By the previous Proposition, applied to the inclusion of $G$ in
$\operatorname{GL}(n,\mathbb{R})$, the exponential map for $G$ is just
the restriction of that for $\operatorname{GL}(n,\mathbb{R})$. Hence it
suffices to prove the claim for $G= \operatorname{GL}(n,\mathbb{R})$.
The function $\sum_{n=0}^\infty \frac{t^n}{n!}\xi^n$ is a 1-parameter
group in $\operatorname{GL}(n,\mathbb{R})$, with derivative at $0$ equal
to $\xi\in \mathfrak{gl}(n,\mathbb{R})$. Hence it coincides with
$\exp(t\xi)$. Now put $t=1$. ◻
:::

::: {.proposition}
**Proposition 24**. *For a matrix Lie group
$G\subset  \operatorname{GL}(n,\mathbb{R})$, the Lie bracket on
$\mathfrak{g}=T_IG$ is just the commutator of matrices.*
:::

::: {.proof}
*Proof.* It suffices to prove for $G= \operatorname{GL}(n,\mathbb{R})$.
Using $\xi^L=\frac{\partial}{\partial t}\Big|_{t=0} R_{\exp(t\xi)}^*$ we
have $$\begin{split}
\lefteqn{\frac{\partial}{\partial s}\Big|_{s=0}\frac{\partial}{\partial t}\Big|_{t=0} 
(R_{\exp(-t\xi)}^*R_{\exp(-s\eta)}^* 
R_{\exp(t\xi)}^* R_{\exp(s\eta)}^*)}\\
&=\frac{\partial}{\partial s}\Big|_{s=0}(R_{\exp(-s\eta)}^* \xi^L R_{\exp(s\eta)}^*-\xi^L)\\
&= \xi^L\eta^L-\eta^L\xi^L\\
&=[\xi,\eta]^L.
\end{split}$$ On the other hand, write
$$R_{\exp(-t\xi)}^*R_{\exp(-s\eta)}^* 
R_{\exp(t\xi)}^* R_{\exp(s\eta)}^*
=R_{\exp(-t\xi)\exp(-s\eta)\exp(t\xi)\exp(s\eta)}^*.$$ Since the Lie
group exponential map for $\operatorname{GL}(n,\mathbb{R})$ coincides
with the exponential map for matrices, we may use Taylor's expansion,
$$\exp(-t\xi)\exp(-s\eta)\exp(t\xi)\exp(s\eta)=I+st(\xi\eta-\eta\xi)+\ldots
=\exp(st(\xi\eta-\eta\xi))+\ldots$$ where $\ldots$ denotes terms that
are cubic or higher in $s,t$. Hence
$$R_{\exp(-t\xi)\exp(-s\eta)\exp(t\xi)\exp(s\eta)}^*=R_{\exp(st (\xi\eta-\eta\xi)}^*+\ldots$$
and consequently
$$\frac{\partial}{\partial s}\Big|_{s=0}\frac{\partial}{\partial t}\Big|_{t=0} R_{\exp(-t\xi)\exp(-s\eta)\exp(t\xi)\exp(s\eta)}^*
=\frac{\partial}{\partial s}\Big|_{s=0}\frac{\partial}{\partial t}\Big|_{t=0} R_{\exp(st (\xi\eta-\eta\xi))}^*
=(\xi\eta-\eta\xi)^L.$$ We conclude that $[\xi,\eta]=\xi\eta-\eta\xi$. ◻
:::

::: {.remark}
*Remark 25*. Had we defined the Lie algebra using right-invariant vector
fields, we would have obtained *minus* the commutator of matrices.
Nonetheless, some authors use that convention.
:::

The exponential map gives local coordinates for the group $G$ on a
neighborhood of $e$:

::: {.proposition}
**Proposition 26**. *The differential of the exponential map at the
origin is ${\mbox{d}}_0\exp=\operatorname{id}$. As a consequence, there
is an open neighborhood $U$ of $0\in\mathfrak{g}$ such that the
exponential map restricts to a diffeomorphism $U\to \exp(U)$.*
:::

::: {.proof}
*Proof.* Let $\gamma(t)=t\xi$. Then $\dot{\gamma}(0)=\xi$ since
$\exp(\gamma(t))=\exp(t\xi)$ is the 1-parameter group, we have
$$({\mbox{d}}_0\exp)(\xi)=\frac{\partial}{\partial t}|_{t=0} \exp(t\xi)=\xi.$$ ◻
:::

# Cartan's theorem on closed subgroups

Using the exponential map, we are now in position to prove Cartan's
theorem on closed subgroups.

::: {.theorem}
**Theorem 27**. *Let $H$ be a closed subgroup of a Lie group $G$. Then
$H$ is an embedded submanifold, and hence is a Lie subgroup.*
:::

We first need a Lemma. Let $V$ be a Euclidean vector space, and $S(V)$
its unit sphere. For $v\in V\backslash\{0\}$, let
$[v]=\frac{v}{||v||}\in S(V)$.

::: {.lemma}
**Lemma 28**. *Let $v_n,v\in V\backslash\{0\}$ with
$\lim_{n\to \infty}v_n=0$. Then
$$\lim_{n\to \infty} [v_n]=[v] \Leftrightarrow \exists a_n\in\mathbb{N}\colon \lim_{n\to \infty} a_nv_n=v.$$*
:::

::: {.proof}
*Proof.* The implication $\Leftarrow$ is obvious. For the opposite
direction, suppose $\lim_{n\to \infty} [v_n]=[v]$. Let
$a_n\in\mathbb{N}$ be defined by $a_n-1<\frac{||v||}{||v_n||}\le a_n$.
Since $v_n\to 0$, we have
$\lim_{n\to \infty} a_n  \frac{||v_n||}{||v||}=1$, and
$$a_n v_n =\left(a_n  \frac{||v_n||}{||v||}\right) [v_n]\, ||v||\to [v]\,||v||=v.\qedhere$$ ◻
:::

::: {.proof}
*Proof of E. Cartan's theorem.* It suffices to construct a submanifold
chart near $e\in H$. (By left translation, one then obtains submanifold
charts near arbitrary $a\in H$.) Choose an inner product on
$\mathfrak{g}$.

We begin with a candidate for the Lie algebra of $H$. Let $W\subset
\mathfrak{g}$ be the subset such that $\xi\in W$ if and only if either
$\xi=0$, or $\xi\not=0$ and there exists $\xi_n\not=0$ with
$$\exp(\xi_n)\in H,\ \ \xi_n\to 0,\ \ [\xi_n]\to [\xi].$$ We will now
show the following:

1.  $\exp(W)\subset H$,

2.  $W$ is a subspace of $\mathfrak{g}$,

3.  There is an open neighborhood $U$ of $0$ and a diffeomorphism
    $\phi\colon U\to \phi(U)\subset G$ with $\phi(0)=e$ such that
    $$\phi(U\cap W)=\phi(U)\cap H.$$ (Thus $\phi$ defines a submanifold
    chart near $e$.)

Step (i). Let $\xi\in W\backslash\{0\}$, with sequence $\xi_n$ as in the
definition of $W$. By the Lemma, there are $a_n\in\mathbb{N}$ with
$a_n\xi_n\to \xi$. Since $\exp(a_n\xi_n)=\exp(\xi_n)^{a_n}\in H$, and
$H$ is closed, it follows that
$$\exp(\xi)=\lim_{n\to \infty} \exp(a_n\xi_n)\in H.$$

Step (ii). Since the subset $W$ is invariant under scalar
multiplication, we just have to show that it is closed under addition.
Suppose $\xi,\eta\in W$. To show that $\xi+\eta\in W$, we may assume
that $\xi,\eta,\xi+\eta$ are all non-zero. For $t$ sufficiently small,
we have $$\exp(t \xi)\exp(t \eta)=\exp(u(t))$$ for some smooth curve
$t\mapsto u(t)\in\mathfrak{g}$ with $u(0)=0$. Then $\exp(u(t))\in H$ and
$$\lim_{n\to \infty} n\, u(\frac{1}{n})=
\lim_{h\to 0} \frac{u(h)}{h}=\dot{u}(0)=\xi+\eta.$$ hence
$u(\frac{1}{n})\to 0,\ \exp(u(\frac{1}{n})\in H,\  
[u(\frac{1}{n})]\to [\xi+\eta]$. This shows $[\xi+\eta]\in W$, proving
(ii).

Step (iii). Let $W'$ be a complement to $W$ in $\mathfrak{g}$, and
define
$$\phi\colon \mathfrak{g}\cong W\oplus W'\to G,\ \ \phi(\xi+\xi')=\exp(\xi)
\exp(\xi').$$ Since ${\mbox{d}}_0\phi$ is the identity, there is an open
neighborhood $U\subset\mathfrak{g}$ of $0$ such that
$\phi\colon U\to \phi(U)$ is a diffeomorphism. It is automatic that
$\phi(W\cap U)\subset
\phi(W)\cap \phi(U)\subset H\cap \phi(U)$. We want to show that we can
take $U$ sufficiently small so that we also have the opposite inclusion
$$H\cap \phi(U)\subset \phi(W\cap U).$$ Suppose not. Then, any
neighborhood $U_n\subset \mathfrak{g}=W\oplus W'$ of $0$ contains an
element $(\eta_n,\eta_n')$ such that
$$\phi(\eta_n,\eta_n')=\exp(\eta_n)\exp(\eta_n')\in H$$ (i.e.
$\exp(\eta_n')\in H$) but $(\eta_n,\eta_n')\not\in W$ (i.e.
$\eta_n'\not=0$). Thus, taking $U_n$ to be a nested sequence of
neighborhoods with intersection $\{0\}$, we could construct a sequence
$\eta_n'\in W'-\{0\}$ with $\eta_n'\to 0$ and $\exp(\eta_n')\in H$.
Passing to a subsequence we may assume that $[\eta_n']\to [\eta]$ for
some $\eta\in W'\backslash \{0\}$. On the other hand, such a convergence
would mean $\eta\in W$, by definition of $W$. Contradiction. ◻
:::

As remarked earlier, Cartan's theorem is very useful in practice. For a
given Lie group $G$, the term 'closed subgroup' is often used as
synonymous to 'embedded Lie subgroup'.

::: {.examples}
*Examples 29*.

1.  The matrix groups
    $G=\operatorname{O}(n), \operatorname{Sp}(n),  \operatorname{SL}(n,\mathbb{R}),\ldots$
    are all closed subgroups of some $\operatorname{GL}(N,\mathbb{R})$,
    and hence are Lie groups.

2.  Suppose that $\phi\colon G\to H$ is a morphism of Lie groups. Then
    $\operatorname{ker}(\phi)=\phi^{-1}(e)\subset G$ is a closed
    subgroup. Hence it is an embedded Lie subgroup of $G$.

3.  The center $Z(G)$ of a Lie group $G$ is the set of all $a\in G$ such
    that $ag=ga$ for all $a\in G$. It is a closed subgroup, and hence an
    embedded Lie subgroup.

4.  Suppose $H\subset G$ is a closed subgroup. Its *normalizer*
    $N_G(H)\subset G$ is the set of all $a\in G$ such that $aH=Ha$.
    (I.e. $h\in H$ implies $aha^{-1}\in H$.) This is a closed subgroup,
    hence a Lie subgroup. The *centralizer* $Z_G(H)$ is the set of all
    $a\in G$ such that $ah=ha$ for all $h\in H$, it too is a closed
    subgroup, hence a Lie subgroup.
:::

The E. Cartan theorem is just one of many 'automatic smoothness' results
in Lie theory. Here is another.

::: {.theorem}
**Theorem 30**. *Let $G,H$ be Lie groups, and $\phi\colon G\to H$ be a
continuous group morphism. Then $\phi$ is smooth.*
:::

As a corollary, a given topological group carries at most one smooth
structure for which it is a Lie group. For profs of these (and stronger)
statements, see the book by Duistermaat-Kolk.

# The adjoint representations

## Automorphisms

The group $\operatorname{Aut}(\mathfrak{g})$ of automorphisms of a Lie
algebra $\mathfrak{g}$ is closed in the group
$\operatorname{End} (\mathfrak{g})^\times$ of vector space
automorphisms, hence it is a Lie group. To identify its Lie algebra, let
$D\in  \operatorname{End} (\mathfrak{g})$ be such that
$\exp(tD)\in  \operatorname{Aut} (\mathfrak{g})$ for $t\in\mathbb{R}$.
Taking the derivative of the defining condition
$\exp(tD)[\xi,\eta]=[\exp(tD)\xi,\exp(tD)\eta]$, we obtain the property
$$D[\xi,\eta]=[D\xi,\eta]+[\xi,D\eta]$$ saying that $D$ is a
*derivation* of the Lie algebra. Conversely, if $D$ is a derivation then
$$D^n[\xi,\eta]=\sum_{k=0}^n \binom{n}{k} [D^k \xi,\,D^{n-k}\eta]$$ by
induction, which then shows that $\exp(D)=\sum_n \frac{D^n}{n!}$ is an
automorphism. Hence the Lie algebra of
$\operatorname{Aut}(\mathfrak{g})$ is the Lie algebra
$\operatorname{Der}(\mathfrak{g})$ of derivations of $\mathfrak{g}$.

## The adjoint representation of $G$

Recall that an automorphism of a Lie group $G$ is an invertible morphism
from $G$ to itself. The automorphisms form a group
$\operatorname{Aut}(G)$. Any $a\in G$ defines an 'inner' automorphism
$\operatorname{Ad} _a\in \operatorname{Aut}(G)$ by conjugation:
$$\operatorname{Ad} _a(g)=aga^{-1}$$ Indeed, $\operatorname{Ad} _a$ is
an automorphism since
$\operatorname{Ad} _a^{-1}= \operatorname{Ad} _{a^{-1}}$ and
$$\operatorname{Ad} _a(g_1g_2)= ag_1g_2 a^{-1}=ag_1 a^{-1}ag_2
a^{-1}= \operatorname{Ad} _a(g_1) \operatorname{Ad} _a(g_2).$$ Note also
that
$\operatorname{Ad} _{a_1 a_2}= \operatorname{Ad} _{a_1} \operatorname{Ad} _{a_2}$,
thus we have a group morphism
$$\operatorname{Ad} \colon G\to \operatorname{Aut}(G)$$ into the group
of automorphisms. The kernel of this morphism is the center $Z(G)$, the
image is (by definition) the subgroup $\operatorname{Int}(G)$ of inner
automorphisms. Note that for any $\phi\in \operatorname{Aut}(G)$, and
any $a\in G$,
$$\phi\circ  \operatorname{Ad} _a\circ \phi^{-1}= \operatorname{Ad} _{\phi(a)}.$$
That is, $\operatorname{Int}(G)$ is a *normal* subgroup of
$\operatorname{Aut}(G)$. (I.e. the conjugate of an inner automorphism by
any automorphism is inner.) It follows that
$\operatorname{Out}(G)=\operatorname{Aut}(G)/\operatorname{Int}(G)$
inherits a group structure; it is called the *outer automorphism group*.

::: {.example}
*Example 31*. If $G= \operatorname{SU}(2)$ the complex conjugation of
matrices is an inner automorphism, but for $G= \operatorname{SU}(n)$
with $n\ge 3$ it cannot be inner (since an inner automorphism has to
preserve the spectrum of a matrix). Indeed, one know that
$\operatorname{Out}( \operatorname{SU}(n))=\mathbb{Z}_2$ for $n\ge 3$.
:::

The differential of the automorphism $\operatorname{Ad} _a\colon G\to G$
is a Lie algebra automorphism, denoted by the same letter:
$\operatorname{Ad} _a={\mbox{d}}_e \operatorname{Ad} _a\colon\mathfrak{g}\to \mathfrak{g}$.
The resulting map
$$\operatorname{Ad} \colon G\to \operatorname{Aut}(\mathfrak{g})$$ is
called the *adjoint representation of $G$*. Since the
$\operatorname{Ad} _a$ are Lie algebra/group morphisms, they are
compatible with the exponential map,
$$\exp( \operatorname{Ad} _a\xi)= \operatorname{Ad} _a\exp(\xi).$$

::: {.remark}
*Remark 32*. If $G\subset  \operatorname{GL}(n,\mathbb{R})$ is a matrix
Lie group, then
$\operatorname{Ad} _a\in \operatorname{Aut}(\mathfrak{g})$ is the
conjugation of matrices $$\operatorname{Ad} _a(\xi)= a\xi a^{-1}.$$ This
follows by taking the derivative of
$\operatorname{Ad} _a(\exp(t\xi))=a\exp(t\xi)a^{-1}$, using that $\exp$
is just the exponential series for matrices.
:::

## The adjoint representation of $\mathfrak{g}$

Let $\operatorname{Der}(\mathfrak{g})$ be the Lie algebra of derivations
of the Lie algebra $\mathfrak{g}$. There is a Lie algebra morphism,
$$\operatorname{ad} \colon \mathfrak{g}\to \operatorname{Der}(\mathfrak{g}),\ \ \xi\mapsto [\xi,\cdot].$$
The fact that $\operatorname{ad} _\xi$ is a derivation follows from the
Jacobi identity; the fact that $\xi\mapsto  \operatorname{ad} _\xi$ it
is a Lie algebra morphism is again the Jacobi identity. The kernel of
$\operatorname{ad}$ is the center of the Lie algebra $\mathfrak{g}$,
i.e. elements having zero bracket with all elements of $\mathfrak{g}$,
while the image is the Lie subalgebra
$\operatorname{Int}(\mathfrak{g})\subset \operatorname{Der}(\mathfrak{g})$
of *inner* derivations. It is a normal Lie subalgebra, i.e
$[\operatorname{Der}(\mathfrak{g}),\operatorname{Int}(\mathfrak{g})]\subset \operatorname{Int}(\mathfrak{g})$,
and the quotient Lie algebra $\operatorname{Out}(\mathfrak{g})$ are the
*outer automorphims*.

Suppose now that $G$ is a Lie group, with Lie algebra $\mathfrak{g}$. We
have remarked above that the Lie algebra of
$\operatorname{Aut}(\mathfrak{g})$ is
$\operatorname{Der}(\mathfrak{g})$. Recall that the differential of any
$G$-representation is a $\mathfrak{g}$-representation. In particular, we
can consider the differential of
$G\to \operatorname{Aut}(\mathfrak{g})$.

::: {.theorem}
**Theorem 33**. *If $\mathfrak{g}$ is the Lie algebra of $G$, then the
adjoint representation
$\operatorname{ad} \colon \mathfrak{g}\to \operatorname{Der}(\mathfrak{g})$
is the differential of the adjoint representation
$\operatorname{Ad} \colon G\to \operatorname{Aut}(\mathfrak{g})$. One
has the equality of operators
$$\exp( \operatorname{ad} _\xi)= \operatorname{Ad} (\exp\xi)$$ for all
$\xi\in\mathfrak{g}$.*
:::

::: {.proof}
*Proof.* For the first part we have to show
$\frac{\partial}{\partial t}\big|_{t=0} \operatorname{Ad} _{\exp(t\xi)}\eta= \operatorname{ad} _\xi\eta$.
This is easy if $G$ is a matrix Lie group:
$$\frac{\partial}{\partial t}\Big|_{t=0} \operatorname{Ad} _{\exp(t\xi)}\eta=\frac{\partial}{\partial t}\Big|_{t=0}\exp(t\xi)\eta\exp(-t\xi)=\xi\eta-\eta\xi=[\xi,\eta].$$
For general Lie groups we compute, using
$$\exp(s \operatorname{Ad} _{\exp(t\xi)}\eta)= \operatorname{Ad} _{\exp(t\xi)}\exp(s\eta)
=\exp(t\xi)\exp(s\eta)\exp(-t\xi),$$ $$\begin{split}
\frac{\partial}{\partial t}\Big|_{t=0} ( \operatorname{Ad} _{\exp(t\xi)}\eta)^L
&=\frac{\partial}{\partial t}\Big|_{t=0} \frac{\partial}{\partial s}\Big|_{s=0}
R_{\exp(s \operatorname{Ad} _{\exp(t\xi)}\eta)}^*
\\
&=\frac{\partial}{\partial t}\Big|_{t=0} \frac{\partial}{\partial s}\Big|_{s=0}
R_{\exp(t\xi)\exp(s\eta)\exp(-t\xi)}^*\\
&=\frac{\partial}{\partial t}\Big|_{t=0} \frac{\partial}{\partial s}\Big|_{s=0}
R_{\exp(t\xi)}^*R_{\exp(s\eta)}^*R_{\exp(-t\xi)}^*\\
&=\frac{\partial}{\partial t}\Big|_{t=0} R_{\exp(t\xi)}^*\ \eta^L\ R_{\exp(-t\xi)}^*\\
&=[\xi^L,\eta^L]\\
&=[\xi,\eta]^L=( \operatorname{ad} _\xi\eta)^L. 
\end{split}$$ This proves the first part. The second part is the
commutativity of the diagram
$$\begin{CD} G @>{\operatorname{Ad}}>> \operatorname{Aut}(\mathfrak{g}) \\
@A{\exp}AA @AA{\exp}A \\
\mathfrak{g}@>>{\operatorname{ad}}> \operatorname{Der}(\mathfrak{g})
\end{CD}$$ which is just a special case of the functoriality property of
$\exp$ with respect to Lie group morphisms. ◻
:::

::: {.remark}
*Remark 34*. As a special case, this formula holds for matrices. That
is, for $B,C\in \operatorname{Mat}_n(\mathbb{R})$,
$$e^B\, C\, e^{-B}=\sum_{n=0}^\infty \frac{1}{n!} [B,[B,\cdots [B,C]\cdots]].$$
The formula also holds in some other contexts, e.g. if $B,C$ are
elements of an algebra with $B$ nilpotent (i.e. $B^N=0$ for some $N$).
In this case, both the exponential series for $e^B$ and the series on
the right hand side are finite. (Indeed, $[B,[B,\cdots [B,C]\cdots]]$
with $n$ $B$'s is a sum of terms $B^j C B^{n-j}$, and hence must vanish
if $n\ge 2N$.)
:::

# The differential of the exponential map

We had seen that ${\mbox{d}}_0\exp=\operatorname{id}$. More generally,
one can derive a formula for the differential of the exponential map at
arbitrary points $\xi\in\mathfrak{g}$,
$${\mbox{d}}_\xi\exp\colon \mathfrak{g}=T_\xi\mathfrak{g}\to T_{\exp\xi}G.$$
Using left translation, we can move $T_{\exp\xi}G$ back to
$\mathfrak{g}$, and obtain an endomorphism of $\mathfrak{g}$.

::: {.theorem}
**Theorem 35**. *The differential of the exponential map
$\exp\colon \mathfrak{g}\to G$ at $\xi\in \mathfrak{g}$ is the linear
operator
${\mbox{d}}_\xi\exp\colon\mathfrak{g}\to T_{\exp(\xi)}\mathfrak{g}$
given by the formula,
$${\mbox{d}}_\xi\exp=({\mbox{d}}_e L_{\exp\xi})\circ \frac{1-\exp(- \operatorname{ad} _\xi)}{ \operatorname{ad} _\xi}.$$*
:::

Here the operator on the right hand side is defined to be the result of
substituting $\operatorname{ad} _\xi$ in the entire holomorphic function
$\frac{1-e^{-z}}{z}$. Equivalently, it may be written as an integral
$$\frac{1-\exp(- \operatorname{ad} _\xi)}{ \operatorname{ad} _\xi}=\int_0^1 {\mbox{d}}s\  \exp(-s \operatorname{ad} _\xi).$$

::: {.proof}
*Proof.* We have to show that for all $\xi,\eta\in\mathfrak{g}$,
$$({\mbox{d}}_\xi\exp)(\eta)\circ L_{\exp(-\xi)}^*=\int_0^1 {\mbox{d}}s\ (\exp(-s \operatorname{ad} _\xi)\eta)$$
as operators on functions $f\in C^\infty(G)$. To compute the left had
side, write
$$({\mbox{d}}_\xi\exp)(\eta)\circ L_{\exp(-\xi)}^*(f)=\frac{\partial}{\partial t}\Big|_{t=0} 
(L_{\exp(-\xi)}^*(f))(\exp(\xi+t\eta))=\frac{\partial}{\partial t}\Big|_{t=0} f(\exp(-\xi)\exp(\xi+t\eta)).$$
We think of this as the value of
$\frac{\partial}{\partial t}\Big|_{t=0} R_{\exp(-\xi)}^* R_{\exp(\xi+t\eta)}^* f$
at $e$, and compute as follows: [^2] $$\begin{split}
\frac{\partial}{\partial t}\Big|_{t=0} R_{\exp(-\xi)}^* R_{\exp(\xi+t\eta)}^* 
&=\int_0^1 {\mbox{d}}s\ \frac{\partial}{\partial t}\Big|_{t=0} \frac{\partial}{\partial s} R_{\exp(-s\xi)}^*R_{\exp(s(\xi+t\eta)}^* \\
&=\int_0^1 {\mbox{d}}s\ \frac{\partial}{\partial t}\Big|_{t=0} R_{\exp(-s\xi)}^*  (t\eta)^L R_{\exp(s(\xi+t\eta)}^*\\
&=\int_0^1 {\mbox{d}}s\ R_{\exp(-s\xi)}^*\ \eta^L\  R_{\exp(s(\xi))}^*\\
&=\int_0^1 {\mbox{d}}s\ ( \operatorname{Ad} _{\exp(-s\xi)}\eta)^L\\
&=\int_0^1 {\mbox{d}}s\ (\exp(-s \operatorname{ad} _\xi)\eta)^L.
\end{split}$$ Applying this result to $f$ at $e$, we obtain
$\int_0^1 {\mbox{d}}s\ (\exp(-s \operatorname{ad} _\xi)\eta)(f)$ as
desired. ◻
:::

::: {.corollary}
**Corollary 36**. *The exponential map is a local diffeomorphism near
$\xi\in\mathfrak{g}$ if and only if $\operatorname{ad} _\xi$ has no
eigenvalue in the set $2 \pi i \mathbb{Z}\backslash\{0\}$.*
:::

::: {.proof}
*Proof.* ${\mbox{d}}_\xi\exp$ is an isomorphism if and only if
$\frac{1-\exp(- \operatorname{ad} _\xi)}{ \operatorname{ad} _\xi}$ is
invertible, i.e. has non-zero determinant. The determinant is given in
terms of the eigenvalues of $\operatorname{ad} _\xi$ as a product,
$\prod_{\lambda} \frac{1-e^{-\lambda}}{\lambda}$. This vanishes if and
only if there is a non-zero eigenvalue $\lambda$ with $e^\lambda=1$. ◻
:::

As an application, one obtains a version of the
*Baker-Campbell-Hausdorff formula*. Let $g\mapsto \log(g)$ be the
inverse function to $\exp$, defined for $g$ close to $e$. For
$\xi,\eta\in\mathfrak{g}$ close to $0$, the function
$$\log(\exp(\xi)\exp(\eta))$$ The BCH formula gives the Taylor series
expansion of this function. The series starts out with
$$\log(\exp(\xi)\exp(\eta))=\xi+\eta+{\textstyle \frac{1}{2}}[\xi,\eta]+\cdots$$
but gets rather complicated. To derive the formula, introduce a
$t$-dependence, and let $f(t,\xi,\eta)$ be defined by
$\exp(\xi)\exp(t\eta)=\exp(f(t,\xi,\eta))$ (for $\xi,\eta$ sufficiently
small). Thus $$\exp(f)=\exp(\xi)\exp(t\eta)$$ We have, on the one hand,
$$({\mbox{d}}_eL_{\exp(f)})^{-1}\frac{\partial}{\partial t}\exp(f)=
{\mbox{d}}_e L_{\exp(t\eta)}^{-1}\frac{\partial}{\partial t}\exp(t\eta)
=\eta.$$ On the other hand, by the formula for the differential of
$\exp$,
$$({\mbox{d}}_eL_{\exp(f)})^{-1}\frac{\partial}{\partial t}\exp(f)
=({\mbox{d}}_eL_{\exp(f)})^{-1}({\mbox{d}}_f\exp) (\frac{\partial f}{\partial t})
= \frac{1-e^{- \operatorname{ad} _f}}{ \operatorname{ad} _f}(\frac{\partial f}{\partial t}).$$
Hence
$$\frac{{\mbox{d}}f}{{\mbox{d}}t}=\frac{ \operatorname{ad} _f}{1-e^{- \operatorname{ad} _f}}\eta.$$
Letting $\chi$ be the function, holomorphic near $w=1$,
$$\chi(w)=\frac{\log(w)}{1-w^{-1}}=1+\sum_{n=1}^\infty \frac{(-1)^{n+1} }{n(n+1)}(w-1)^n,$$
we may write the right hand side as
$\chi(e^{ \operatorname{ad} _f})\eta$. By Applying $\operatorname{Ad}$
to the defining equation for $f$ we obtain
$e^{ \operatorname{ad} _f}=e^{ \operatorname{ad} _\xi}e^{t \operatorname{ad} _\eta}$.
Hence
$$\frac{{\mbox{d}}f}{{\mbox{d}}t}=\chi(e^{ \operatorname{ad} _\xi}e^{t \operatorname{ad} _\eta}) \eta.$$
Finally, integrating from $0$ to $1$ and using
$f(0)=\xi,\ f(1)=\log(\exp(\xi)\exp(\eta))$, we find:
$$\log(\exp(\xi)\exp(\eta))=\xi+\Big(\int_0^1 \chi(e^{ \operatorname{ad} _\xi}e^{t \operatorname{ad} _\eta}){\mbox{d}}t\Big) \eta.$$
To work out the terms of the series, one puts
$$w-1=e^{ \operatorname{ad} _\xi} e^{t \operatorname{ad} _\eta}-1=\sum_{i+j\ge 1} \frac{t^j}{i! j!} \operatorname{ad} _\xi^i  \operatorname{ad} _\eta^j$$
in the power series expansion of $\chi$, and integrates the resulting
series in $t$. We arrive at:

::: {.theorem}
**Theorem 37** (Baker-Campbell-Hausdorff series). *Let $G$ be a Lie
group, with exponential map $\exp\colon\mathfrak{g}\to G$. For
$\xi,\eta\in\mathfrak{g}$ sufficiently small we have the following
formula
$$\log(\exp(\xi)\exp(\eta))=\xi+\eta+\sum_{n=1}^\infty \frac{(-1)^{n+1} }{n(n+1)}\Big(\int_0^1{\mbox{d}}t\ \Big(\sum_{i+j\ge 1} \frac{t^j}{i! j!} \operatorname{ad} _\xi^i  \operatorname{ad} _\eta^j \Big)^n\Big)\eta.$$*
:::

An important point is that the resulting Taylor series in $\xi,\eta$ is
a *Lie series*: all terms of the series are of the form of a constant
times
$\operatorname{ad} _\xi^{n_1} \operatorname{ad} _\eta^{m_2}\cdots  \operatorname{ad} _\xi^{n_r}\eta$.
The first few terms read,
$$\log(\exp(\xi)\exp(\eta))=\xi+\eta+{\textstyle \frac{1}{2}}[\xi,\eta]+\frac{1}{12}[\xi,[\xi,\eta]]-\frac{1}{12}[\eta,[\xi,\eta]]+
\frac{1}{24} [\eta,[\xi,[\eta,\xi]]]+
\ldots.$$

::: {.exercise}
*Exercise 38*. Work out these terms from the formula.
:::

There is a somewhat better version of the BCH formula, due to Dynkin. A
good discussion can be found in the book by Onishchik-Vinberg, Chapter
I.3.2.

# Actions of Lie groups and Lie algebras

## Lie group actions

::: {.definition}
*Definition 39*. An *action of a Lie group $G$ on a manifold $M$* is a
group homomorphism
$$\mathcal{A}\colon G\to \operatorname{Diff}(M),\ g\mapsto \mathcal{A}_g$$
into the group of diffeomorphisms on $M$, such that the *action map*
$$G\times M\to M,\ \ (g,m)\mapsto \mathcal{A}_g(m)$$ is smooth.
:::

We will often write $g.m$ rather than $\mathcal{A}_g(m)$. With this
notation, $g_1.(g_2.m)=(g_1g_2).m$ and $e.m=m$. A map
$\Phi\colon M_1\to M_2$ between $G$-manifolds is called $G$-equivariant
if $g.\Phi(m)=\Phi(g.m)$ for all $m\in M$, i.e. the following diagram
commutes: $$\begin{CD}
G\times M_1 @>>> M_1\\
@VV{\operatorname{id}\times \Phi}V @VV{\Phi}V\\
G\times M_2 @>>> M_2
\end{CD}$$ where the horizontal maps are the action maps.

::: {.examples}
*Examples 40*.

1.  An $\mathbb{R}$-action on $M$ is the same thing as a global flow.

2.  The group $G$ acts $M=G$ by right multiplication,
    $\mathcal{A}_g=R_{g^{-1}}$, left multiplication,
    $\mathcal{A}_g=L_g$, and by conjugation,
    $\mathcal{A}_g= \operatorname{Ad} _g=L_g\circ R_{g^{-1}}$. The left
    and right action commute, hence they define an action of
    $G\times G$. The conjugation action can be regarded as the action of
    the diagonal subgroup $G\subset G\times G$.

3.  Any $G$-representation $G\to \operatorname{End}(V)$ can be regarded
    as a $G$-action, by viewing $M$ as a manifold.

4.  For any closed subgroup $H\subset G$, the space of right cosets
    $G/H=\{gH|\ g\in G\}$ has a unique manifold structure such that the
    quotient map $G\to G/H$ is a smooth submersion, and the action of
    $G$ by left multiplication on $G$ descends to a smooth $G$-action on
    $G/H$. (Some ideas of teh proof will be explained below.)

5.  The defining represenation of the orthogonal group
    $\operatorname{O}(n)$ on $\mathbb{R}^n$ restricts to an action on
    the unit sphere $S^{n-1}$, which in turn descends to an action on
    the projective space $\mathbb{R}P(n-1)$. One also has actions on the
    Grassmann manifold $\operatorname{Gr}_\mathbb{R}(k,n)$ of $k$-planes
    in $\mathbb{R}^n$, or on the flag manifold $\operatorname{Fl}(n)$
    (consisting of sequences
    $\{0\}=V_0\subset V_1\subset \cdots V_{n-1}\subset V_n=\mathbb{R}^n$
    with $\dim V_i=i$). These examples are all of the form
    $\operatorname{O}(n)/H$ for various choices of $H$. (E.g, for
    $\operatorname{Gr}(k,n)$ one takes $H$ to be the subgroup preserving
    $\mathbb{R}^k\subset \mathbb{R}^n$.)
:::

## Lie algebra actions

::: {.definition}
*Definition 41*. An *action of a finite-dimensional Lie algebra
$\mathfrak{g}$* on $M$ is a Lie algebra homomorphism
$\mathfrak{g}\to \mathfrak{X}(M),\ \xi\mapsto \mathcal{A}_\xi$ such that
the action map
$$\mathfrak{g}\times M\to TM,\ \ (\xi,m)\mapsto \mathcal{A}_\xi|_m$$ is
smooth.
:::

We will often write $\xi_M=:\mathcal{A}_\xi$ for the vector field
corresponding to $\xi$. Thus, $[\xi_M,\eta_M]=[\xi,\eta]_M$ for all
$\xi,\eta\in\mathfrak{g}$. A smooth map $\Phi\colon M_1\to M_2$ between
to $\mathfrak{g}$-manifolds is called equivariant if
$\xi_{M_1}\sim_\Phi \xi_{M_2}$ for all $\xi\in\mathfrak{g}$.

::: {.examples}
*Examples 42*.

1.  Any vector field $X$ defines an action of the Abelian Lie algebra
    $\mathbb{R}$, by $\lambda\mapsto \lambda X$.

2.  Any Lie algebra representation
    $\phi\colon \mathfrak{g}\to \operatorname{gl}(V)$ may be viewed as a
    Lie algebra action. Indeed, if $f\in C^\infty(V)$ we have
    ${\mbox{d}}_vf\in V^*$, and
    $$(\mathcal{A}_\xi f)(v)=\frac{{\mbox{d}}}{{\mbox{d}}t}|_{t=0} f(v-t\xi.v)$$
    defines a $\mathfrak{g}$-action.

3.  For any Lie group $G$, we have actions of its Lie algebra
    $\mathfrak{g}$ by $\mathcal{A}_\xi=\xi^L,\ \mathcal{A}_\xi=-\xi^R$
    and $\mathcal{A}_\xi=\xi^L-\xi^R$.

4.  Given a closed subgroup $H\subset G$, the vector fields
    $-\xi^R\in\mathfrak{X}(G),\ \xi\in\mathfrak{g}$ are invariant under
    the right multiplication, hence they are related under the quotient
    map to vector fields on $G/H$. That is, there is a unique
    $\mathfrak{g}$-action on $G/H$ such that the quotient map $G\to G/H$
    is equivariant.
:::

::: {.definition}
*Definition 43*. Let $G$ be a Lie group with Lie algebra $\mathfrak{g}$.
Given a $G$-action $g\mapsto \mathcal{A}_g$ on $M$, one defines its
*generating vector fields* by
$$\mathcal{A}_\xi=\frac{d}{d t}\Big|_{t=0} \mathcal{A}_{\exp(-t\xi)}^*.$$
:::

::: {.example}
*Example 44*. The generating vector field for the action by right
multiplication $$\mathcal{A}_a=R_{a^{-1}}\in \operatorname{Diff}(G)$$
are the left-invariant vector fields,
$$\mathcal{A}(\xi)=\frac{\partial}{\partial t}|_{t=0} R_{\exp(t\xi)}^* =\xi^L.$$
Similarly, the generating vector fields for the action by left
multiplication are $-\xi^R$, and those for the conjugation action are
$\xi^L-\xi^R$.
:::

Observe that if $\Phi\colon M_1\to M_2$ is an equivariant map of
$G$-manifolds, then the generating vector fields for the action are
$\Phi$-related.

::: {.theorem}
**Theorem 45**. *The generating vector fields of any $G$-action
$g\to \mathcal{A}_g$ define a $\mathfrak{g}$-action
$\xi\to \mathcal{A}_\xi$.*
:::

::: {.proof}
*Proof.* Write $\xi_M:=\mathcal{A}_\xi$ for the generating vector fields
of a $G$-action on $M$. We have to show that $\xi\mapsto \xi_M$ is a Lie
algebra morphism. Note that the map
$$\Phi\colon G\times M\to M,\ (a,m)\mapsto a^{-1}.m$$ is $G$-equivariant
if we take the $G$-action on $G\times M$ to be $g.(a,m)=(ag^{-1},m)$.
Hence $\xi_{G\times M}\sim_\Phi \xi_M$. But $\xi_{G\times M}=\xi^L$
(viewed as vector fields on the product $G\times M$), hence
$\xi\mapsto \xi_{G\times M}$ is a Lie algebra morphism. It follows that
$$0=[(\xi_1)_{G\times M}, (\xi_1)_{G\times M}]-([\xi_1,\xi_2])_{G\times M}
\sim [(\xi_1)_M,(\xi_2)_M]-[\xi_1,\xi_2]_M.$$ Since $\Phi$ is a
surjective submersion (i.e. the differential
${\mbox{d}}\Phi\colon T(G\times M)\to TM$ is surjective), this shows
that $[(\xi_1)_M,(\xi_2)_M]-[\xi_1,\xi_2]_M=0$. ◻
:::

## Integrating Lie algebra actions

Let us now consider the inverse problem: For a Lie group $G$ with Lie
algebra $\mathfrak{g}$, integrating a given $\mathfrak{g}$-action to a
$G$-action. The construction will use some facts about *foliations*.

Let $M$ be a manifold. A *$k$-dimensional distribution* on $M$ is a
linear subspace $\mathfrak{R}\subset \mathfrak{X}(M)$ of the space of
vector fields such that at any point $m\in M$, the subspace
$E_m\subset T_mM$ spanned by all $X_m,\ X\in \mathfrak{R}$ is of
dimension $k$. The subspaces $E_m$ define a rank $k$ vector bundle
$E\subset TM$ with $\mathfrak{R}=\Gamma(E)$, hence a distribution is
equivalently given by this subbundle $E$. An integral submanifold of the
distribution $\mathfrak{R}$ is a $k$-dimensional submanifold $S$ such
that all $X\in\mathfrak{R}$ are tangent to $S$. In terms of $E$, this
means that $T_mS=E_m$ for all $m\in S$. The distribution is called
*integrable* if for all $m\in M$ there exists an integral submanifold
containing $m$. In this case, there exists a maximal such submanifold,
$\mathcal{L}_m$. The decomposition of $M$ into maximal integral
submanifolds is called a $k$-dimensional foliation of $M$, the maximal
integral submanifolds themselves are called the *leaves* of the
foliation.

Not every distribution is integrable. Recall that if two vector fields
are tangent to a submanifold, then so is their Lie bracket. Hence, a
*necessary* condition for integrability of a distribution is that
$\mathfrak{R}$ is a Lie subalgebra. Frobenius' theorem gives the
converse:

::: {.theorem}
**Theorem 46** (Frobenius theorem). *A rank $k$ distibution
$\mathfrak{R}\subset \mathfrak{X}(M)$ is integrable if and only if
$\mathfrak{R}$ is a Lie subalgebra.*
:::

The idea of proof is to show that if $\mathfrak{R}$ is a Lie subalgebra,
then $\mathfrak{R}$ is spanned, near any $m\in M$, by $k$ *commuting*
vector fields. one then uses the flow of these vector fields to
construct integral submanifold.

Given a Lie algebra of dimension $k$ and an *effective*
$\mathfrak{g}$-action on $M$ (i.e. $\xi_M=0$ implies $\xi=0$), one
obtains an integrable rank $k$ distribution $\mathfrak{R}$ as the span
(over $C^\infty(M)$) of the $\xi_M$'s. We use this to prove:

::: {.theorem}
**Theorem 47**. *Let $G$ be a connected, simply connected Lie group with
Lie algebra $\mathfrak{g}$. A Lie algebra action
$\mathfrak{g}\to \mathfrak{X}(M),\ \xi\mapsto \xi_M$ integrates to an
action of $G$ if and only if the vector fields $\xi_M$ are all
complete.*
:::

::: {.proof}
*Proof of the theorem.* The idea of proof is as follows. Let
$\widehat{M}=G\times M$, and $\operatorname{pr}_1,\operatorname{pr}_2$
the projections to the two factors. A $G$-action on $M$ defines a
foliation of $\widehat{M}=G\times M$, with leafs the orbits of the
diagonal action (where $G$ acts on itself by left multiplication).
Equivalently, the leaves are the fibers of the map
$\widehat{M}\to M,\ (g,m)\mapsto g^{-1}.m$. Hence they are indexed by
the elements of $m$, as follows $$\mathcal{L}_m=\{(g,g.m)|\,g\in G\}.$$
$\operatorname{pr}_1$ restricts to diffeomorphisms
$\pi_m\colon \mathcal{L}_m\to G$, and we recover the action as
$$g.m= \operatorname{pr}_2(\pi_m^{-1}(g)).$$ Given a
$\mathfrak{g}$-action, our plan is to construct the foliation from an
integrable distribution.

Consider the Lie algebra action on $\widehat{M}=G\times M$, given by
$$\xi_{\widehat{M}}=(-\xi^R,\xi_M)\in\mathfrak{X}(G\times M).$$ Note
that the vector fields $\xi_{\widehat{M}}$ are complete, since $\xi_M$
are by assumption complete: If $\Phi_t^\xi$ is the flow of $\xi_M$, the
flow of $\xi_{\widehat{M}}=(-\xi^R,\xi_M)$ is given by
$$\widehat{\Phi}_t^\xi=(L_{\exp(t\xi)},\Phi_t^\xi)\in\operatorname{Diff}(G\times M).$$
The action $\xi\mapsto \xi_{\widehat{M}}$ is effective, hence it defines
an integable $\dim G$-dimensional distribution
$\mathfrak{R}\subset \mathfrak{X}(\widehat{M})$. Let
$\mathcal{L}_m\hookrightarrow G\times M$ be the unique leaf containing
the point $(e,m)$. Projection to the first factor induces a smooth map
$\pi_m:\ \mathcal{L}_m\to G$.

The map $\pi_m$ is *surjective*: Given $g\in G$ write $g=g_r\ldots g_1$
where $g_i=\exp(\xi_i)$. The path
$\widehat{\Phi}_{t}^{\xi_1}(e,m),\ t\in [0,1]$ lies in $\mathcal{L}_m$,
and has end point $(g_1,m_1)$ where $m_1=\Phi_1^{\xi_1}(m)$.
Concatenation with the path
$\widehat{\Phi}_{t}^{\xi_2}(g_1,m_1),\ t\in [0,1]$ gives a (piecewise
smooth) path from $(m,e)$ to $(g_2g_1,m_2)$ where
$m_2=\Phi_1^{\xi_2}\Phi_1^{\xi_1}(m)$. Proceeding in this manner, we
obtain a piecewise smooth path in $\mathcal{L}_m$ from $(e,m)$ to
$(g_r\cdots g_1,m_r)=(g,m_r)$. This shows $\pi_m^{-1}(g)\not=\emptyset$.

For any $(g,x)\in\mathcal{L}_m$ the tangent map
${\mbox{d}}_{(g,x)} \pi_m$ is an isomorphism. Hence
$\pi_m\colon \mathcal{L}_m\to G$ is a (surjective) covering map. Since
$G$ is simply connected by assumption, we conclude that
$\pi_m\colon \mathcal{L}_m\to G$ is a diffeomorphism. We now define
$\mathcal{A}_g(m)= \operatorname{pr}_2(\pi_m^{-1}(g))$. Concretely, the
construction above shows that if $g=\exp(\xi_r)\cdots \exp(\xi_1)$ then
$$\mathcal{A}_g(m)=(\Phi^{\xi_r}_{1}\circ \cdots \circ \Phi^{\xi_1}_{1})(m).$$
From this description it is clear that
$\mathcal{A}_{gh}=\mathcal{A}_g\circ \mathcal{A}_h$. ◻
:::

Let us remark that, in general, one cannot drop the assumption that $G$
is simply connected. Consider for example $G= \operatorname{SU}(2)$,
with $\mathfrak{su}(2)$-action $\xi\mapsto-\xi^R$. This exponentiates to
an action of $\operatorname{SU}(2)$ by left multiplication. But
$\mathfrak{su}(2)\cong \mathfrak{so}(3)$ as Lie algebras, and the action
does not exponentiate to an action of the group $\operatorname{SO}(3)$.

As an important special case, we obtain:

::: {.theorem}
**Theorem 48**. *Let $H,G$ be Lie groups, with Lie algebras
$\mathfrak{h}\to \mathfrak{g}$. If $H$ is connected and simply
connected, then any Lie algebra morphism
$\phi\colon \mathfrak{h}\to \mathfrak{g}$ integrates uniquely to a Lie
group morphism $\psi\colon H\to G$.*
:::

::: {.proof}
*Proof.* Define an $\mathfrak{h}$-action on $G$ by
$\xi\mapsto -\phi(\xi)^R$. Since the right-invariant vector fields are
complete, this action integrates to a Lie group action
$\mathcal{A}\colon H\to \operatorname{Diff}(G)$. This action commutes
with the action of $G$ by right multiplication. Hence,
$\mathcal{A}_h(g)=\psi(h)g$ where $\psi(h)=\mathcal{A}_h(e)$. The action
property now shows $\psi(h_1)\psi(h_2)=\psi(h_1h_2)$, so that
$\psi\colon H\to G$ is a Lie group morphism integrating $\phi$. ◻
:::

::: {.corollary}
**Corollary 49**. *Let $G$ be a connected, simply connected Lie group,
with Lie algebra $\mathfrak{g}$. Then any $\mathfrak{g}$-representation
on a finite-dimensional vector space $V$ integrates to a
$G$-representation on $V$.*
:::

::: {.proof}
*Proof.* A $\mathfrak{g}$-representation on $V$ is a Lie algebra
morphism $\mathfrak{g}\to  \operatorname{End} (V)$, hence it integrates
to a Lie group morphism $G\to  \operatorname{End} (V)^\times$. ◻
:::

By a Lie subgroup of a Lie group $H$, we mean a Lie group $G$ together
with an injective Lie group morphism $G\hookrightarrow H$. That is, the
inclusion map need not be an embedding.

::: {.lemma}
**Lemma 50**. *Let $\mathfrak{g}\subset \mathfrak{h}$ be a Lie
subalgebra of a finite-dimensional Lie algebra, and $H$ a Lie group
integrating $\mathfrak{h}$. Then there exists a unique connected Lie
subgroup $G\subset H$ integrating $\mathfrak{g}$.*
:::

::: {.proof}
*Proof.* Consider the distribution on $H$ spanned by the vector fields
$-\xi^R,\ \xi\in\mathfrak{g}$. It is integrable, hence it defines a
foliation of $H$. The leaves of any foliation carry a unique manifold
structure such that the inclusion map is an immersion. Take $G\subset H$
to be the leaf through $e\in H$, with this manifold structure.
Explicitly, $G$ consists of products $\exp(\xi_r)\cdots \exp(\xi_1)$
where $\xi_i\in\mathfrak{g}$. From this description it follows that $G$
is a Lie group. ◻
:::

By Ado's theorem, any finite-dimensional Lie algebra $\mathfrak{g}$ is
isomorphic to a matrix Lie algebra. We will skip the proof of this
important (but relatively deep) result, since it involves a considerable
amount of structure theory of Lie algebras. Given such a presentation
$\mathfrak{g}\subset \mathfrak{gl}(n,\mathbb{R})$, the Lemma gives a Lie
subgroup $G\subset  \operatorname{GL}(n,\mathbb{R})$ integrating
$\mathfrak{g}$. Replacing $G$ with its universal covering, this proves:

::: {.theorem}
**Theorem 51** (Lie's third theorem). *For any finite-dimensional real
Lie algebra $\mathfrak{g}$, there exists a connected, simply connected
Lie group $G$, unique up to isomorphism, having $\mathfrak{g}$ as its
Lie algebra.*
:::

The book by Duistermaat-Kolk contains a different, more conceptual proof
of Cartan's theorem. This new proof has found important generalizations
to the integration of *Lie algebroids*. In conjunction with the previous
Theorem, Lie's third theorem gives an equivalence between the categories
of finite-dimensional Lie algebras $\mathfrak{g}$ and connected,
simply-connected Lie groups $G$.

## Proper actions

Let us quickly list some terminology for Lie group actions
$\mathcal{A}\colon G\to \operatorname{Diff}(M)$. For any $m\in M$, the
set $G.m:=\{(g,m)\,g\in G\}$ is called the *orbit* of $m$. The space
$M/G=\{G.m|\,m\in M\}$ is called the *orbit space* for the given action.
It inherits a topology as a quotient space of $M$, but can be a very
singular space. The action $\mathcal{A}$ is called *transitive* if there
is only one orbit, i.e. $M/G=\operatorname{pt}$. In this case, $M$ is
called a *homogeneous space*.

The subgroup $G_m=\{g\in G|\,g.m=m\}$ is called the *stabilizer* of $m$.
From the definition, it is clear that stabilizer subgroups are closed
subgroups of $G$, hence are embedded Lie subgroups. In particular, the
orbit $G/G_m$ inherits a manifold structure. The inclusion of the orbit
is smooth relative to this manifold structure. For any $g\in G$, the
stabilizers of a point $m$ and of its translate $g.m$ are related by the
adjoint action: $$G_{g.m}= \operatorname{Ad} _g(G_m).$$ The action is
*free* if all stabilizers $G_m$ are trivial. For instance, the actions
of $G$ by left or right multiplication on $G$ are both free, but the
conjugation action is not. The action $\mathcal{A}$ is *effective* if
$\operatorname{ker}(\mathcal{A})=\{e\}$, i.e.
$\mathcal{A}_g=\operatorname{id}_M$ implies $g=e$. For instance, the
conjugation action of $G$ on itself is effective if and only if the
center of $G$ is trivial.

The action $\mathcal{A}$ is called *proper* if the action map
$G\times M\to M$ is proper (i.e. pre-images of compact sets are
compact). For example, the left or right actions of $G$ on itself are
proper. Note that for a proper $G$-action, the action of any closed
subgroup $H\subset G$ is still proper. Also, for $G$ compact any
$G$-action is proper.

For a proper action, the stabilizer groups $G_m$ are *compact* since
$G_m$ may be viewed as the intersection of the closed subspace
$G\times\{m\}\subset G\times M$ with the preimage of $\{m\}\in M$ under
the action map. One can use this fact to construct *slices* for the
action, i.e. $G_m$-invariant embedded submanifolds $S\subset M$ with
$m\in S$ such that $G.S$ is an open neighborhood of the orbit $G.m$, and
such that $gS\cap S\not=\emptyset
\Leftrightarrow g\in G_m$. Slices give models a neighborhood of $G.m$ in
the orbit space, since $(G.S)/G=S/G_m$. In particular, if $G_m$ is
trivial, we see that a neighborhood of $G.m\subset M/G$ is a manifold
(modeled by $S$).

::: {.theorem}
**Theorem 52**. *For a free, proper action on a manifold $M$, the orbit
space $M/G$ inherits a manifold structure such that the quotient map
$M\to M/G$ is a smooth submersion. Given an $H$-action on $M$ that
commutes with the $G$-action, the orbit space $M/G$ inherits an
$H$-action.*
:::

::: {.example}
*Example 53*. Let $H$ be a closed subgroup of $G$, acting on $G$ by
right multiplication. This action is proper, hence $G/H$ is a manifold.
The action of $G$ by left multiplication commutes with the actuion of
$H$, hence it descends to a smooth action on $G/H$.
:::

E. Meinrenken, MAT 1120HF Lie groups and Lie algebras Lecture Notes

Sigurdur Helgason. 18.755 Introduction to Lie Groups. Fall 2004.
Massachusetts Institute of Technology: MIT OpenCourseWare,
https://ocw.mit.edu. License: Creative Commons BY-NC-SA.

A. Kirillov Jr.: An Introduction to Lie Groups and Lie Algebras ,
Cambridge University Press

T. Broecker. T. tom Dieck: Representations of compact Lie groups ,
Springer

[^1]: The minus sign is convention, but it is motivated as follows. Let
    $\operatorname{Diff}(M)$ be the infinite-dimensional group of
    diffeomorphisms of $M$. It acts on $C^\infty(M)$ by
    $\Phi.f=f\circ \Phi^{-1}=(\Phi^{-1})^* f$. Here, the inverse is
    needed so that $\Phi_1.\Phi_2.f=(\Phi_1\Phi_2).f$. We think of
    vector fields as 'infinitesimal flows', i.e. informally as the
    tangent space at $\operatorname{id}$ to $\operatorname{Diff}(M)$.
    Hence, given a curve $t\mapsto \Phi_t$ through
    $\Phi_0=\operatorname{id}$, smooth in the sense that the map
    $\mathbb{R}\times M\to M,\ (t,m)\mapsto \Phi_t(m)$ is smooth, we
    define the corresponding vector field
    $X=\frac{\partial}{\partial t}|_{t=0}\Phi_t$ in terms of the action
    on functions: as
    $$X.f=\frac{\partial}{\partial t}|_{t=0} \Phi_t.f=\frac{\partial}{\partial t}|_{t=0} (\Phi_t^{-1})^*f.$$
    If $\Phi_t$ is a flow, we have $\Phi_t^{-1}=\Phi_{-t}$.

[^2]: We will use the identities
    $\frac{\partial}{\partial s} R_{\exp(s\zeta)}^*= R_{\exp(s\zeta)}^*\ \zeta^L=\zeta^L\ R_{\exp(s\zeta)}^*$
    for all $\zeta\in\mathfrak{g}$. Proof:
    $\frac{\partial}{\partial s} R_{\exp(s\zeta)}^*=\frac{\partial}{\partial u}|_{u=0} 
    R_{\exp((s+u)\zeta)}^*=\frac{\partial}{\partial u}|_{u=0}R_{\exp(u\zeta)}^* R_{\exp(s\zeta)}^*=
    \zeta^L R_{\exp(s\zeta)}^*$.
