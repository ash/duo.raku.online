---
title: 'Solution: Una closure in una stringa q'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $x = 10;
say q:c/$x squared is {$x ** 2}/;
```

🦋 Puoi trovare il codice sorgente nel file [closure-quote.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/closure-quote.raku).

## Output

```
$x squared is 100
```

## Commenti

1. Di solito la forma `q` lascia il testo così com'è. L'avverbio `:c` (closure) cambia questo. Attiva l'interpolazione del codice `{ … }` nel testo. Dentro le parentesi graffe, `$x` è vero codice. Così `{$x ** 2}` dà `100`.

1. Il `$x` fuori dalle parentesi graffe resta esattamente com'è. Questo succede perché l'avverbio scalare `:s` *non* è attivo. È proprio questa l'idea di un avverbio per ogni funzionalità. Hai il codice nel testo. Ma non attivi anche l'interpolazione delle variabili `$`.

1. Puoi usare insieme più avverbi. Aggiungi anche `:s`. Allora Raku interpola anche il primo `$x`. Ora tutte e due le funzionalità sono attive:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
