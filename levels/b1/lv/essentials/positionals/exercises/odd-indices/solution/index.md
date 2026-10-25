---
title: 'Risinājums: Nepāra indeksi'
---

{% include menu.html %}

Jūs varat atrisināt šo uzdevumu ar `loop` konstrukciju. Tad katrā iterācijā jūs pieskaitāt cilpas mainīgajam 2. Bet jūs varat izmantot arī `for` cilpu. Tā iet pa skaitļiem no 1 līdz pusei no masīva garuma. Tad jūs reizināt katru skaitli ar divi.

## Kods

Šeit ir risinājums:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21;

say @data[2 * $_ - 1] for 1 .. @data/2;
```

🦋 Atrodiet programmu failā [odd-indices.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/odd-indices.raku).

## Izvade

Vispirms palaidiet programmu ar sākotnējiem datu elementiem.

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
```

Pēc tam pievienojiet vēl vienu vienumu datiem:

```raku
my @data = 10, 12, 1, 5, -9, 8, 36, 18, 21, 22;
```

Pārbaudiet, ka jaunais elements ar nepāra indeksu parādās izvadē:

```console
$ raku exercises/positionals/odd-indices.raku
12
5
8
18
22
```

## Komentāri

Nākamajā kursa daļā mēs atgriezīsimies pie šī uzdevuma. Tad mēs to atrisināsim pilnīgi citā veidā.

{% include nav.html %}
