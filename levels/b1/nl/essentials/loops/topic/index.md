---
title: Thema variabele
---

{% include menu.html %}

`$_` is een speciale variabele die de _topic variabele_ wordt genoemd.

Bekijk deze lus over een bereik:

```raku
for 1..5 -> $n {
    say $n;
}
```

Je kunt de variabele `$n` weglaten, en dan gebruikt Raku in plaats daarvan een automatische variabele, `$_`. Het programma is hetzelfde als dit:

```raku
for 1..5 {
    say $_;
}
```

Zoals je je [herinnert](/nl/essentials/hello-world/), kun je `say` ook als een methode gebruiken:

```raku
for 1..5 {
    $_.say;
}
```

Als je een methode op `$_` aanroept, hoef je de variabele zelf niet te schrijven. Onze lus kan dus nog eenvoudiger worden gemaakt:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
