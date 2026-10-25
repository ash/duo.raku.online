---
title: 'Utendo `while`'
---

{% include menu.html %}

Anulus `while` condicionem et clausulam codicis habet. Raku clausulam iterum atque iterum exsequitur _dum_ condicio est `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Intra numerum, qui non maior est quam 10: ';
    say "Intrasti $x.";
}
say "$x maior est quam 10.";
```

Programma a te numerum petit. Si numerus non maior est quam 10, anulus iterum currit. Cum numerus maior est quam 10, condicio `$x <= 10` non iam vera est. Tum anulus desinit, et programma ad lineam sequentem it.

```console
$ raku t.raku
Intra numerum, qui non maior est quam 10: 10
Intrasti 10.
Intra numerum, qui non maior est quam 10: 4
Intrasti 4.
Intra numerum, qui non maior est quam 10: 1
Intrasti 1.
Intra numerum, qui non maior est quam 10: 20
Intrasti 20.
20 maior est quam 10.
```

{% include nav.html %}
