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

Sie können die Variable `$n` weglassen. Dann verwendet Raku stattdessen die Variable `$_`. Das Programm macht dasselbe wie dieses:

```raku
for 1..5 {
    say $_;
}
```

Sie [wissen schon](/de/essentials/hello-world/), dass Sie `say` als Methode verwenden können:

```raku
for 1..5 {
    $_.say;
}
```

Wenn Sie eine Methode auf `$_` aufrufen, müssen Sie die Variable nicht schreiben. Deshalb kann die Schleife noch kürzer werden:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
