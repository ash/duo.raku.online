---
title: 'Solution: Esaminare il risultato di `prompt` — Stringhe'
---

{% include menu.html %}

## Codice

Ecco il programma completo. Fa il lavoro e stampa sia la stringa inserita che il suo tipo.

```raku
my $name = prompt 'Qual è il tuo nome? ';
say $name;
say $name.WHAT;
```

🦋 Puoi trovare il codice sorgente nel file [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Esecuzioni di test

Esegui il programma un paio di volte con nomi diversi. Il programma ripete l'input. Segnala anche che la variabile contiene una stringa. In altre parole, è un oggetto di tipo `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
Qual è il tuo nome? Andrey
Andrey
(Str)
```

Ora esegui di nuovo il programma. Digita qualche spazio invece di un nome e premi Invio.

```console
$ raku exercises/data-types/prompt-strings.raku
Qual è il tuo nome?    

(Str)
```

Non vediamo l'output. Ma possiamo vedere che la variabile ha ancora il tipo `Str`.

{% include nav.html %}
