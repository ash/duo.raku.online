---
title: 'Solution: La parte del dominio'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `index('@')` restituisce `4`, cioè la posizione del segno `@`, contando da zero.

1. `substr($at + 1)` inizia un carattere dopo il `@`. Poiché non c'è una lunghezza, va fino alla fine della stringa. Il risultato è `example.com`.

{% include nav.html %}
