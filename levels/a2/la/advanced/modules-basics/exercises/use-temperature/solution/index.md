---
title: 'Solutio: Convertorem utere'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `use Temperature` modulum onerat. Etiam subprogramma exportatum `c-to-f` importat. Itaque programma id directe vocare potest.

1. `sub MAIN($celsius)` argumentum lineae imperandi accipit. Itaque temperaturam eligis cum programma curris. In codice fixa non est. Sine argumento, Raku sponte nuntium usus imprimit. Hic nuntius ostendit quomodo programma curras.

1. Raku modulum invenire posse debet. Itaque programma cum `-I.` curris. Tum Raku `Temperature.rakumod` in directoria currenti quaerit. Programma `100` °C in `212` °F mutat.

{% include nav.html %}
