---
title: Koda interpolācija
---

{% include menu.html %}

Koda interpolācija ir nākamais interpolācijas līmenis. Jūs varat ielikt kodu tieši virknē dubultajās pēdiņās. Kods var būt vienkāršs. Tas var būt arī sarežģīts!

Rakstiet kodu starp cirtainajām iekavām, `{` un `}`:

```raku
my $a = 10;
my $b = 20;
say "Summa no $a un $b ir {$a + $b}.";
```

Programma izdrukā:

```console
$ raku t.raku 
Summa no 10 un 20 ir 30.
```

## Vēlreiz par mainīgajiem

Lūk, viens šīs metodes lietojums. Dažreiz tieši aiz mainīgā ir kāds teksts. Raku var kļūdas pēc nolasīt šo tekstu kā nosaukuma daļu. Lai tā nenotiktu, ielieciet mainīgo cirtainajās iekavās:

```raku
my $how-many = 5;
my $what = 'suit';
say "Tur ir $how-many {$what}s."; # Tur ir 5 uzvalki.
```

Bez cirtainajām iekavām Raku mēģina interpolēt mainīgo `$whats`. Bet tāda mainīgā nav.

{% include nav.html %}
