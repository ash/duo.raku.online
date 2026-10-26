---
title: 'Solution: La parte del dominio'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Puoi trovare il codice sorgente nel file [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Output

```
example.com
```

## Commenti

1. `index('@')` restituisce `4`. È la posizione del segno `@`. Il conto parte da zero.

1. `substr($at + 1)` inizia un carattere dopo il `@`. Non c'è una lunghezza. Così va fino alla fine della stringa. Il risultato è `example.com`.

{% include nav.html %}
