---
title: 'Risinājums: Pāra, nepāra vai nulle'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `when 0` atbilst tikai vērtībai nulle. Tas ir pirmais, jo nulle arī ir pāra skaitlis, un mēs gribam par to ziņot atsevišķi.

1. `when $_ %% 2` ir nosacījums, kur `$_` ir tēma, ko nosaka `given`. Operators `%%` pārbauda, vai tēma dalās ar divi bez atlikuma. Vērtība `12` nav nulle, bet tā dalās ar divi, tāpēc programma izdrukā `even`.

1. `default` aptver visu, kas paliek pāri. Tie ir skaitļi, kas nav ne nulle, ne pāra skaitļi, tas ir, nepāra skaitļi.

{% include nav.html %}
