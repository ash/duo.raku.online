---
title: Approfondimento sulle subroutine MAIN
translations_gpt:
---

{% include menu.html %}

Nella parte Essenziali hai usato `MAIN` [per ricevere gli argomenti da riga di comando](/it/essentials/the-main-function/reading-command-line-arguments). Raku fa di più per te con `MAIN`. Non passa solo i valori.

## Il messaggio di utilizzo

A volte gli argomenti da riga di comando non corrispondono alla firma di `MAIN`. La firma è la sua lista di parametri. Allora Raku non esegue il corpo. Stampa invece un _messaggio di utilizzo_. Raku crea questo messaggio da solo. Il messaggio mostra come eseguire il programma.

Guarda questo programma:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Eseguilo nel modo giusto. Allora saluta la persona:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Ora eseguilo senza argomenti. La firma non corrisponde. Quindi Raku stampa il messaggio di utilizzo. Non saluta:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku crea il messaggio dai nomi dei parametri. Quindi dai ai parametri dei buoni nomi. Allora il testo di aiuto è utile, e non fai nessun lavoro in più.

## Argomenti con nome

`MAIN` può avere parametri posizionali. Può avere anche parametri con nome. Sulla riga di comando, un parametro con nome diventa un'opzione come `--opzione=valore`. Puoi dargli un valore predefinito. Allora l'opzione non è obbligatoria:

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
