---
title: 'Solution: Un MAIN tipizzato'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il tipo `Int` significa che la parola sulla riga di comando deve sembrare un intero. Con `5`, il valore va in `$n`, e il corpo stampa `10`.

1. Con `abc`, il valore non può diventare un `Int`, quindi la firma non corrisponde. Raku non esegue il corpo. Invece stampa il messaggio di utilizzo che ha generato. Così Raku controlla gli argomenti per te. Non devi scrivere nessun controllo da solo.

{% include nav.html %}
