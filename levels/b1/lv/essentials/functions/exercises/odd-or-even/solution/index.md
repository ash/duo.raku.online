---
title: 'Risinājums: Nepāra vai pāra'
---

{% include menu.html %}

Šīs funkcijas ķermenis ir diezgan mazs. Tas ir labs iemesls izlaist `return` rutīnu. Jūs varat izlaist arī semikolu rindas beigās.

## Kods

Šeit ir risinājums:

```raku
sub f($n) {
    $n %% 2 ?? 'Even' !! 'Odd'
}

say f(10);
say f(5);
say f(0);
say f(3);
```

🦋 Atrodi programmu failā [odd-or-even.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/odd-or-even.raku).

## Izvade

```console
$ raku exercises/functions/odd-or-even.raku
Even
Odd
Even
Odd
```

{% include nav.html %}
