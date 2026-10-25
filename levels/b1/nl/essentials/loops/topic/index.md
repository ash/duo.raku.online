---
title: Thema variabele
---

{% include menu.html %}

`$_` is een speciale variabele. Hij heet de _topic variabele_.

Hier is een lus over een bereik:

```raku
for 1..5 -> $n {
    say $n;
}
```

Je kunt de variabele `$n` weglaten. Dan gebruikt Raku automatisch de variabele `$_` in plaats daarvan. Het programma is dus hetzelfde als dit:

```raku
for 1..5 {
    say $_;
}
```

Zoals je je [herinnert](/nl/essentials/hello-world/), kun je `say` ook als een methode aanroepen:

```raku
for 1..5 {
    $_.say;
}
```

Om een methode op `$_` aan te roepen, hoef je de variabele zelf niet te schrijven. Dus kunnen we onze lus nog eenvoudiger maken:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
