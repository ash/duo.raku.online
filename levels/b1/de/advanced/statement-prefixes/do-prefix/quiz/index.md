---
title: Quiz — do
---

{% include menu.html %}

Was gibt das folgende Programm aus?

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

`do` funktioniert vor Kontrollstrukturen, nicht nur vor einfachen Blöcken. Hier verwandelt `do given` das ganze `given`/`when` in einen Ausdruck. Das Topic `-3` passt auf `$_ < 0`, also ergibt der Ausdruck `'neg'`. Dieser Wert wird in `$s` gespeichert.

</div>

{% include nav.html %}
