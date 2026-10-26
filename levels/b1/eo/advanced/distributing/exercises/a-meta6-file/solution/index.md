---
title: 'Solvo: Dosiero META6'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [META6.json](https://github.com/ash/raku-course/blob/master/exercises/advanced/distributing/a-meta6-file/META6.json).

## Komentoj

1. `provides` ligas la modulan nomon al la dosiero, kiu enhavas ĝian kodon. La dosieruja vojo kongruas kun la partoj de la nomo inter la `::`.

1. `depends` listigas la aliajn distribuojn, kiujn ĉi tiu bezonas. Ĉi tie estas nur unu ero, `"JSON::Fast"`. Kiam iu instalas `Greet::Simple`, la iloj unue prenos `JSON::Fast`. Malplena tabelo signifus, ke ne estas dependecoj.

{% include nav.html %}
