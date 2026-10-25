---
title: Tipizētie parametri
---

{% include menu.html %}

Raku valodā jūs varat ierobežot funkcijas parametrus ar tipu. Tas ir ļoti līdzīgi [tipizētajiem mainīgajiem](/lv/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Tagad funkcija prasa, lai tās argumenti būtu veseli skaitļi.

```raku
say add(10, 20);
# say add(pi, e); # Kļūda
```

Ja jūs nododat vērtību, kuras tips nav `Int`, rodas kļūda kompilācijas laikā.

```
$ raku t.raku
===SORRY!=== Kļūda kompilējot t.raku
Izsaukums add(Num, Num) nekad nedarbosies ar deklarēto parakstu (Int $x, Int $y)
t.raku:5
------> say ⏏add(pi, e);
```

Ievērojiet, ka šeit Raku automātiski nekonvertēs tipus. Citos gadījumos tas var veikt šādu konvertēšanu.

```raku
# say add('3', '4'); # Kļūda
say '3' + '4'; # OK un ir 7
```

%%tipblock
## Kā zināt, vai tā ir kļūda kompilācijas laikā
Ja kļūdas ziņojums sākas ar `===SORRY!=== Kļūda kompilējot`, kļūda notika kompilācijas laikā.
%%/tipblock

{% include nav.html %}
