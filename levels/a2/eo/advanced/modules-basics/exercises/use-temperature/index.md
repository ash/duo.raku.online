---
title: Uzi la konvertilon
translations_gpt:
---

{% include menu.html %}

## Problemo

Jen modulo en la dosiero `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Skribu apartan programon. Ĝi uzas ĉi tiun modulon. La programo ricevas temperaturon laŭ Celsio kiel komandlinian argumenton. Ĝi ŝanĝas la temperaturon al Fahrenheit per la modulo. Poste ĝi presas la rezulton.

## Ekzemplo

```console
$ raku -I. temperature.raku 100
212
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
