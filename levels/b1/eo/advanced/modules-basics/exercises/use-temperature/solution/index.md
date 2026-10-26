---
title: 'Solvo: Uzi la konvertilon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `use Temperature` ŝargas la modulon kaj importas ĝian eksportitan subrutinon `c-to-f`. Do la programo povas voki ĝin rekte.

1. `sub MAIN($celsius)` ricevas la komandlinian argumenton. Do vi elektas la temperaturon, kiam vi rulas la programon. Ĝi ne estas skribita en la kodo. Se vi rulas la programon sen argumento, Raku aŭtomate presas uzad-mesaĝon.

1. Raku devas povi trovi la modulon. Tial vi rulas la programon per `-I.`. Tiam Raku serĉas `Temperature.rakumod` en la nuna dosierujo. La konverto de `100` °C donas `212` °F.

{% include nav.html %}
