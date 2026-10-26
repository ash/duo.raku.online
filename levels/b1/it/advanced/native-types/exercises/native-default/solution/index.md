---
title: 'Solution: Il valore predefinito nativo'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Un `num` nativo non può essere indefinito. Quindi, come un `int` nativo, inizia da `0` e non da `(Num)`.

1. Una `str` nativa inizia come stringa vuota. Per questo nell'output non c'è niente tra le parentesi. Nessuno dei tipi nativi contiene mai un valore indefinito.

1. Qui i nomi dei tipi sono molto importanti. Se li togli e scrivi `my $n; my $s;`, le variabili diventano normali contenitori. All'inizio sono *indefinite* (`Any`). Allora `say $n` stampa `(Any)`. Anche interpolare la `$s` indefinita dà un avviso: *"Use of uninitialized value … in string context"*. Solo i tipi nativi `num` e `str` danno i valori predefiniti `0` e stringa vuota.

{% include nav.html %}
