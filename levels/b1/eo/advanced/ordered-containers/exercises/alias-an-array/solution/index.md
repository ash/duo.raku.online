---
title: 'Solvo: Aliasi tabelon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo de la tasko.

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

1. La ligado `@alias := @original` ne kopias la tabelon. Ĝi faras el `@alias` alian nomon por la sama tabela ujo.

1. Ĉi-foje, la ŝanĝo iras tra `@original`, kaj ĝi ŝanĝas la strukturon: `push` aldonas elementon. Ambaŭ nomoj estas la tute sama ujo, do `@alias` ankaŭ vidas la novan elementon. Vi ĉiam povas uzi unu nomon anstataŭ la alia. Ne gravas, kiun vi uzas por legi aŭ ŝanĝi la tabelon.

{% include nav.html %}
