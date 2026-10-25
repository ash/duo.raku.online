---
title: Operazioni con i numeri
---

{% include menu.html %}

Di sicuro conosci già alcune delle operazioni con i numeri in Raku. Diciamo solo che il simbolo di un'_operazione_ si chiama _operatore_. Gli oggetti su cui lavora un'operazione si chiamano _operandi_.

## Aritmetica

**Operatore** | **Operazione**
`+` | Addizione
`-` | Sottrazione
`*` | Moltiplicazione
`/` | Divisione

Poiché Raku [supporta Unicode](/it/essentials/on-unicode) molto bene, alcuni di questi operatori hanno anche versioni non ASCII:

`×` | Moltiplicazione
`÷` | Divisione

Per cambiare l'ordine in cui si fanno le operazioni, usa le parentesi:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

Come in molti altri linguaggi, l'operatore modulo è `%`.

`%` | Modulo

Restituisce il resto della divisione intera di due numeri, quindi `10 % 3` è `1`. Nota che `-10 % 3` è `2` per il modo in cui l'operazione è definita. Il risultato della divisione viene arrotondato verso il basso e moltiplicato per il secondo numero. Poi questo valore viene sottratto dal primo numero. Quindi `$a % $b` significa la stessa cosa di `$a - $b * floor($a / $b)`.

## Divisibilità

Raku aggiunge un altro operatore utile. Verifica se un numero è divisibile per un altro.

`%%` | Divisibilità

Questo è un operatore infisso: va tra i suoi due operandi, come in `10 %% 3`. Se il primo operando è divisibile per il secondo, ottieni un `True` booleano. Altrimenti, ottieni `False`.

## Operazioni intere

Alcune operazioni speciali restituiscono interi come risultato. I loro operatori sono parole invece di simboli.

`div` | Divisione intera
`mod` | Modulo intero

L'operatore `div` arrotonda il risultato verso il basso. Quindi `10 div 3` è `3`, e `-10 div 3` è `-4`.

Sia `div` che `mod` si aspettano operandi interi. Quindi il programma qui sotto non funzionerà se decommenti le righe segnate con `Error`:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Potenza

Puoi ottenere _x_ alla potenza di _y_ in due modi. Primo, puoi usare l'operatore `**`:

```raku
say 3 ** 4; # 81
```

Secondo, puoi usare le cifre in apice, cioè piccole cifre scritte più in alto. Per esempio:

```raku
say 3⁴; # 81
```

Puoi usare più di una cifra in apice per avere una potenza maggiore di 9. Per esempio:

```raku
say 2¹⁵; # 32768
```

Anche le potenze negative non sono un problema:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Nota che nelle ultime due espressioni il risultato è un numero `Rat`.

## Operazioni con assegnazione

Quando devi aggiornare una variabile, tutte le operazioni hanno una forma breve. Mostriamola con l'esempio di `+`.

La forma completa

```raku
$a = $a + $b;
```

significa la stessa cosa di:

```raku
$a += $b;
```

{% include nav.html %}
