---
title: Tipu konvertēšana ar prefiksu operatoriem
---

{% include menu.html %}

Jūs varat mainīt objekta tipu arī ar prefiksa operatoriem. Katrs no šiem operatoriem ir tikai viena rakstzīme. Jūs to liekat tieši pirms vērtības vai mainīgā.

`~` | Konvertē uz virkni
`+` | Konvertē uz skaitli
`?` | Konvertē uz loģisko vērtību

Šeit ir piemērs. Tas izveido loģisko vērtību no vesela skaitļa:

```raku
say ?42; # True
```

Konvertēšana uz virkni darbojas tāpat:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, jo "-30" ir 3 rakstzīmes
```

Ievērojiet vienu lietu par konvertēšanu uz skaitli. Rezultāta tips var būt dažāds. Tas ir atkarīgs no skaitļa. Salīdziniet šīs konvertēšanas no virknēm:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Lai konvertētu uz loģisko vērtību, jūs varat izmantot arī `so`. Jūs to varat izmantot kā prefiksa operatoru. Vai arī jūs to varat izmantot kā metodi:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
