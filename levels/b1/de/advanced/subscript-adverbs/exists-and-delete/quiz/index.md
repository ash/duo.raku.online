---
title: Quiz — Subskript-Adverbien
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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

Das Adverb `:exists` prüft, ob der Schlüssel vorhanden ist, und gibt einen Booleschen Wert zurück. Im Hash gibt es keinen Schlüssel `z`, also ist die Antwort `False`.

</div>

{% include nav.html %}
