---
title: 'Risinājums: Sasveicināties ar personu'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 Avota kodu var atrast failā [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Izvade

Palaidiet programmu un ievadiet vārdu, kad redzat uzvedni:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Komentāri

1. Pēc uzvednes lietotājs ievada virkni. Programma glabā šo virkni skalārajā mainīgajā `$name`. Jūs izmantojat mainīgo sarakstā, ko nododat funkcijai `say`. Tāpēc vārds parādās ziņojumā.

1. Labāks veids, kā atrisināt šo problēmu, ir izmantot virknes interpolāciju. Mēs pie tās drīz atgriezīsimies.

{% include nav.html %}
