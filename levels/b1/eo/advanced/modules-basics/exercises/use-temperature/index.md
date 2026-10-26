---
title: Uzi la konvertilon
translations_gpt:
---

{% include menu.html %}

## Problemo

Vi havas modulon en dosiero `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Skribu apartan programon, kiu uzas ĉi tiun modulon. La programo ricevas temperaturon laŭ Celsio kiel komandlinian argumenton. Ĝi konvertas ĝin al Fahrenheit per la modulo kaj presas la rezulton.

## Ekzemplo

```console
$ raku -I. temperature.raku 100
212
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
