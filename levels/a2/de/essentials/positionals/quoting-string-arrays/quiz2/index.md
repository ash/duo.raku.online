---
title: Quiz 2 — Erkennen von Listen
---

{% include menu.html %}

Manchmal sind Listen verwirrend. Man muss lernen, den Unterschied zwischen Listen und Arrays zu sehen.

## 1

Was gibt dieses Programm aus?

```raku
my @data = [
    <Frankreich Italien Deutschland>,
    <Kanada USA Mexiko>,
    <Japan China Indien>,
];

say @data[0].WHAT;
```

{:.quiz-select}
(Liste) | Antwort: (: (Array), (Liste), (Str) :)

## 2

Und was gibt dieses Programm aus?

```raku
my @data = [
    ['Frankreich', 'Italien', 'Deutschland'],
    ['Kanada', 'USA', 'Mexiko'],
    ['Japan', 'China', 'Indien'],
];

say @data[0].WHAT;
```

{:.quiz-select}
(Array) | Antwort: (: (Array), (Liste), (Str) :)

{% include quiz.html %}

{% include nav.html %}
