---
title: 'Solutio: Convertorem utere'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

Programma, `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Utrumque archivum fontem in directoria [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature) invenies.

## Exitus

```console
$ raku -I. temperature.raku 100
212
```

## Commentarii

1. `use Temperature` modulum onerat et eius subprogramma exportatum `c-to-f` importat. Itaque programma id directe vocare potest.

1. `sub MAIN($celsius)` argumentum lineae imperandi accipit. Itaque temperaturam eligis cum programma curris. In codice scripta non est. Si programma sine argumento curris, Raku nuntium usus sponte imprimit.

1. Raku modulum invenire posse debet. Ideo programma cum `-I.` curris. Tum Raku `Temperature.rakumod` in directoria currenti quaerit. Conversio `100` °C dat `212` °F.

{% include nav.html %}
