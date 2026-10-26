---
title: 'Solution: Primo o no'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 Puoi trovare il codice sorgente nel file [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Output

```
True
False
```

## Commenti

1. `97` non ha divisori tranne `1` e sé stesso, quindi `is-prime` restituisce `True`.

1. `91` sembra primo, ma è `7 × 13`, quindi `is-prime` restituisce `False`. Il metodo trova i fattori al posto tuo. È proprio per questo che esiste.

{% include nav.html %}
