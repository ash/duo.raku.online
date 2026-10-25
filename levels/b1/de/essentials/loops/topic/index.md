---
title: Themenvariable
---

{% include menu.html %}

`$_` ist eine spezielle Variable, die _Themenvariable_ genannt wird.

Sehen Sie sich diese Schleife über einen Bereich an:

```raku
for 1..5 -> $n {
    say $n;
}
```

Sie können die Variable `$n` weglassen, und dann verwendet Raku stattdessen eine automatische Variable, `$_`. Das Programm ist gleichbedeutend mit diesem:

```raku
for 1..5 {
    say $_;
}
```

Wie Sie sich [erinnern](/de/essentials/hello-world/), können Sie `say` auch als Methode verwenden:

```raku
for 1..5 {
    $_.say;
}
```

Wenn Sie eine Methode auf `$_` aufrufen, müssen Sie die Variable selbst nicht schreiben. Unsere Schleife lässt sich also noch weiter vereinfachen:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
