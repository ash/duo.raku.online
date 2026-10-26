---
title: 'Solution: Un file META6'
translations_gpt: La soluzione di 'Un file META6'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

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

🦋 Puoi trovare il codice sorgente nel file [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Commenti

1. `provides` collega il nome del modulo al file che contiene il suo codice. Il percorso delle directory corrisponde alle parti del nome separate da `::`.

1. `depends` elenca le altre distribuzioni di cui questa ha bisogno. Qui c'è una sola voce, `"JSON::Fast"`. Quando qualcuno installa `Greet::Simple`, gli strumenti scaricano prima `JSON::Fast`. Un array vuoto vorrebbe dire che non ci sono dipendenze.

{% include nav.html %}
