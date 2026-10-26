---
title: 'Solvo: Uzi la konvertilon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

La programo, `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Vi povas trovi ambaŭ fontdosierojn en la dosierujo [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Eligo

```console
$ raku -I. temperature.raku 100
212
```

## Komentoj

1. `use Temperature` ŝargas la modulon. Ĝi ankaŭ importas la eksportitan subrutinon `c-to-f`. Do la programo povas voki ĝin rekte.

1. `sub MAIN($celsius)` ricevas la komandlinian argumenton. Do vi elektas la temperaturon, kiam vi rulas la programon. Ĝi ne estas fiksita en la kodo. Sen argumento, Raku aŭtomate presas uzad-mesaĝon. Ĉi tiu mesaĝo montras, kiel ruli la programon.

1. Raku devas povi trovi la modulon. Do vi rulas la programon per `-I.`. Tiam Raku serĉas `Temperature.rakumod` en la nuna dosierujo. La programo ŝanĝas `100` °C al `212` °F.

{% include nav.html %}
