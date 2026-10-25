---
title: Input con `prompt`
---

{% include menu.html %}

L'opposto di `say` è `prompt`. Aspetta finché l'utente scrive qualcosa e preme Invio. Poi manda l'input al programma come una stringa. Puoi prendere il risultato di `prompt` e passarlo a `say`. Allora il programma ristampa quello che l'utente scrive. Scriviamo un programma del genere:

```raku
say prompt;
```

Se esegui questo programma, potresti restare confuso. Il programma aspetta solo un input. Quindi è bene stampare un messaggio di prompt per l'utente. Questo rende il programma più comodo per l'utente. Per questo non serve un `say` separato. Basta passare il messaggio a `prompt`:

```raku
prompt 'Quale lingua hai intenzione di imparare? '
```

Prima di finire questa sezione, mettiamo insieme tutti i pezzi. Creeremo un programma che chiede che cosa vuole l'utente. Poi stampa una frase con il testo che l'utente ha inserito.

```raku
say 'Hai intenzione di imparare ', prompt 'Quale lingua hai intenzione di imparare? ';
```

Se hai inserito `Raku`, il programma stampa la frase seguente:

    Hai intenzione di imparare Raku

OK, ora possiamo parlare con il programma. E possiamo farlo parlare con noi!

Nota che `say` ha bisogno di conoscere le stringhe prima di stamparle. Quindi Raku esegue prima `prompt`. Così il dialogo resta nell'ordine corretto:

```console
$ raku t.raku 
Quale lingua hai intenzione di imparare? Raku
Hai intenzione di imparare Raku
```

{% include nav.html %}
