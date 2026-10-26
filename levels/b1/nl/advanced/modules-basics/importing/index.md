---
title: Importeren
translations_gpt: Importeren
---

{% include menu.html %}

Je kunt een module op meer dan één manier in een programma laden. De drie statements `use`, `need` en `require` verschillen in _wanneer_ ze de module laden. Ze verschillen ook in _wat_ ze beschikbaar maken.

## `use`

Je hebt `use` al gezien. Het laadt de module tijdens het compileren en importeert de geëxporteerde namen. Je kunt ze dus direct aanroepen:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` laadt de module ook tijdens het compileren. Maar het importeert de geëxporteerde namen _niet_. Je bereikt de `our`-variabelen nog steeds via de naam van de module:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Na `need Greeting` zou Raku een gewone `hello(...)` niet herkennen, omdat er niets is geïmporteerd. Alleen de gekwalificeerde namen, zoals `$Greeting::version`, zijn beschikbaar.

## `require`

`require` laadt de module tijdens de _uitvoering_ in plaats van tijdens het compileren. Dat is handig als je pas tijdens de uitvoering weet of je een module nodig hebt. De naam kan bijvoorbeeld uit de invoer van de gebruiker komen.

Omdat de module tijdens de uitvoering wordt geladen, wordt er niets automatisch geïmporteerd. Om symbolen te importeren, zet je ze tussen punthaken na de naam van de module. Dan kun je ze direct aanroepen:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

In dagelijkse code is `use` wat je wilt. `need` en `require` zijn er voor minder gangbare gevallen.

{% include nav.html %}
