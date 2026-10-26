---
title: 'Solution: Un file META6'
translations_gpt: La soluzione di 'Un file META6'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `provides` collega il nome del modulo al suo file. Il codice del modulo è in questo file. Nel nome, `::` separa le parti. Il percorso delle directory corrisponde a queste parti.

1. `depends` elenca le altre distribuzioni che servono a questa. Qui ha un solo elemento: `"JSON::Fast"`. Qualcuno installa `Greet::Simple`. Allora gli strumenti installano prima `JSON::Fast`. Un array vuoto vuol dire che la distribuzione non ha bisogno di altre distribuzioni.

{% include nav.html %}
