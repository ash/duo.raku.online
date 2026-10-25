---
title: Themenvariable
---

{% include menu.html %}

`$_` ist eine spezielle Variable. Sie wird _Themenvariable_ genannt.

Hier ist eine Schleife über einen Bereich:

```raku
for 1..5 -> $n {
    say $n;
}
```

Sie können die Variable `$n` weglassen. Dann verwendet Raku automatisch stattdessen die Variable `$_`. Das Programm ist also dasselbe wie dieses:

```raku
for 1..5 {
    say $_;
}
```

Wie Sie sich [erinnern](/de/essentials/hello-world/), können Sie `say` auch als Methode aufrufen:

```raku
for 1..5 {
    $_.say;
}
```

Um eine Methode auf `$_` aufzurufen, müssen Sie die Variable selbst nicht schreiben. Also können wir unsere Schleife noch einfacher machen:

```raku
for 1..5 {
    .say;
}
```

{% include nav.html %}
