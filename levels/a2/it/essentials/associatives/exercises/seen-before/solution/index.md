---
title: 'Solution: Già visto?'
---

{% include menu.html %}

Questo è un compito classico per un hash. L'hash ricorda gli elementi già visti. Prima del ciclo, il programma crea l'hash `%seen`. Nel ciclo, l'utente inserisce una parola, `$word`. Il programma usa questa parola come chiave dell'hash.

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

Il codice `%seen{$word}++` aggiunge 1 al valore. Se il valore non c'è ancora, il codice lo crea anche. Creare un valore in questo modo si chiama _autovivificazione_. Nota che questo non succede quando _leggi_ solo il valore. Per esempio, non succede nella condizione `if %seen{$word}`.

{% include nav.html %}
