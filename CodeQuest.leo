<?xml version="1.0" encoding="utf-8"?>
<?xml-stylesheet ekr_test?>
<leo_file>
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5">
	<global_window_position top="10" left="10" height="890" width="885"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="gcross.20090405101642.1" str_leo_pos="3,3,1,0,3"><vh>@chapters</vh></v>
<v t="gcross.20090423002455.4"><vh>@settings</vh>
<v t="gcross.20090423002455.5"><vh>@font</vh></v>
</v>
<v t="gcross.20090519160701.1" a="E"><vh>Shelved</vh>
<v t="gcross.20090519160701.2"><vh>Proof of row eschelon block form</vh></v>
</v>
<v t="gcross.20090405101642.3" a="E"
expanded="gcross.20090423002455.2,gcross.20090423002455.3,gcross.20090511123440.4,"><vh>@thin CodeQuest.tex</vh></v>
</vnodes>
<tnodes>
<t tx="gcross.20090405101642.1"></t>
<t tx="gcross.20090423002455.4"></t>
<t tx="gcross.20090423002455.5">#body_text_font_family = courier 10 pitch
#body_text_font_size = 16
body_text_font_family = century schoolbook
body_text_font_size = 16
body_text_font_slant = None
body_text_font_weight = None
</t>
<t tx="gcross.20090519160701.1"></t>
<t tx="gcross.20090519160701.2">
\begin{proposition}
Suppose that we have been given lists of Pauli operators $\bar I$ and non-empty $\bar D$ as well as an integer $k\geq 0$ such that the following properties hold:
\begin{enumerate}
\item \label{rech-A-allzero} if $k&gt;0$, the first through $i$-th sub-operator of every operator in $\bar D$ is the identity;
\item \label{rech-A-unique-sub} for every operator $O\in\bar I$, there is an integer $1 \leq i\leq k$ and a single-qubit Pauli operator $R\in\{X,Y,Z\}$ such that $O$ is the only operator in $\bar I$ whose $i-$th sub-operator anti-commutes with $R$.
\end{enumerate}
Then there exist lists $\bar I'$ and $\bar D'$ and an integer $k'&gt;k$ such that the above properties hold (replacing the labels above with their primed counterparts) and also $\bar D'$ is strictly shorter than $\bar D$.
\end{proposition}

\begin{proof}
Define $\bar D_j\subseteq \bar D$ to be the sub-list of operators in $\bar D$ such that the $j$-th sub-operator is not the identity.  By assumption $\bar D_j=[]$ for $j\leq k$, and so since $\bar D$ is non-empty this means that there has to be at least one integer $j$ such that $j&gt;k$ and $\bar D_j$ is non-empty;  take $k'$ to be the smallest such integer.

Now, there are two cases that we need to consider:  either the $k'$-th sub-operator of all the operators in $\bar D_{k'}$ are equal, or there are at least two operators whose $k'$-th sub-operators are not equal.

\begin{description}
\item[Case 1]
Take any operator $O\in \bar D_{k'}$;  let $P$ be the $k'$-th sub-operator of $O$, and let $$
\begin{aligned}
\bar I'&amp;:=[f(W)\,\,|\,\,W\in \bar I] \cup [O],\,\,\text{and}\\
\bar D'&amp;:=[f(W)\,\,|\,\,W\in \bar D, f(W) \ne I],
\end{aligned}
$$ where $$
f(W) :=
\begin{cases}
W\cdot O &amp; \text{if the $k'$-th sub-operator of $W$ is $P$ or $Q$}\\
W &amp; \text{otherwise},
\end{cases}
$$ and $$
Q :=
\begin{cases}
X &amp; \text{if}\,P=Y\\
Y &amp; \text{otherwise}
\end{cases}
$$
(Note that this definition has the side-effect of removing all instances of $O$ from $\bar D'$.)  We now need to prove that the properties listed above hold for $\bar D'$ and $\bar I'$ with integer $k'$.

Recall that $k'$ was chosen so that every operator in $\bar D$ has the identity for its first through $(k'-1)$-th sub-operators.  Since $\bar D'$ was formed from products of operators in $\bar D$, this means that no operator can have aquired a non-identity $i$-th sub-operator for $i&lt;k'$.  Next recall that by assumption the $k'$-th sub-operator of every operator in $\bar D$ is either $P$ or the identity.  Since $\bar D'$ was constructed by taking every operator in $\bar D$ and multiplying it by $O$ if its $k'$-th sub-operator was $P$, this had the effect of cancelling-out any $P$ that appeared as $k'$-th sub-operator and so we conclude that every operator in $\bar D'$ has the identity for its $k'$-th sub-operator.  Ergo, property \ref{rech-A-allzero} is satisfied.

Since the elements of $\bar I'\slash [O]$ were constructed from elements of $\bar I$ which were possibly multiplied by $O$, they continue to satisfy property \ref{rech-A-unique-sub} since the first through $k$-th sub-operators of $O$ are the identity.  If $P$ is $X$ or $Z$, then by construction every operator in $\bar I'\slash [O]$ must have either the identity or respectively $Z$ or $X$ as its $k'$-th sub-operator, since it came from an element in $\bar I$ which was multiplied by $O$ if it had either $P$ or $Y$ as its $k'$-th sub-operator;  by similar reasoning, if $P$ is $Y$ then by construction every operator in $\bar I'\slash [O]$ must have either the identity or $Z$ as its $k'$-th sub-operator.  Ergo, if $P$ is $X$, $Y$, or $Z$, then $O$ is the only operator in $\bar I'$ whose $k'$-th sub-operator anti-commutes with respectively $Z$, $Z$, or $X$, and so property \ref{rech-A-unique-sub} is satisfied.

\item[Case 2]
Take the two operators from $\bar D_{k'}$ whose $k'$-th sub-operators are unequal and call them $A$ and $B$; let $P_A$ and $P_B$ be the $k'$-th sub-operator of respectively $A$ and $B$, and let $$
\begin{aligned}
\bar I'&amp;:=[f(W)\,\,|\,\,W\in \bar I] \cup [A,B],\,\,\text{and}\\
\bar D'&amp;:=[f(W)\,\,|\,\,W\in \bar D, f(W) \ne I],
\end{aligned}
$$ where $$
f(W) :=
\begin{cases}
W\cdot A &amp; \text{if the $k'$-th sub-operator of $W$ is $P_A$}\\
W\cdot B &amp; \text{if the $k'$-th sub-operator of $W$ is $P_B$}\\
W\cdot A\cdot B &amp; \text{if the $k'$-th sub-operator of $W$ is $P_A\cdot P_B$}\\
W &amp; \text{otherwise}
\end{cases}
$$
(Note that this definition has the side-effect of removing all instances of $A$ and $B$ from $\bar D'$.)  We now need to prove that the properties listed above hold for $\bar D'$ and $\bar I'$ with integer $k'$.

Recall that $k'$ was chosen so that every operator in $\bar D$ has the identity for its first through $(k'-1)$-th sub-operators.  Since $\bar D'$ was formed from products of operators in $\bar D$, this means that no operator can have aquired a non-identity $i$-th sub-operator for $i&lt;k'$.  Furthermore, every operator in $\bar D$ was multiplied by either $A$, $B$ or both if it had respectively $P_A$, $P_B$, or $P_A\cdot P_B$ as its $k'$-th sub-operator before adding it to $\bar D'$, so therefore every operator in $\bar D'$ has the identity for its $k'$-th sub-operator and so property \ref{rech-A-allzero} is satisfied.

Since the elements of $\bar I'\slash [O]$ were constructed from elements of $\bar I$ which were possibly multiplied by $O$, they continue to satisfy property \ref{rech-A-unique-sub} since the first through $k$-th sub-operators of $O$ are the identity.  Furthermore, every operator in $\bar I$ was multiplied by either $A$, $B$ or both if it had respectively $P_A$, $P_B$, or $P_A\cdot P_B$ as its $k'$-th sub-operator before adding it to $\bar I'$, so therefore every operator in $\bar I'$ except for $A$ and $B$ has the identity for its $k'$-th sub-operator, which means that $A$ and $B$ are the only operators whose $k'$-th sub-operator anti-commute with respectively $P_B$ and $P_A$.  Ergo, property \ref{rech-A-unique-sub} is satisfied.
\end{description}

\end{proof}
</t>
</tnodes>
</leo_file>
