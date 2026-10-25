---
title: Input con `prompt`
---

{% include menu.html %}

`prompt` è l'opposto di `say`. Aspetta l'utente. L'utente scrive qualcosa e preme Invio. Poi `prompt` manda l'input al programma come una stringa. Puoi prendere il risultato di `prompt` e darlo a `say`. Allora il programma ripete quello che scrive l'utente. Scriviamo un programma così:

```raku
say prompt;
```

Esegui questo programma. Forse non capisci che cosa succede. Il programma aspetta solo un input. Quindi è bene stampare prima un messaggio. Così il programma è più facile da usare. Per questo non ti serve un `say` separato. Puoi dare il messaggio a `prompt`:

```raku
prompt 'Quale lingua hai intenzione di imparare? '
```

Questa sezione finisce presto. Ma prima, mettiamo insieme tutti i pezzi. Il nuovo programma chiede che cosa vuole l'utente. Poi stampa una frase con il testo dell'utente.

```raku
say 'Hai intenzione di imparare ', prompt 'Quale lingua hai intenzione di imparare? ';
```

Se inserisci `Raku`, il programma stampa questa frase:

    Hai intenzione di imparare Raku

OK, ora possiamo parlare con il programma. E possiamo far parlare il programma con noi!

Nota che `say` deve conoscere le stringhe prima di stamparle. Quindi Raku esegue prima `prompt`. Così il dialogo va nell'ordine giusto:

```console
$ raku t.raku 
Quale lingua hai intenzione di imparare? Raku
Hai intenzione di imparare Raku
```

{% include nav.html %}
