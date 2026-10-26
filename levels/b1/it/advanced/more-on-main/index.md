---
title: Approfondimento sulle subroutine MAIN
translations_gpt:
---

{% include menu.html %}

Nella parte Essenziali hai usato `MAIN` [per ricevere gli argomenti da riga di comando](/it/essentials/the-main-function/reading-command-line-arguments). Ma con `MAIN` Raku fa per te di più che passare semplicemente i valori.

## Il messaggio di utilizzo

A volte gli argomenti da riga di comando non corrispondono alla firma di `MAIN`. In quel caso, Raku non esegue il corpo. Invece stampa un _messaggio di utilizzo_, che Raku crea automaticamente. Il messaggio spiega come chiamare il programma.

Dai un'occhiata a questo programma:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Se lo chiami nel modo corretto, saluta la persona:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Se lo chiami senza argomenti, la firma non corrisponde. Quindi Raku stampa il messaggio di utilizzo al posto del saluto:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku costruisce il messaggio a partire dai nomi dei parametri. Quindi dai loro nomi chiari, e avrai gratis un testo di aiuto utile.

## Argomenti con nome

I parametri di `MAIN` possono essere sia con nome sia posizionali. Un parametro con nome diventa un'opzione della riga di comando come `--opzione=valore`. Se ha un valore predefinito, l'opzione non è obbligatoria:

```raku
sub MAIN(:$name = 'World') {
    say "Hello, $name!";
}
```

```console
$ raku hello.raku
Hello, World!

$ raku hello.raku --name=Raku
Hello, Raku!
```

{% include nav.html %}
