---
title: 'Solvo: Dosiero META6'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `provides` ligas la nomon de la modulo al ĝia dosiero. La kodo de la modulo estas en ĉi tiu dosiero. En la nomo, `::` apartigas la partojn. La dosieruja vojo kongruas kun ĉi tiuj partoj.

1. `depends` listigas la aliajn distribuojn, kiujn ĉi tiu bezonas. Ĉi tie ĝi havas nur unu eron: `"JSON::Fast"`. Eble iu instalas `Greet::Simple`. Tiam la iloj unue instalas `JSON::Fast`. Malplena tabelo signifas, ke la distribuo bezonas neniun alian distribuon.

{% include nav.html %}
