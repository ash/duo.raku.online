---
title: 'Solution: Pari, dispari o zero'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Puoi trovare il codice sorgente nel file [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Output

```
even
```

## Commenti

1. `when 0` corrisponde a un solo valore, lo zero. Viene per primo. Anche lo zero è pari, ma vogliamo mostrarlo a parte.

1. `when $_ %% 2` è una condizione. Qui `$_` è il topic di `given`. L'operatore `%%` controlla se si divide per due senza resto. Il valore `12` non è zero. Ma si divide per due. Così il programma stampa `even`.

1. `default` è per tutti gli altri numeri. Non sono zero e non sono pari. Quindi sono i numeri dispari.

{% include nav.html %}
