---
title: Dinamiskie mainīgie
translations_gpt:
---

{% include menu.html %}

_Dinamiskam_ mainīgajam ir tvigils `*`. Parasts, leksisks mainīgais ir redzams tikai savā blokā. Jūs to deklarējat šajā blokā. Dinamisks mainīgais ir citāds. Raku to meklē **caur izsaukumu steku**. Tas skatās kodu, kas izsauca pašreizējo kodu. Tad tas iet vēl vienu soli atpakaļ, un tā tālāk. Nav svarīgi, kur pašreizējais kods ir uzrakstīts.

```raku
my $*greeting = 'Hello';

sub greet {
    say $*greeting;
}

greet(); # Hello
```

Apakšprogramma `greet` nedeklarē `$*greeting`. Tā nesaņem to kā argumentu. Bet tā tomēr to redz. Mainīgais ir dinamisks. Un mainīgais ir redzams tur, kur programma izsauc `greet`.

Šis piemērs strādā arī ar vienkāršu globālu skalāro mainīgo `$greeting`. Nākamais piemērs parāda, kas ir īpašs dinamiskajos mainīgajos.

Raku meklē mainīgo caur izsaukumu steku. Tāpēc tuvāka deklarācija **pārmāc** tālāku. Tas nozīmē, ka Raku izmanto tuvāko. Tā ir, kamēr darbojas tās bloks:

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

Tā pati `show` pirmajā reizē izdrukā `outer`. Otrajā reizē tā izdrukā `inner`. Šoreiz programma izsauc `show` no bloka iekšienes. Šis bloks vēlreiz deklarē `$*level`. Tas ir _dinamiskais redzamības apgabals_. Raku iebūvētie `$*OUT`, `$*IN` un `$*ERR` darbojas tieši tā. Piemēram, jūs varat vēlreiz deklarēt `$*OUT` blokā. Tad izvade uz laiku iet uz jaunu vietu. Katra rutīna, ko jūs izsaucat blokā, redz jauno vērtību. Dinamiskie mainīgie ir lieliski informācijai, kas vajadzīga izsauktajam kodam. Jums šī informācija nav jāpadod kā arguments.

{% include nav.html %}
