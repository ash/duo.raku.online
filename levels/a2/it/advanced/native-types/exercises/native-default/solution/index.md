---
title: 'Solution: Il valore predefinito nativo'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my num $n;
my str $s;

say $n;
say "[$s]";
```

🦋 Puoi trovare il codice sorgente nel file [native-default.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/native-default.raku).

## Output

```
0
[]
```

## Commenti

1. Un `num` nativo non può essere indefinito. Quindi inizia da `0`, come un `int` nativo. Non inizia come `(Num)`.

1. Una `str` nativa inizia come stringa vuota. Così tra le parentesi non c'è niente. Un tipo nativo non contiene mai un valore indefinito.

1. Qui i tipi sono molto importanti. Prova a toglierli. Scrivi invece `my $n; my $s;`. Ora le variabili sono normali contenitori. All'inizio sono *indefinite*: contengono `Any`. Allora `say $n` stampa `(Any)`. La stringa interpola `$s`, ma `$s` è indefinita. Così Raku mostra un avviso: *"Use of uninitialized value … in string context"*. Solo i tipi nativi `num` e `str` danno i valori iniziali. Sono `0` e la stringa vuota.

{% include nav.html %}
