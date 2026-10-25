---
title: Nomi delle variabili
---

{% include menu.html %}

Prima di andare avanti, ecco un argomento interessante: quali nomi possono avere le variabili? Finora abbiamo visto nomi semplici come `$name` o `$age`. Avevano solo lettere minuscole dell'alfabeto inglese. Ma ci sono più possibilità.

## Maiuscole e minuscole

I nomi delle variabili, o _identificatori_, sono sensibili alle maiuscole. Questo vuol dire che le lettere maiuscole e minuscole sono diverse. Quindi tutti i nomi qui sotto si riferiscono a contenitori scalari diversi:

```raku
$myname

$MyName

$myName

$MYNAME
```

Sta a te scegliere uno stile per i nomi. Ma potresti tenere i nomi tutti in maiuscolo per le costanti.

## Altri caratteri

Sono ammessi anche alcuni altri caratteri ASCII. Sono le cifre, il trattino basso `_`, il trattino `-` e l'apice singolo `'`. L'apice singolo sta per un apostrofo. Nota che un identificatore deve iniziare con una lettera o con un trattino basso. Sia `-` che `'` devono avere una lettera subito dopo. Ecco alcuni altri identificatori validi:

```raku
$___

$a'b'c

$my-name

$address2
```

Ancora una volta, la scelta dei nomi è tua. Ma probabilmente non è una buona abitudine rendere apposta i nomi difficili da capire.

## Caratteri Unicode

In realtà, l'idea di lettere e cifre è più ampia. Comprende tutti i caratteri che sono lettere o cifre decimali secondo le loro proprietà Unicode. Per esempio, le variabili seguenti sono valide in Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # dove ۲ è una cifra
```

{% include nav.html %}
