---
title: 'Solution: Scambiare valori'
---

{% include menu.html %}

In questo programma, usiamo parti della sintassi di Raku dalla sezione sulle [variabili scalari](/it/essentials/scalar-variables).

## Codice

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Puoi trovare il codice sorgente nel file [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Output

Esegui il programma e controlla che stampi i valori in un ordine diverso.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Commenti

Questo programma ha tre passi. Crea e assegna le variabili, scambia i loro valori e li stampa. Ogni passo usa entrambe le variabili nella stessa istruzione. La parte più interessante è il modo in cui le variabili si scambiano i valori:

```raku
($a, $b) = $b, $a;
```

Le parentesi sul lato sinistro sono necessarie. Ma puoi anche aggiungerle sul lato destro:

```raku
($a, $b) = ($b, $a);
```

Cosa succede se togli le parentesi?

```raku
$a, $b = $b, $a;
```

In questo caso, Raku ti avvisa che `$a` sul lato destro non viene usato:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

In realtà, questa riga fa la stessa cosa dell'assegnazione inutile `$b = $b`. Puoi vederlo facilmente se cambi i valori a destra, per esempio:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Questa volta ci sono ancora più avvisi. Ma puoi anche vedere che solo `$b` ha cambiato il suo valore:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
