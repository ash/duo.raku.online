---
title: 'Solution: Scambiare valori'
---

{% include menu.html %}

Questo programma usa la sintassi di Raku della sezione sulle [variabili scalari](/it/essentials/scalar-variables).

## Codice

```raku
my ($a, $b) = 10, 20;
($a, $b) = $b, $a;
say "$a, $b";
```

🦋 Puoi trovare il codice sorgente nel file [swap.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/swap.raku).

## Output

Esegui il programma. Controlla che stampi i valori nell'altro ordine.

```console
$ raku exercises/scalar-variables/swap.raku
20, 10
```

## Commenti

Il programma ha tre passi. Per prima cosa, crea le variabili e dà loro dei valori. Poi scambia i valori. Alla fine, li stampa. Ogni passo usa le due variabili in un'istruzione. Guarda la parte più interessante. Qui le variabili si scambiano i valori:

```raku
($a, $b) = $b, $a;
```

Ti servono le parentesi sul lato sinistro. Puoi anche aggiungerle sul lato destro:

```raku
($a, $b) = ($b, $a);
```

Cosa succede senza le parentesi?

```raku
$a, $b = $b, $a;
```

Allora ricevi un avviso. Dice che `$a` sul lato destro non è usato:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of $a in sink context (lines 2, 2)
10, 20
```

In realtà, questa riga è uguale a `$b = $b`. Questa assegnazione non fa niente di utile. Puoi vederlo facilmente. Cambia i valori sul lato destro, per esempio così:

```raku
$a, $b = 2 * $b, 3 * $a;
```

Ora il programma stampa ancora più avvisi. Ma puoi vedere anche un'altra cosa. Solo `$b` riceve un nuovo valore:

```
$ raku exercises/scalar-variables/swap.raku
WARNINGS for /Users/ash/raku-course/exercises/scalar-variables/swap.raku:
Useless use of "*" in expression "3 * $a" in sink context (line 2)
Useless use of $a in sink context (line 2)
10, 40
```

{% include nav.html %}
