---
title: 'Risinājums: META6 fails'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `provides` saista moduļa nosaukumu ar tā failu. Šajā failā ir moduļa kods. Nosaukumā `::` atdala daļas. Direktoriju ceļš atbilst šīm daļām.

1. `depends` uzskaita citas distribūcijas, kas šai distribūcijai vajadzīgas. Šeit tajā ir tikai viens ieraksts: `"JSON::Fast"`. Varbūt kāds instalē `Greet::Simple`. Tad rīki vispirms instalē `JSON::Fast`. Tukšs masīvs nozīmē, ka distribūcijai nav vajadzīgas citas distribūcijas.

{% include nav.html %}
