---
title: Quiz — Slurpy-Parameter
translations_gpt:
---

{% include menu.html %}

Was gibt das folgende Programm aus?

```raku
sub f($first, *@rest) {
    say @rest.elems;
}

f('a', 'b', 'c');
```

{:.quiz}
1 | 2
0 | 3
0 | 1
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Feste Parameter bekommen ihre Werte vor dem Slurpy-Parameter. `$first` nimmt `'a'`, und nur die zwei restlichen Argumente, `'b'` und `'c'`, kommen in `@rest`. Also ergibt sein `.elems` den Wert `2`.

</div>

{% include nav.html %}
