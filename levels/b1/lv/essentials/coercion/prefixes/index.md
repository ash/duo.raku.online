---
title: Tipu konvertēšana ar prefiksu operatoriem
---

{% include menu.html %}

Vēl viens veids, kā mainīt objekta tipu, ir izmantot prefiksa operatorus. Tie ir operatori, kas sastāv tikai no vienas rakstzīmes. Jūs tos liekat tieši pirms vērtības (vai mainīgā).

`~` | Virknes piespiedu konvertēšana
`+` | Skaitliskā piespiedu konvertēšana
`?` | Loģiskā piespiedu konvertēšana

Šeit ir piemērs, kas no vesela skaitļa izveido loģisko vērtību:

```raku
say ?42; # True
```

Konvertēšana uz virkni ir līdzīga:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, jo "-30" ir 3 rakstzīmes
```

Ievērojiet, ka skaitliskajā konvertēšanā rezultāta tips ir atkarīgs no skaitļa. Salīdziniet šīs konvertēšanas no virknēm:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Lai konvertētu uz loģisko vērtību, jūs varat izmantot arī funkciju, ko sauc par `so`. Tā darbojas kā prefiksa operators vai kā metode:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
