---
title: 'Risinājums: Sasveicināties ar personu'
---

{% include menu.html %}

Lūk, viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 Avota kodu var atrast failā [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Izvade

Palaidiet programmu. Tā jautā jūsu vārdu. Ievadiet vārdu:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Komentāri

1. Programma jautā vārdu. Lietotājs ievada virkni. Skalārais mainīgais `$name` glabā šo virkni. Tad programma nodod `say` vērtību sarakstu. Mainīgais ir daļa no šī saraksta. Tāpēc vārds parādās ziņojumā.

1. Ir labāks veids, kā atrisināt šo problēmu. Tas izmanto virknes interpolāciju. Mēs drīz atgriezīsimies pie šīs problēmas.

{% include nav.html %}
