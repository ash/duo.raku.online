---
title: Quiz — Subscript-adverbia
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

{:.quiz}
0 | True
1 | False
0 | Nil
0 | (Any)

{% include quiz.html %}

<div class="extended-explanation">

Het adverb `:exists` vraagt of de sleutel er is. Het geeft `True` of `False` terug. Er is geen sleutel `z` in de hash. Dus is het antwoord `False`.

</div>

{% include nav.html %}
