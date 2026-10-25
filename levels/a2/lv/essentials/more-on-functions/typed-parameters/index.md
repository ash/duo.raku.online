---
title: Tipizētie parametri
---

{% include menu.html %}

Raku valodā funkcijas parametram var būt tips. Tad tas pieņem tikai šī tipa vērtības. Tas ir ļoti līdzīgi [tipizētajiem mainīgajiem](/lv/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Tagad funkcijas argumentiem jābūt veseliem skaitļiem.

```raku
say add(10, 20);
# say add(pi, e); # Kļūda
```

Jūs varat nodot tikai `Int` vērtības. Jebkurš cits tips dod kļūdu kompilācijas laikā. Šāda kļūda rodas pirms programmas palaišanas.

```
$ raku t.raku
===SORRY!=== Kļūda kompilējot t.raku
Izsaukums add(Num, Num) nekad nedarbosies ar deklarēto parakstu (Int $x, Int $y)
t.raku:5
------> say ⏏add(pi, e);
```

Ievērojiet, ka šeit Raku jūsu vietā nepārvērš tipus. Citos gadījumos šāda pārvēršana ir iespējama.

```raku
# say add('3', '4'); # Kļūda
say '3' + '4'; # OK un ir 7
```

%%tipblock
## Vai tā ir kļūda kompilācijas laikā?
Apskatiet kļūdas ziņojuma sākumu. Vai tas ir `===SORRY!=== Kļūda kompilējot`? Tad kļūda notika kompilācijas laikā.
%%/tipblock

{% include nav.html %}
