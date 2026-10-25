---
title: Thema variabele
---

{% include menu.html %}

`$_` is een speciale variabele. Hij heet de _topic variabele_.

Bekijk deze lus over een bereik:

```raku
for 1..5 -> $n {
    say $n;
}
```

Je kunt de variabele `$n` weglaten. Dan gebruikt Raku in plaats daarvan de variabele `$_`. Het programma doet hetzelfde als dit programma:

```raku
for 1..5 {
    say $_;
}
```

Je [weet al](/nl/essentials/hello-world/) dat je `say` als een methode kunt gebruiken:

```raku
for 1..5 {
    $_.say;
}
```

Als je een methode op `$_` aanroept, hoef je de variabele niet te schrijven. De lus kan dus nog korter:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
