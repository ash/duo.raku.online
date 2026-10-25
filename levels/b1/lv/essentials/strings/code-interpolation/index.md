---
title: Koda interpolācija
---

{% include menu.html %}

Koda interpolācija ir nākamais interpolācijas līmenis. Tā ļauj ielikt kodu tieši dubultpēdiņu virknes iekšpusē. Kods var būt vienkāršs vai pat sarežģīts!

Kodu, kuru vajag interpolēt, raksta starp cirtainajām iekavām:

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

Viens šīs metodes lietojums ir tad, kad aiz mainīgā jābūt kādam tekstam. Šo tekstu varētu kļūdaini nolasīt kā mainīgā nosaukuma turpinājumu. Lai to novērstu, ielieciet mainīgo cirtainajās iekavās:

```raku
my $how-many = 5;
my $what = 'suit';
say "Tur ir $how-many {$what}s."; # Tur ir 5 uzvalki.
```

Bez cirtainajām iekavām Raku mēģinātu interpolēt `$whats`, mainīgo, kas neeksistē.

{% include nav.html %}
