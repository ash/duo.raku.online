---
title: Quiz 1 — Zitieren von Zeichenketten-Arrays
---

{% include menu.html %}

Sehen Sie sich in jedem Array das Element mit dem Index `1` an. Welche Arrays haben dort den Buchstaben `B`? Mit anderen Worten, wo gibt `say @array[1]` den Buchstaben `B` aus?

{:.quiz}
1 | my @array = &lt;A B C&gt;;
1 | my @array = &apos;A&apos;, &apos;B&apos;, &apos;C&apos;;
0 | my @array = <&apos;A&apos;, &apos;B&apos;, &apos;C&apos;>; | Die Elemente dieses Arrays enthalten sowohl die Anführungszeichen als auch das Komma: `'B',`.
1 | my @array = [&apos;A&apos;, &apos;B&apos;, &apos;C&apos;];
1 | my @array = (&apos;A&apos;, &apos;B&apos;, &apos;C&apos;);

{% include quiz.html %}

{% include nav.html %}
