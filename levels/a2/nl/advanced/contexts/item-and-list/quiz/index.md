---
title: Quiz — Itemcontext
translations_gpt: 'Quiz — Item context'
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
my @a = 1, 2, 3;
my $n = 0;
$n++ for $(@a);
say $n;
```

{:.quiz}
0 | 3
1 | 1
0 | 0
0 | 6

{% include quiz.html %}

<div class="extended-explanation">

De contextomzetter `$( … )` stelt itemcontext in. Dus is de array één enkele waarde, geen lijst van elementen. De `for`-lus ziet één item. Dus voert hij zijn body maar één keer uit. Aan het eind is `$n` gelijk aan `1`. Zonder `$( )` loopt de lus drie keer.

</div>

{% include nav.html %}
