---
title: Quiz — Slurpy-Parameter
translations_gpt:
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

Die festen Parameter bekommen ihre Werte vor dem Slurpy-Parameter. `$first` nimmt `'a'`. Nur die zwei anderen Argumente, `'b'` und `'c'`, kommen in `@rest`. Also ergibt `.elems` für dieses Array `2`.

</div>

{% include nav.html %}
