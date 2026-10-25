---
title: Quiz 1 — Citeren van string arrays
---

{% include menu.html %}

Kijk naar het element met index `1` in elke array. Welke arrays hebben daar de letter `B`? Met andere woorden: waar print `say @array[1]` een `B`?

{:.quiz}
1 | my @array = &lt;A B C&gt;;
1 | my @array = &apos;A&apos;, &apos;B&apos;, &apos;C&apos;;
0 | my @array = <&apos;A&apos;, &apos;B&apos;, &apos;C&apos;>; | De elementen van deze array bevatten zowel de aanhalingstekens als zelfs de komma: `'B',`.
1 | my @array = [&apos;A&apos;, &apos;B&apos;, &apos;C&apos;];
1 | my @array = (&apos;A&apos;, &apos;B&apos;, &apos;C&apos;);

{% include quiz.html %}

{% include nav.html %}
