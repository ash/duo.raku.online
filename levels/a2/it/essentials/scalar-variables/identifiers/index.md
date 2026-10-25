---
title: Nomi delle variabili
---

{% include menu.html %}

Prima di andare avanti, vediamo un argomento interessante. Che nomi possono avere le variabili? Finora, abbiamo usato nomi semplici, come `$name` o `$age`. Hanno solo lettere minuscole dell'alfabeto inglese. Ma ci sono più possibilità.

## Lettere maiuscole e minuscole

I nomi delle variabili si chiamano anche _identificatori_. Negli identificatori, le lettere maiuscole e minuscole sono diverse. Quindi ogni nome qui sotto indica un contenitore scalare diverso:

```raku
$myname

$MyName

$myName

$MYNAME
```

Decidi tu come chiamare le tue variabili. Ma ecco un'idea. Usa i nomi tutti in maiuscolo per le costanti. Le costanti sono valori che non cambiano.

## Altri caratteri

Sono possibili anche altri caratteri ASCII. Puoi usare le cifre e il trattino basso `_`. Puoi usare anche il trattino `-` e l'apice singolo `'`. Qui l'apice singolo indica un apostrofo. Un identificatore deve iniziare con una lettera o con un trattino basso. Dopo un `-` o un `'`, ci deve essere una lettera. Ecco altri identificatori corretti:

```raku
$___

$a'b'c

$my-name

$address2
```

Ancora una volta, scegli tu i nomi. Ma alcuni nomi sembrano un codice segreto. Probabilmente non è una buona idea scegliere apposta nomi così.

## Caratteri Unicode

In realtà, ci sono molte più lettere e cifre. Unicode ha delle proprietà per ogni carattere. Dicono se il carattere è una lettera o una cifra decimale. Raku usa queste proprietà. Per esempio, queste variabili sono corrette in Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # dove ۲ è una cifra
```

{% include nav.html %}
