---
title: Introspezione dei contenitori
---

{% include menu.html %}

Con l'_introspezione_ chiedi a un valore o a un contenitore qualcosa su se stesso. Puoi chiedere il suo tipo. Puoi chiedere quale contenitore c'è dietro. Puoi anche chiedere come Raku lo fa funzionare dentro. Conosci già uno strumento per l'introspezione, `.^name`. Stampa il tipo di un valore.

Raku ha un piccolo gruppo di strumenti così. I loro nomi sono in lettere maiuscole: `WHAT`, `VAR`, `WHO` e `HOW`. A volte la gente li chiama _pseudo-metodi_. Sembrano metodi. Ma non sono metodi normali. Il compilatore dà loro un significato speciale. Questa sezione parla di ognuno di loro.

Ecco un promemoria su `.^name`. Il contenitore in questo codice non ha un tipo fisso. Mettiamo dentro valori diversi. `.^name` mostra come cambia il tipo:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

All'inizio, il contenitore è `Any`. Dopo, mostra il tipo del suo valore attuale.

{% include nav.html %}
