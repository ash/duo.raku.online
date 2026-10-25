---
title: 'Solution: Esaminare il risultato di `prompt` — Stringhe'
---

{% include menu.html %}

## Codice

Ecco il programma completo. Fa il lavoro. Stampa la stringa che inserisci e il suo tipo.

```raku
my $name = prompt 'Qual è il tuo nome? ';
say $name;
say $name.WHAT;
```

🦋 Puoi trovare il codice sorgente nel file [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Esecuzioni di test

Esegui il programma due o tre volte. Inserisci nomi diversi. Il programma stampa di nuovo il tuo input. Ti dice anche che la variabile contiene una stringa. In altre parole, è un oggetto di tipo `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
Qual è il tuo nome? Andrey
Andrey
(Str)
```

Ora esegui di nuovo il programma. Scrivi qualche spazio invece di un nome. Poi premi Invio.

```console
$ raku exercises/data-types/prompt-strings.raku
Qual è il tuo nome?    

(Str)
```

Non vediamo l'output. Ma vediamo il tipo della variabile. È ancora `Str`.

{% include nav.html %}
