---
title: 'Solvo: Kiom da ciferoj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
say (2 ** 1000).chars;
```

🦋 Vi povas trovi la fontkodon en la dosiero [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Eligo

```
302
```

## Komentoj

1. Entjeroj en Raku ne havas limon de grandeco. Do Raku trovas la ekzaktan valoron de `2 ** 1000`. Ĝi ne rondigas la nombron. La nombro ne superfluas.

1. Kutime, `chars` estas metodo por ĉenoj. Vi ankaŭ povas voki ĝin sur entjero. Tiam ĝi unue faras el la nombro tekston, en bazo 10. Poste ĝi nombras la signojn. Ĉi tiu nombro havas nek minussignon, nek dekuman punkton. Do la nombro da signoj estas la nombro da ciferoj: `302`.

{% include nav.html %}
