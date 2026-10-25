---
title: Themenvariable
---

{% include menu.html %}

`$_` ist eine spezielle Variable. Sie heißt _Themenvariable_.

Sehen Sie sich diese Schleife über einen Bereich an:

```raku
for 1..5 -> $n {
    say $n;
}
```

Sie müssen `$n` nicht schreiben. Ohne `$n` verwendet Raku die Variable `$_`. Raku erstellt diese Variable für Sie. Also macht dieses Programm dasselbe:

```raku
for 1..5 {
    say $_;
}
```

Sie [wissen schon](/de/essentials/hello-world/), dass `say` auch eine Methode sein kann:

```raku
for 1..5 {
    $_.say;
}
```

Ein Methodenaufruf auf `$_` braucht den Namen `$_` nicht. Also kann die Schleife noch kürzer sein:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
