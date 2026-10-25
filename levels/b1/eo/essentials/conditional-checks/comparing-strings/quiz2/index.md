---
title: 'Kvizo 2 — la kondiĉo en `if`'
---

{% include menu.html %}

Unue korektu la programon, kaj poste respondu la demandon.

{:.quiz-code .fill}
. | my $password = prompt 'Enigu vian pasvorton: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Ĝusta';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Malĝusta';
. | }

Kion faras ĉi tiu programo, kiam la testo uzas `=`?

{:.quiz-select}
Ĉiam presas 'Ĝusta' | Via respondo:&nbsp; (: Ĉiam presas 'Ĝusta', Ĉiam presas 'Malĝusta', Presas 'Ĝusta' por ĝustaj pasvortoj kaj 'Malĝusta' por malĝustaj, Presas 'Malĝusta' por ĝustaj pasvortoj kaj 'Ĝusta' por malĝustaj :)

<div class="extended-explanation">La programo ĉiam presas 'Ĝusta', ĉar <code>$password = '*&(#&$#Y'</code> estas asigno. Ĝi donas al la variablo <code>$password</code> novan valoron. Ĉi tiu valoro estas nek nulo nek malplena ĉeno, do ĝi validas kiel <code>True</code>. En ĉi tiu kazo, la pasvorto de la uzanto neniam estas kontrolita.<br/><br/>Se vi tajpas <code>==</code>, la programo rompiĝos. Ĝi provas konverti ambaŭ ĉenojn al nombroj, kaj tio malsukcesas. La du ĉenoj estas la pasvorto de la uzanto kaj la ĝusta pasvorto.</div>

{% include quiz.html %}

{% include nav.html %}
