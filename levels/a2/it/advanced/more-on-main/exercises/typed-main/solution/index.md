---
title: 'Solution: Un MAIN tipizzato'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Puoi trovare il codice sorgente nel file [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Output

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Commenti

1. Il parametro ha il tipo `Int`. Quindi la parola sulla riga di comando deve sembrare un intero. Il valore `5` va in `$n`. Poi il corpo stampa `10`.

1. Il valore `abc` non può diventare un `Int`. Quindi la firma non corrisponde. Raku non esegue il corpo. Stampa invece il messaggio di utilizzo. Raku crea questo messaggio da solo. Così Raku controlla gli argomenti per te. Tu non scrivi nessun controllo.

{% include nav.html %}
