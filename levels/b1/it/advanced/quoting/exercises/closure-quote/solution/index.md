---
title: 'Solution: Una closure in una stringa q'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Di solito la forma `q` lascia tutto il testo così com'è. L'avverbio `:c` (closure) attiva al suo interno l'interpolazione del codice `{ … }`. Dentro le parentesi graffe, `$x` è vero codice, quindi `{$x ** 2}` dà `100`.

1. Il `$x` fuori dalle parentesi graffe resta esattamente come è scritto. Questo succede perché l'avverbio scalare `:s` *non* è attivato. È proprio questo il senso di avere un avverbio per ogni funzionalità. Hai il codice nella stringa senza attivare anche l'interpolazione di `$`.

1. Puoi combinare gli avverbi. Se aggiungi anche `:s`, viene interpolato anche il primo `$x`. Ora entrambe le funzionalità sono attive nello stesso momento:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
