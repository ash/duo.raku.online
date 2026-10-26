---
title: Test modulis
translations_gpt:
---

{% include menu.html %}

Lai iegūtu testēšanas rīkus, uzrakstiet `use Test`. Vienkāršākā pārbaude ir `ok`. Tā izdodas, kad tās nosacījums ir patiess. Katrai pārbaudei var būt arī apraksts:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Palaidiet šo programmu. Tā izdrukā rezultātu standarta testu formātā. Šo formātu sauc par _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Katrai pārbaudei, kas izdodas, jūs redzat `ok` ar tās numuru un aprakstu. Pārbaude, kas neizdodas, rāda `not ok`. Pēdējā rinda, `1..2`, ir _plāns_. Tā pasaka, cik testu izpildījās. Izsaukums `done-testing` beigās izdrukā šo plānu automātiski.

Dažreiz jūs gaidāt noteiktu vērtību. Tad `is` ir skaidrāks nekā `ok`. Ja tests neizdodas, `is` parāda divas vērtības. Tas parāda vērtību, ko jūs gaidāt, un vērtību, ko jūs iegūstat:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Tas izdrukā `ok 1 - addition works`. Tagad apskatīsim, kā `is` ziņo par neveiksmi. Dodiet `is` nepareizu gaidīto vērtību:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Tagad pārbaude neizdodas. Izvade parāda, kas tieši ir nepareizi:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

Rinda `not ok` parāda neveiksmi. Zem tās vēl dažas rindas paskaidro problēmu. Tās parāda vērtību, ko jūs gaidāt, un vērtību, ko jūs iegūstat. Tāpēc, kad jums vajag noteiktu vērtību, `is` palīdz vairāk nekā `ok` viens pats.

Ar `ok`, `is` un `done-testing` jūs jau varat uzrakstīt noderīgu testu failu. Nākamais temats parāda [pārējos salīdzinājumus](/lv/advanced/testing/comparisons).

{% include nav.html %}
