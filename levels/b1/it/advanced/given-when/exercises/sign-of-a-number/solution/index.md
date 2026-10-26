---
title: 'Solution: Pari, dispari o zero'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `when 0` corrisponde solo al valore zero. Viene per primo perché anche lo zero è pari, e vogliamo mostrarlo a parte.

1. `when $_ %% 2` è una condizione, dove `$_` è il topic impostato da `given`. L'operatore `%%` controlla se il topic è divisibile per due. Il valore `12` non è zero, ma è divisibile per due, quindi il programma stampa `even`.

1. `default` copre tutto quello che resta. Sono i numeri che non sono né zero né pari, cioè quelli dispari.

{% include nav.html %}
