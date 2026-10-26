---
title: 'Solvo: Aliasi tabelon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Vi povas trovi la fontkodon en la dosiero [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Eligo

```
[10 20 30 40]
```

## Komentoj

1. Rigardu la ligadon `@alias := @original`. Ĝi faras el `@alias` duan nomon por la sama tabela ujo. Ĝi ne kopias la tabelon.

1. Ĉi-foje, la programo ŝanĝas la tabelon tra `@original`. Ĝi ŝanĝas la strukturon: `push` aldonas elementon. Ambaŭ nomoj apartenas al la tute sama ujo. Do `@alias` ankaŭ vidas la novan elementon. La du nomoj funkcias tute same. Ambaŭ nomoj taŭgas por legi aŭ ŝanĝi la tabelon.

{% include nav.html %}
