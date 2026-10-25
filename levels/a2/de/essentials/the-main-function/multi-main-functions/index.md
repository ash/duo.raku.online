---
title: Mehrere `MAIN`-Funktionen
---

{% include menu.html %}

Wie jede andere Funktion in Raku kann `MAIN` `multi`-Varianten haben. So kann das Programm auf verschiedene Eingaben unterschiedlich reagieren. Die Eingabe kann eine andere Anzahl von Parametern haben. Oder die Parameter können andere Typen haben.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Mit einem Argument verdoppelt dieses Programm das Argument. Mit zwei Argumenten addiert es die beiden:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
