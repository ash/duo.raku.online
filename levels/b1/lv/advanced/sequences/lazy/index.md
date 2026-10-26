---
title: Slinkas un bezgalīgas secības
translations_gpt:
---

{% include menu.html %}

Virknei nav jāaprēķina visas savas vērtības uzreiz. Raku virknes ir _slinkas_: katra vērtība tiek radīta tikai tad, kad tā tiešām vajadzīga. Tāpēc jūs varat aprakstīt virkni, kurai vispār nav beigu.

Lai uzrakstītu bezgalīgu virkni, izmantojiet `Inf` kā beigu punktu. Operators `...` saistās vaļīgāk nekā `=`, tāpēc Raku vispirms izpildītu `=`. Tieši tāpēc jūs ieliekat virkni iekavās:

```raku
my $naturals = (1 ... Inf);
```

Bez iekavām `my $naturals = 1 ... Inf` mainīgajam piešķirtu tikai `1`. Pēc tam tas būvētu virkni atsevišķi. Ja Raku aprēķinātu bezgalīgu virkni, kuru neviens neizmanto, programma uzkārtos.

Šajā brīdī nekas vēl nav aprēķināts. Virkne izdod vērtības tikai tad, kad jūs tās prasāt. Metode `head` paņem pirmās dažas no tām:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

Virkne ir bezgalīga, bet tiek ģenerēti tikai pirmie pieci skaitļi. Bez slinkuma programma mēģinātu uzbūvēt visu bezgalīgo virkni. Šāda programma nekad nebeigtu darbu.

Ja virkne ir galīga, metode `tail` var tā vietā paņemt vērtības no tās beigām:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Slinkums ļauj nošķirt divas lietas. Pirmā ir virknes _apraksts_. Otrā ir lēmums par to, cik daudz no tās izmantot.

{% include nav.html %}
