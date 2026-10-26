---
title: 'Risinājums: META6 fails'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

`META6.json`:

```json
{
    "name": "Greet::Simple",
    "version": "0.0.1",
    "description": "A simple greeting module",
    "authors": [ "Your Name" ],
    "license": "Artistic-2.0",
    "depends": [ "JSON::Fast" ],
    "provides": {
        "Greet::Simple": "lib/Greet/Simple.rakumod"
    }
}
```

🦋 Atrodiet programmu failā [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Komentāri

1. `provides` saista moduļa nosaukumu ar failu, kurā ir tā kods. Direktoriju ceļš atbilst nosaukuma daļām starp `::`.

1. `depends` uzskaita citas distribūcijas, kas šai ir vajadzīgas. Šeit ir tikai viens ieraksts, `"JSON::Fast"`. Kad kāds instalē `Greet::Simple`, rīki vispirms iegūs `JSON::Fast`. Tukšs masīvs nozīmētu, ka atkarību nav.

{% include nav.html %}
