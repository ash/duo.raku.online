---
title: Quiz — do
---

{% include menu.html %}

Was gibt dieses Programm aus?

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

`do` funktioniert auch vor Kontrollstrukturen, nicht nur vor einfachen Blöcken. Hier macht `do given` das ganze `given`/`when` zu einem Ausdruck. Das Topic `-3` passt auf `$_ < 0`. Also ist der Wert des Ausdrucks `'neg'`. Das Programm speichert ihn in `$s`.

</div>

{% include nav.html %}
