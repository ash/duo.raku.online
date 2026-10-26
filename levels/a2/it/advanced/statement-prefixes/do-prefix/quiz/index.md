---
title: Quiz — do
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
my $s = do given -3 {
    when $_ < 0 { 'neg' }
    default     { 'nonneg' }
};
say $s;
```

{:.quiz}
1 | neg
0 | nonneg
0 | -3
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`do` funziona anche prima delle strutture di controllo, non solo prima dei blocchi semplici. Qui `do given` fa di tutto il `given`/`when` un'espressione. Il topic `-3` corrisponde a `$_ < 0`. Così il valore dell'espressione è `'neg'`. Il programma lo salva in `$s`.

</div>

{% include nav.html %}
