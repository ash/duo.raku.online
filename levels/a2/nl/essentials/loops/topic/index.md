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

Je hoeft `$n` niet te schrijven. Zonder `$n` gebruikt Raku de variabele `$_`. Raku maakt deze variabele voor je. Dit programma doet dus hetzelfde:

```raku
for 1..5 {
    say $_;
}
```

Je [weet al](/nl/essentials/hello-world/) dat `say` ook een methode kan zijn:

```raku
for 1..5 {
    $_.say;
}
```

Voor een methode op `$_` heb je de naam `$_` niet nodig. De lus kan dus nog korter:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
