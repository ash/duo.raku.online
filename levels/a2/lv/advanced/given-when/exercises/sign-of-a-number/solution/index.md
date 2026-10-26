---
title: 'Risinājums: Pāra, nepāra vai nulle'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Jūs varat atrast pirmkodu failā [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Izvade

```
even
```

## Komentāri

1. `when 0` atbilst tikai vienai vērtībai — nullei. Tas ir pirmais. Arī nulle ir pāra skaitlis, bet mēs gribam to parādīt atsevišķi.

1. `when $_ %% 2` ir nosacījums. Šeit `$_` ir tēma no `given`. Operators `%%` pārbauda, vai tā dalās ar divi bez atlikuma. Vērtība `12` nav nulle. Bet tā dalās ar divi. Tāpēc programma izdrukā `even`.

1. `default` ir visiem pārējiem skaitļiem. Tie nav nulle un nav pāra skaitļi. Tātad tie ir nepāra skaitļi.

{% include nav.html %}
