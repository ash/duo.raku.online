---
title: 'Solution: Alias di un array'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione del compito.

## Codice

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Puoi trovare il codice sorgente nel file [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Output

```
[10 20 30 40]
```

## Commenti

1. Il binding `@alias := @original` non copia l'array. Fa di `@alias` un altro nome per lo stesso contenitore array.

1. Questa volta, la modifica passa per `@original`, e cambia la struttura: `push` aggiunge un elemento. I due nomi sono lo stesso identico contenitore, quindi anche `@alias` vede il nuovo elemento. Puoi sempre usare un nome al posto dell'altro. Non importa quale usi per leggere o cambiare l'array.

{% include nav.html %}
