---
title: Тест 1 — Цитування рядкових масивів
---

{% include menu.html %}

Подивіться на елемент з індексом `1` у кожному масиві. У яких масивах там є літера `B`? Іншими словами, де `say @array[1]` виводить `B`?

{:.quiz}
1 | my @array = &lt;A B C&gt;;
1 | my @array = &apos;A&apos;, &apos;B&apos;, &apos;C&apos;;
0 | my @array = <&apos;A&apos;, &apos;B&apos;, &apos;C&apos;>; | Елементи цього масиву містять як лапки, так і кому: `'B',`.
1 | my @array = [&apos;A&apos;, &apos;B&apos;, &apos;C&apos;];
1 | my @array = (&apos;A&apos;, &apos;B&apos;, &apos;C&apos;);

{% include quiz.html %}

{% include nav.html %}
