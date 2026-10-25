---
title: Operazioni con i numeri
---

{% include menu.html %}

Sicuramente conosci già alcune operazioni con i numeri in Raku. Ecco due parole da ricordare. Il simbolo di un'_operazione_ si chiama _operatore_. Un'operazione lavora su alcuni oggetti. Questi oggetti si chiamano _operandi_.

## Aritmetica

**Operatore** | **Operazione**
`+` | Addizione
`-` | Sottrazione
`*` | Moltiplicazione
`/` | Divisione

Raku [supporta Unicode](/it/essentials/on-unicode) molto bene. Quindi alcuni di questi operatori hanno una seconda forma con simboli non ASCII:

`×` | Moltiplicazione
`÷` | Divisione

Usa le parentesi per cambiare l'ordine delle operazioni:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

L'operatore modulo è `%`. È lo stesso in molti altri linguaggi.

`%` | Modulo

Dà il resto della divisione intera di due numeri. Il resto è quello che rimane dopo la divisione. Quindi `10 % 3` è `1`. Ma nota che `-10 % 3` è `2`. Ecco perché. Dividi il primo numero per il secondo numero. Arrotonda il risultato verso il basso. Moltiplicalo per il secondo numero. Poi togli questo valore dal primo numero. Questo è il risultato di `%`. Quindi `$a % $b` è lo stesso di `$a - $b * floor($a / $b)`.

## Divisibilità

Raku ha anche un operatore utile per la divisibilità. Controlla se un numero è divisibile per un altro. Questo vuol dire che non c'è resto.

`%%` | Divisibilità

Questo è un operatore infisso. Va tra i suoi due operandi: `10 %% 3`. Il primo operando è divisibile per il secondo? Allora il risultato è il valore booleano `True`. Se non lo è, il risultato è `False`.

## Operazioni intere

Alcune operazioni speciali danno risultati interi. I loro operatori sono parole, non simboli.

`div` | Divisione intera
`mod` | Modulo intero

L'operatore `div` arrotonda il risultato verso il basso. Quindi `10 div 3` è `3`. E `-10 div 3` è `-4`.

Sia `div` che `mod` hanno bisogno di operandi interi. Guarda le righe con `Error` nel programma qui sotto. Se togli il `#` da queste righe, il programma non funziona:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Potenza

Ci sono due modi per avere _x_ alla potenza di _y_. Il primo modo è l'operatore `**`:

```raku
say 3 ** 4; # 81
```

Il secondo modo è usare le cifre in apice. Sono piccole cifre in alto sulla riga. Per esempio:

```raku
say 3⁴; # 81
```

Puoi anche usare due o più cifre in apice. Così la potenza può essere più grande di 9. Per esempio:

```raku
say 2¹⁵; # 32768
```

Anche una potenza negativa funziona:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Nota che le ultime due espressioni danno un numero `Rat`.

## Operazioni con assegnazione

A volte devi aggiornare una variabile con un'operazione. Tutte le operazioni hanno una forma breve per questo. Ecco un esempio con `+`.

La forma completa

```raku
$a = $a + $b;
```

è uguale a:

```raku
$a += $b;
```

{% include nav.html %}
