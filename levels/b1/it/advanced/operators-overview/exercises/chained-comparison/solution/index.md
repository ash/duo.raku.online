---
title: 'Solution: Confronto concatenato'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
say 0 <= 73 <= 100;
```

🦋 Puoi trovare il codice sorgente nel file [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Output

```
True
```

## Commenti

1. Gli operatori di confronto possono essere concatenati. Quindi `0 <= 73 <= 100` significa “0 è al massimo 73, e 73 è al massimo 100”. L'operatore `<=` ammette i valori agli estremi. Quindi anche un punteggio di esattamente `0` o `100` sarebbe valido.

1. Entrambe le parti sono vere, quindi tutta l'espressione è `True`. Nota che scrivi il valore centrale `73` una sola volta. Eppure viene confrontato con entrambi i suoi vicini.

1. Senza concatenazione, dovresti scrivere entrambi i confronti e unirli con `&&`. Allora ripeti il valore centrale: `0 <= 73 && 73 <= 100`. La forma concatenata dice la stessa cosa in modo più breve.

{% include nav.html %}
