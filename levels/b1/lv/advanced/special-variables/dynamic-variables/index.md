---
title: Dinamiskie mainīgie
translations_gpt:
---

{% include menu.html %}

_Dinamiskam_ mainīgajam ir tvigils `*`. Leksisks mainīgais ir redzams tikai tajā blokā, kur jūs to deklarējat. Dinamisks mainīgais ir citāds: Raku to atrod, skatoties **uz āru pa izsaukumu steku**. Tas meklē kodā, kas izsauca pašreizējo kodu. Nav svarīgi, kur šis kods ir definēts.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

Apakšprogramma `greet` nedeklarē `$*greeting` un nesaņem to kā argumentu. Bet tā tomēr to redz. Tas ir tāpēc, ka mainīgais ir dinamisks. Turklāt `greet` tika izsaukta no vietas, kur mainīgais ir redzams.

Šis piemērs strādātu arī ar vienkāršu globālu skalāro mainīgo `$greeting`. Bet nākamais piemērs parāda, kas padara dinamiskos mainīgos īpašus.

Meklēšana seko izsaukumu stekam. Tāpēc tuvāka deklarācija **pārmāc** tālāku, kamēr darbojas tās bloks:

```raku
my $*level = 'outer';

sub show {
    say $*level;
}

show(); # outer

{
    my $*level = 'inner';
    show(); # inner
}
```

Tā pati `show` pirmajā reizē izdrukā `outer`. Tā izdrukā `inner`, kad to izsauc no bloka, kas vēlreiz deklarēja `$*level`. Tas ir _dinamiskais redzamības apgabals_. Raku iebūvētie `$*OUT`, `$*IN` un `$*ERR` darbojas tāpat. Jūs varat uz laiku novirzīt izvadi, ja vēlreiz deklarējat `$*OUT` blokā. Tad katra rutīna, ko jūs izsaucat bloka iekšienē, redz jauno vērtību. Dinamiskie mainīgie ir lieliski, lai nodotu kontekstu izsauktajam kodam bez skaidra argumenta.

{% include nav.html %}
