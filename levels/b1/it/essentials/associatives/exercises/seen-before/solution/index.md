---
title: 'Solution: Già visto?'
---

{% include menu.html %}

Questo compito è un classico esempio di uso di un hash per tenere traccia degli elementi. Prima del ciclo, il programma crea l'hash `%seen`. Dentro il ciclo, la parola inserita `$word` viene usata come chiave dell'hash.

## Codice

Ecco la soluzione:

```raku
my %seen;
loop {
    my $word = prompt 'Parola: ';
    if %seen{$word} {
        say %seen{$word} == 1 ?? 'Visto!' !! say "Visto %seen{$word} volte!";
    }
    %seen{$word}++;
}
```

🦋 Trova il programma nel file [seen-before.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/seen-before.raku).

## Output

```console
$ raku exercises/associatives/seen-before.raku
Parola: Io
Parola: mai
Parola: visto
Parola: un
Parola: visto
Visto!
Parola: che
Parola: visto
Visto 2 volte!
Vero
Parola: come
Parola: che
Visto!
Parola: visto
Visto 3 volte!
Vero
Parola: segato
Parola: ^C
```

## Commento

La costruzione `%seen{$word}++` non aggiunge solo 1 al valore. Crea anche il valore se prima non esisteva. Creare un valore in questo modo si chiama _autovivificazione_. Nota che se solo _leggi_ il valore, come nella condizione `if %seen{$word}`, il valore non viene creato.

{% include nav.html %}
