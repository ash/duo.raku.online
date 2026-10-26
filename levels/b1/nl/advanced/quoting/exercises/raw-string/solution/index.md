---
title: 'Solution: Een onbewerkte string'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say Q{$x and \n};
```

🦋 Je kunt de broncode vinden in het bestand [raw-string.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/raw-string.raku).

## Uitvoer

```
$x and \n
```

## Opmerkingen

1. `Q` is de meest letterlijke quoting-vorm. Hij interpoleert niets, en hij verwerkt geen escapes.

1. Dus `$x` blijft gewone tekst. En `\n` blijft twee tekens, een backslash en een `n`.

{% include nav.html %}
