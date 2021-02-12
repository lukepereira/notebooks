---
title:  Fiber Bundles, Gauges, and Connections
---

-   [Bundles](#bundles)
    -   [Fiber Bundles](#fiber-bundles)
    -   [Vector Bundles](#vector-bundles)
    -   [Group Bundle](#group-bundle)
    -   [Principal Bundle](#principal-bundle)
        -   [Associated Bundles](#associated-bundles)
        -   [Adjoint Bundle](#adjoint-bundle)
    -   [Fibrations](#fibrations)
-   [Connections](#connections)
    -   [Ehresmann and Principal
        Connections](#ehresmann-and-principal-connections)
    -   [Cartan Connections](#cartan-connections)
-   [Gauges](#gauges)
-   [Moduli Spaces](#moduli-spaces)
    -   [Review of differential forms](#review-of-differential-forms)
    -   [Moduli Space of Connections](#moduli-space-of-connections)
    -   [Moduli Space of Yang-Mills
        Connections](#moduli-space-of-yang-mills-connections)
-   [Examples](#examples)
    -   [Relativity](#relativity)

# Bundles

## Fiber Bundles

A fiber bundle makes precise the idea of one topological space (called a
fiber) being "parameterized" by another topological space (called a
base). A fiber bundle also comes with a group action on the fiber. This
group action represents the different ways the fiber can be viewed as
equivalent. Formally, a fibre bundle is a structure
${\displaystyle (E,\,B,\,\pi ,\,F)}$. The topological space $E$ is known
as the *total space* of the fibre bundle, $B$ as the *base space*, and
$F$ the standard or template *fiber*. The map
${\displaystyle \pi :E\rightarrow B}$, called the *projection map* or
*submersion* of the bundle, is a continuous surjection satisfying a
*local triviality condition*. This condition enables a local section of
a manifold to be interpreted as a trivial i.e. as cartesian product
space ($B\times F$), despite global topology possibly being more
complicated, i.e. twisted or non-orientable.

For any $p \in B$, the pre-image ${\displaystyle \pi ^{-1}(\{p\})}$ is
homeomorphic to $F$ and is called a *fiber* over $p$. Recall, a
homeomorphism is a kind of topological isomorphism, i.e. it is a
continuous bijective (invertible) function between topological spaces.
Every fibre bundle ${\displaystyle \pi :E\rightarrow B}$ is an open map,
since projections of products are open maps. Specifically, we require
that for every $p \in B$, there is an open neighborhood
${\displaystyle U\subset B}$ of $p$ (a trivializing neighborhood) such
that there is a homeomorphism
${\displaystyle \varphi :\pi ^{-1}(U)\rightarrow U\times F}$ (where
${\displaystyle U\times F}$ is the product space) in such a way that
$\pi$ agrees with the projection onto the first factor.

The canonical example of a nontrivial bundle $E$ is the Möbius strip. It
has the circle that runs lengthwise along the center of the strip as a
base $B$ and a line segment for the fiber $F$. A neighborhood $U$ of
${\displaystyle \pi (x)\in B}$ (where $x \in E$) is an arc. The preimage
$\pi ^{-1}(U)$ is a partially twisted slice of the strip four squares
wide and one long. A homeomorphism $\varphi$ exists that maps the
preimage of $U$ to a slice of a cylinder: curved, but not twisted. This
pair locally trivializes the strip, with the corresponding trivial
bundle $\displaystyle B\times F$ being a cylinder whereas the Möbius
strip has an overall twist that is only visible globally.

A *section* (or cross section) of a fiber bundle $E$ is a continuous
right inverse of the projection function $\pi$. In other words, if $E$
is a fiber bundle over a base space, $B$, then a section of that fiber
bundle is a continuous map, ${\displaystyle \sigma \colon B\to E}$ such
that $\pi (\sigma (x))=x$ for all ${\displaystyle x\in B}$.

Additional structures on $F$ give rise to special types of fiber
bundles, e.g. vector bundles or group bundles. Associated bundles allow
derivation of bundles in which the typical fiber of a bundle changes
from $F_{1}$ to $F_{2}$, which are both topological spaces with a group
action of $G$, e.g. adjoint bundles, frame bundles, determinant bundles,
dual bundles.

## Vector Bundles

If $F = V$ is a vector space, one defines a *vector bundle* with
standard fiber $V$ to be a fiber bundle $\pi : E \rightarrow B$ where
all fibers $\pi^{-1} (b)$ are vector spaces and the local
trivializations $\phi_\alpha$ can be chosen to be fiberwise linear. A
homomorphism of two vector bundles is a fiber bundle homomorphism that
is fiberwise linear. The fibered product of vector bundles $E_1; E_2$ is
a vector bundle (also called Whitney sum and denoted $E1 \oplus E2$).

## Group Bundle

Recall, a Lie group is a group that is also a differentiable manifold
where points can be multiplied together, they have inverses, and these
operations are defined to be smooth (differentiable). If $F = G$ has the
structure of a Lie group, one defines a *group bundle*,
$\mathcal G \rightarrow B$ with standard fiber $G$ to be a fiber bundle
where all fibers carry group structures and the local trivializations
can be chosen to be a fiberwise group homomorphisms. A group bundle
homomorphism is a fiber bundle homomorphism which is fiberwise a group
homomorphism. The fibered product of group bundles is a group bundle.
One has natural bundle maps
$\mathcal G \times^B \mathcal G \rightarrow \mathcal G$ (fiberwise group
multiplication) and $\mathcal G \rightarrow \mathcal G$ (fiberwise
inversion). Similarly, one defines algebra bundles, Lie algebra bundle
as well as fiberwise linear actions of group or algebra bundles on
vector bundle

## Principal Bundle

A principal $G$-bundle (also called a G-torsor over X) share similar
properties to the resulting space of a Cartesian product of a space with
a group. They are a fiber bundle $\pi: \mathcal P \rightarrow X$
together with a continuous right action
$\mathcal P \times G \rightarrow \mathcal P$ such that $G$ preserves the
fibers of $\mathcal P$ (i.e. if $y \in \mathcal P_x$ then
$yg \in \mathcal P_x$ for all $g \in G$) and acts freely and
transitively (i.e. regularly) on them in such a way that for each
$x\in X$ and $y \in \mathcal P_x$, the map $G \rightarrow \mathcal P_x$
sending $g$ to $yg$ is a homeomorphism. In particular each fiber of the
bundle is homeomorphic to the group $G$ itself. One can also define
principal $G$-bundles in the category of smooth manifolds. Here
$\pi : \mathcal P \rightarrow X$ is required to be a smooth map between
smooth manifolds, $G$ is required to be a Lie group, and the
corresponding action on $\mathcal P$ should be smooth.

### Associated Bundles

Recall, associated bundles allow derivation of bundles in which the
typical fiber of a bundle changes from $F_{1}$ to $F_{2}$, which are
both topological spaces with a group action of $G$, e.g. adjoint
bundles, frame bundles, determinant bundles, dual bundles.

Let $\pi : \mathcal P \rightarrow B$ be a principal $G$-bundle. Given a
$G$-manifold $F$, one defines the associated fiber bundle by
$$F (\mathcal P) \equiv \mathcal P \times_G F := (\mathcal P \times F) / G:$$
The space $\mathcal P \times_G F$ is a fiber bundle over
$B = \mathcal P=G$ with standard fiber $F$. The sections
$\Gamma^\infty(\mathcal B, \mathcal P \times_G F )$ of this fiber bundle
are naturally identified with the space $C^\infty (\mathcal P, F )^G$ of
equivariant maps $\mathcal P \rightarrow F$.

### Adjoint Bundle

An adjoint bundle is a vector bundle naturally associated to any
principal bundle. The fibers of the adjoint bundle carry a Lie algebra
structure making the adjoint bundle into a (nonassociative) algebra
bundle. If $V$ is a vector space on which $G$ acts linearly, then
$P \times_G V$ is a vector bundle. Taking $V = g$ with the adjoint
representation one obtains the adjoint bundle
$\mathfrak g(\mathcal P ) := \mathcal P \times_G \mathfrak g$.

If $K$ is a Lie group on which $G$ acts by automorphisms,
$\mathcal P \times_G K$ is a group bundle. Taking $K = G$ with $G$
acting by the adjoint action, one obtains a group bundle
$G( \mathcal P) := \mathcal P \times_G G$ which is also called the
adjoint bundle. It has $\mathfrak g( \mathcal P)$ as its Lie algebra
bundle.

## Fibrations

Fibrations do not necessarily have the local Cartesian product structure
that defines the more restricted fiber bundle case, but something weaker
that still allows "sideways" movement from fiber to fiber. A fibration
is like a fiber bundle, except that the fibers need not be the same
space, nor even homeomorphic; rather, they are just homotopy equivalent.
Recall, homotopy equivalent implies that if $X$ and $Y$ are a pair of
continuous maps $f : X \rightarrow Y$ and $g : Y \rightarrow X$, such
that $g \circ f$ is homotopic to the identity map $id_X$ and $f \circ g$
is homotopic to $id_Y$. Intuitively, two spaces $X$ and $Y$ are homotopy
equivalent if they can be transformed into one another by bending,
shrinking and expanding operations

A fibration satisfies an additional condition (the homotopy lifting
property) guaranteeing that it will behave like a fiber bundle from the
point of view of homotopy theory. Weak fibrations discard even this
equivalence for a more technical property. Every vector bundle is a
fiber bundle with a fiber homotopy equivalent to a point. Fibrations are
dual to cofibrations, with a correspondingly dual notion of the homotopy
extension property; this is loosely known as Eckmann--Hilton duality.

# Connections

The notion of a *connection* defines the idea of transporting data along
a curve or family of curves in a parallel and consistent manner. A
*covariant derivative* is a linear differential operator which takes the
directional derivative of a section of a vector bundle in a covariant
manner. It also allows one to formulate a notion of a parallel section
of a bundle in the direction of a vector: a *section* $s$ is parallel
along a vector $X$ if $\nabla _{X}s=0$.

## Ehresmann and Principal Connections

An *Ehresmann connection* is a connection in a fibre bundle or a
principal bundle made by specifying the allowed directions of motion of
the field. Specifically, it singles out a vector subspace of each
tangent space to the total space of the fiber bundle, called the
horizontal space. A section $s$ is then horizontal (i.e., parallel) in
the direction $X$ if $\rm {d}s(X)$ lies in a horizontal space.

For any fiber bundle $\pi : E \rightarrow B$ the tangent bundle $T E$ of
the total space has a distinguished subbundle, the vertical bundle
$V E \hookrightarrow T E$. The fiber $V_xE$ for $\pi(x) = b$ is the
image of $T_x(F_b)$ under the natural inclusion
$T F_b \hookrightarrow T E$. An Ehresmann connection on $E$ is the
choice of a complementary horizontal subbundle $HE$ such that
$T E = V E \oplus HE$. Equivalently, a connection is a bundle projection
$T E \rightarrow V E$ which is left-inverse to the inclusion
$V E \rightarrow T E$; one defines $HE$ as the kernel of this
projection.

The Ehresmann connection has the immediate benefit of being definable on
a much broader class of structures than vector bundles and is
well-defined on a general fiber bundle. Many of the features of the
covariant derivative still remain: parallel transport, curvature, and
holonomy. With the classical covariant derivatives, covariance is an a
posteriori feature of the derivative. However, for an Ehresmann
connection, it is possible to impose a generalized covariance principle
from the beginning by introducing a Lie group acting on the fibers of
the fiber bundle. The appropriate condition is to require that the
horizontal spaces be equivariant with respect to the group action.

If the standard object $F$ has additional structure, one is interested
in connections such that parallel transport preserves that structure.
For example, if $E$ is a vector bundle, each parallel transport
operation, $\Pi^\gamma$, should be a linear map, and for group bundles
it should be a fiberwise group homomorphism, and so on. An important
special case of Ehresmann connections are principal connections on
principal bundles, which are required to be equivariant in the principal
Lie group action. A principal connection on a fiber bundle is an
equivariant Lie algebra valued 1-form
$\theta \in \Gamma^1 (\mathcal P, \mathfrak g)^G$ such that
$\iota(\xi_{\mathcal P})\theta = \xi$ (where $\iota$ is an inclusion
embedding) for all $\xi \in \mathfrak g$, the Lie algebra.

The space of principal connections will be denoted $\mathcal A(P)$. The
space $\mathcal A(P)$ has a natural affine structure, with underlying
vector space the space $\Gamma^1 (B, \mathfrak g( \mathcal P))$ of
1-forms on $B$ with values in the adjoint bundle.

## Cartan Connections

TODO

# Gauges

A gauge can be thought of as a coordinate system that varies depending
on one's location with respect to some base space or parameter space. A
gauge transform is a change of coordinates applied to each such
location, and a gauge theory is a model for some physical or
mathematical system to which gauge transforms can be applied and is
typically gauge invariant, in that all physically meaningful quantities
are left unchanged or transform naturally under gauge. A principal
bundle automorphism is a $G$-equivariant diffeomorphism
$\phi : \mathcal P \rightarrow \mathcal P$ taking fibers to fibers. The
group of principal bundle automorphisms will be denoted
$\hbox{Aut}( \mathcal P)$.

The space of \"coordinate systems\" is (non-canonically) identifiable
with the isomorphism group $\hbox{Isom}(G)$ of template $G$. This
isomorphism group is called the structure group or gauge group of the
class of geometric objects. The gauge group
$\hbox{Gau}( \mathcal P) \subseteq \hbox{Aut}(\mathcal P)$ consists of
automorphisms $\phi : \mathcal P \rightarrow \mathcal P$ inducing the
identity map on the base $B$. That is, $\hbox{Gau}( \mathcal P)$ is
defned by an *exact sequence* of groups
$$1 \longrightarrow \hbox{Gau}( \mathcal P) \longrightarrow \hbox{Aut}( \mathcal P) \longrightarrow \hbox{Diff} B)$$
Let $\theta$ be a principal connection on
$\pi : \mathcal P \rightarrow B$. For any path
$\gamma : [t_0, t_1] \rightarrow B$, let
$$\Pi^\theta_\gamma : P_{\gamma(t_0)} \rightarrow P_{(t_1)}$$ denote
parallel transport with respect to $\theta$. For all
$\phi \in \hbox{Gau}(\mathcal P)$,
$$\Pi_{\gamma}^{\phi,\theta} = \phi(\gamma(t_1)) \circ  \Pi_{\gamma}^{\theta} \circ  \phi(\gamma(t_0))^{-1}$$
The group of automorphisms $\hbox{Aut}( \mathcal P)$ acts on the space
$\mathcal A( \mathcal P)$ of principal connections by pull-back by the
inverse. This can be understood as the gauge transformations of
connections. We can interpret $\mathcal A( \mathcal P)$ as an infinite
dimensional manifold, equipped with an action of an infinite-dimensional
Lie Group.

# Moduli Spaces

## Review of differential forms

Recall from differential geometry notebook [^1] the definitions of
differential forms, wedge products and the hodge star operations:

-   A differential *$k$-form* on an open subset
    $U \subseteq \mathbb R^m$ is an expression of the form
    $$\omega = \sum_{i_1 \dots i_k} \omega i_1\dots i_k dx^{i_1} \wedge \dots \wedge  dx^{i_k}$$
    where $\omega_{i_1\dots i_k} \in C^\infty(U)$ are functions, and the
    indices are numbers $1 \leq i_1 < \dots < i_k \leq m$. The symbol
    $\wedge$ denotes the exterior product of two differential forms.

-   The *exterior product* or *wedge product* is the product operator in
    an exterior algebra. If $\alpha$ and $\beta$ are differential
    $k$-forms of degrees $p$ and $q$, respectively, then
    $$\alpha \wedge \beta=(-1)^{pq} \beta \wedge \alpha.$$ It is not (in
    general) commutative, but it is associative, and bilinear.

    Let $\alpha, \beta \in \Omega^1(M)$. Then we define a wedge product
    $\alpha \wedge \beta \in \Omega^2 (M)$, as follows:
    $$(\alpha \wedge \beta)(X,Y) = \alpha (X)\beta(Y)-\alpha(Y)\beta(X).$$

-   Let $V$ be an n-dimensional vector space with basis
    $\{ e_1, \cdots, e_n \}$ and with unit vector given by
    $\omega := e_1 \wedge \cdots \wedge e_n$ . Note, the dual of
    $\omega$ is the volume form, $\hbox{det}$.

    An inner product $\langle \cdot,\cdot \rangle$ induces pairs of
    k-vectors $\alpha, \beta \wedge^k V$ and has the Gram determinant:
    $${\displaystyle \langle \alpha ,\beta \rangle =\det \left(\left\langle \alpha _{i},\beta _{j}\right\rangle \right)_{i,j=1}^{k}}$$
    For all pairs of k-vectors, the *Hodge Star operator* can be defined
    as having property,
    $$\alpha \wedge (* \beta ) = \langle \alpha, \beta \rangle \omega.$$
    Applying ${\displaystyle \det }$ to the above equation, we obtain
    the dual definition:
    $${\displaystyle \det(\alpha \wedge {\star }\beta )=\langle \alpha ,\beta \rangle .}$$

## Moduli Space of Connections

The quotient space of the space of principal connections and the Gauge
$\mathcal A(P) / \hbox{Gau}(P)$ is called the moduli space of
connections. It is still infnite-dimensional. To obtain a finite
dimensional moduli spaces, one has to impose additional gauge-invariant
constraints on $\theta$: e.g. that it is a flat connection, or more
generally a Yang-Mills connection.

## Moduli Space of Yang-Mills Connections

On a principal bundle, we want to choose a canonical connection so that
curvature $F_\theta$ vanishes. But not every principal bundle can have a
flat connection, and the best one can hope for is that the bundle has
curvature as small as possible. On a bundle of connections, a connection
is defined by its local forms
${\displaystyle \theta_{\alpha }\in \Omega ^{1}(U_{\alpha },\operatorname {ad} (P))}$.
The Yang-Mills action functional $YM(\theta)$ is precisely the square of
the ${\displaystyle L^{2}}$-norm of the curvature which has critical
points, i.e. local minima, that minimize curvature called Yang-mills
connections. These Yang-mills connections, $\mathcal M$, are a finite
subset of the moduli space of connections that was originally sought
after, i.e. $\mathcal M \subset \mathcal A(P) / \hbox{Gau}(P)$. This is
more rigoursly described below. As a side note, in physics the gauge
field strength is given by curvature of connections, $F^\theta$, and the
energy of the gauge field is the Yang-mills functional.

Suppose $\pi : \mathcal P \rightarrow B$ is a principal $G$-bundle over
a compact, oriented, Riemannian manifold $B$. The inner product on $T B$
gives rise to an inner product on $T M$ and on all $\wedge^k T^*M$.
Taking the inner product of the differential form, followed by
integration over $B$ with respect to the Riemannian volume form, defines
an inner product on $\Omega^* (B)$. In terms of the Hodge star operator,
$$\langle \alpha, \beta \rangle = \int_B \alpha \wedge  * \beta$$ Let
$|| \cdot ||$ be the norm corresponding to
$\langle \cdot, \cdot \rangle$. The Yang-Mills functional on
$\mathcal A(\mathcal P)$ is the functional
$$\hbox{YM}(\theta) = ||F ||^2 = \int_B (F^\theta, * F^\theta)$$ The
Yang-Mills functional is invariant under the action of the gauge group,
i.e. $YM(\theta) = YM(\phi,\theta)$, hence all its critical points
(called Yang-Mills connections) are invariant as well. A connection
$\theta$ is a critical point of the Yang-Mills functional if and only if
it satisfies the Yang-Mills equation, $d^\theta * F^\theta = 0$. The
quotient of the space of Yang-Mills connections by the action of the
gauge group is called the Yang-Mills moduli space. In this context, the
term "moduli" is used synonymously with "parameter".

Moduli of Yang--Mills connections have been most studied when the
dimension of the base manifold X is four. Here the Yang--Mills equations
admit a simplification from a second-order PDE to a first-order PDE,
known as the anti-self-duality equations. The Yang-Mills equations
depend upon the Riemannian metric on $B$ only via the star operator on
$\Gamma^2 (B)$. The case $\dim B = 4$ is special in that it takes
$\Gamma^2 (B)$ to itself, since $4 - 2 = 2$. We mentioned already that
in this case the Yang-Mills equations are conformally invariant:
Multiplying the metric by a positive function does not change the star
operator in middle dimension, hence does not change the Yang-Mills
equations. A special type of Yang-Mills connections in $4$ dimensions
are those satisfying one of the equations
$$*F^\theta = F^\theta \text{\ \ or \ \  }  *F^\theta = - F^\theta$$
(self-duality and anti-self-duality respectively) because for such
connections, the Yang-Mills equations are a consequence of the Bianchy
identity $d^\theta F^\theta = 0$. A change of orientation of $B$ changes
the sign of the operator, and therefore exchanges the notion of duality
and anti-self duality. For certain principal bundles ($\theta$ is a
multiple of the second Chern number), ASD connections give the absolute
minimum of the Yang-Mills functional.

# Examples

## Relativity

In gauge theories, physicists begin with a Lagrangian $L[\phi, \phi']$.
The claim is that this $L$ is invariant under the action of some group.
What is a bit tricky is that to make this statement a bit more precise
requires that we have two fiber bundles at once, namely the
principal-$G$ bundle and its associated vector bundle. For each patch of
spacetime, $U_i$ where $M$ is base manifold, we pick a map
$S:U_i \rightarrow G$ (this will later be the gauge group). Then we pick
a certain representation of the group, i.e $\rho :G \rightarrow V$ where
$V$ is a vector space. We now define what will later be a section
$\psi : U_i \rightarrow[x,\phi]$ where $x$ is a point on the manifold.
In this context, gauge invariance means that
$[x,\phi] \sim [x,\rho (g^{-1})\phi]$.

Recall, we have the spacetime patch $U_i$ with the map $S$. With this,
we construct the cartesian product $U_i \times G$. If we happen to find
two overlapping open sets $U_i$ and $U_j$ then for the sets of points in
the intersection we have to make sure things are consistent and so we
define functions $t_{ij} : U_i \cap U_j \rightarrow G$ that will act on
$G$ i.e $(x,G) \rightarrow (x, t_{ij}(x)G)$. Doing this for the whole
manifold $M$ gives us another manifold $P$ that is locally
$U_i \times G$. This the principal-G bundle.

Requiring local gauge invariance in the first step meets a snag. The
problem involves the map $S$; as we go around on the manifold $M$ we
need a method to go from one fiber to another fiber on the principal-G
bundle. To do this requires we introduce a connection $\Omega$ on the
principal-G bundle. But physicists always work on the base manifold, so
we need to pull back $\Omega$ to the base manifold by some section
$\sigma$ i.e calculate $\sigma^*\Omega \equiv A$. Since these are
locally defined sections, when we are in intersection of two spacetime
patches, $U_i \cap U_j$, we will have two sections, $\sigma,\sigma'$.
This means we will get $\sigma^*\Omega=A$ and $\sigma'^*\Omega=A'$. The
two sections are related by the map $S$ i.e
$\sigma'=R_{S(x)}\sigma=\sigma_{S(x)}=\sigma g$. That is, the group acts
by a right action.

To calculate $\sigma^*\Omega$ we note that
$\langle \sigma^*\Omega, v \rangle = \langle \Omega, \sigma_* v\rangle$
where $v$ is a vector on the principal bundle. A tricky calculation
shows $\sigma'_*v = R_{g*}(\sigma_{*}v)+\eta_x(p)$ where $\eta X$ is a
fundamental vector field, $X = \langle S^*\theta,v \rangle$ and $\theta$
is the Maurer-Cartan form and $g$ is the image of $S$. To show this
works we do the calculation $$\begin{aligned}
            (\sigma'^* \omega)(v) & = <\Omega,\sigma'v> \\
            &= <\Omega,R_{g*}(\sigma_*v)>+<\Omega,\eta_X(pg)\\
            &= <R^*_g\Omega,\sigma_*v> +X \\
            &= <Ad_{g^-1}\Omega,\sigma_*v>+X=<Ad_{g^{-1}}A + S^*\theta,v>
    \end{aligned}$$ This is the usual transformation rule for the gauge
field on the base manifold. We can now state the fact that we have an
associated bundle $\mathcal A$ which is
$\mathcal{P}\times_G V = (\mathcal{P}\times V)/G$ and is locally
$U_i \times V$ with sections as defined in the first step. The sections
on this bundle are what physicists call the fields.

::: {.thebibliography}
Tao, T. What is a gauge? (2008).\
<https://terrytao.wordpress.com/2008/09/27/what-is-a-gauge/>

Eckhard Meinrenken, Principal bundles and connections.\
<http://www.math.toronto.edu/mein/teaching/moduli.pdf>

Kobayaschi, S. Theory of connections. Annali di Matematica 43, 119--194
(1957).
:::

[^1]: <https://github.com/lukepereira/notebooks>
