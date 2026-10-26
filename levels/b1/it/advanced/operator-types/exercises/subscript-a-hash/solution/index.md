---
title: 'Solution: Subscript di un hash'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Puoi trovare il codice sorgente nel file [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Output

```
1
```

## Commenti

1. L'indicizzazione `< >` è un operatore postcircumfisso. Viene dopo un termine, l'hash, e va intorno alla chiave.

1. `%h<a>` dà il valore sotto la chiave `a`. Quel valore è `1`.

{% include nav.html %}
