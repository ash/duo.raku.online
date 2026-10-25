---
title: 'Risinājums: Kvadrāts un kubs'
---

{% include menu.html %}

## Kods 1

Vienkāršs risinājums izmanto `**` operatoru.

```raku
my $n = @*ARGS[0];
say $n ** 2;
say $n ** 3;
```

🦋 Atrodi programmu failā [square-and-cube.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube.raku).

## Kods 2

Cits risinājums izskatās mazliet skaistāk. Tas izmanto Unicode augšrakstus. Tie ir mazi cipari rindas augšā.

```raku
my $n = @*ARGS[0];
say $n²;
say $n³;
```

🦋 Atrodi programmu failā [square-and-cube-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube-2.raku).

## Izvade

Palaid programmu dažas reizes. Pārbaudi to ar dažādiem skaitļiem.

```console
$ raku exercises/positionals/square-and-cube.raku 5
25
125
```

{% include nav.html %}
