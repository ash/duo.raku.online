---
title: 'Solvo: La domena parto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 Vi povas trovi la fontkodon en la dosiero [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Eligo

```
example.com
```

## Komentoj

1. `index('@')` redonas `4`, kio estas la pozicio de la signo `@`, nombrante de nulo.

1. `substr($at + 1)` komenciĝas unu signon post la `@`. Ĉar neniu longeco estas donita, ĝi iras ĝis la fino de la ĉeno. La rezulto estas `example.com`.

{% include nav.html %}
