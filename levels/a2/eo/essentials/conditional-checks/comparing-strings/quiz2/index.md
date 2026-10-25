---
title: 'Kvizo 2 — la kondiĉo en `if`'
---

{% include menu.html %}

Korektu la programon. Poste respondu la demandon.

{:.quiz-code .fill}
. | my $password = prompt 'Enigu vian pasvorton: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Ĝusta';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Malĝusta';
. | }

Nun metu `=` en la teston. Kion faras la programo?

{:.quiz-select}
Ĉiam presas 'Ĝusta' | Via respondo:&nbsp; (: Ĉiam presas 'Ĝusta', Ĉiam presas 'Malĝusta', Presas 'Ĝusta' por ĝustaj pasvortoj kaj 'Malĝusta' por malĝustaj, Presas 'Malĝusta' por ĝustaj pasvortoj kaj 'Ĝusta' por malĝustaj :)

<div class="extended-explanation">La programo ĉiam presas 'Ĝusta'. Ĉi tie, <code>$password = '*&(#&$#Y'</code> estas asigno. Ĝi donas al la variablo <code>$password</code> novan valoron. Ĉi tiu valoro ne estas nulo, kaj ĝi ne estas malplena ĉeno. Do Raku vidas ĝin kiel <code>True</code>. La programo neniam kontrolas la pasvorton de la uzanto ĉi tie.<br/><br/>Kaj se vi tajpas <code>==</code>? Tiam la programo rompiĝas. Ĝi provas ŝanĝi ambaŭ ĉenojn al nombroj. Ĉi tiuj estas la pasvorto de la uzanto kaj la ĝusta pasvorto. Tio ne funkcias, kaj la programo malsukcesas.</div>

{% include quiz.html %}

{% include nav.html %}
