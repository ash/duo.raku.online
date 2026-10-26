---
title: Test modulis
translations_gpt:
---

{% include menu.html %}

Testēšanas rīkus jūs ielādējat ar `use Test`. Pati vienkāršākā pārbaude ir `ok`, kas izdodas, kad tās nosacījums ir patiess. Katra pārbaude var saņemt arī aprakstu:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Kad jūs to palaižat, tā izdrukā šo standarta testu formātā, ko sauc par _TAP_:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Katra pārbaude, kas izdodas, tiek parādīta kā `ok` ar savu numuru un aprakstu. Neizdevusies pārbaude rādītu `not ok`. Pēdējā rinda, `1..2`, ir _plāns_, kas pasaka, cik testu izpildījās. Izsaukums `done-testing` beigās šo plānu izdrukā automātiski.

Kad jūs gaidāt noteiktu vērtību, `is` ir skaidrāks nekā `ok`. Ja tests neizdodas, `is` parāda gan gaidīto, gan faktisko vērtību:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Tas izdrukā `ok 1 - addition works`. Lai redzētu, kā `is` ziņo par problēmu, dodiet tam nepareizu gaidīto vērtību:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Tagad pārbaude neizdodas, un izvade paskaidro, kas tieši nogāja greizi:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

Rinda `not ok` iezīmē neveiksmi. Rindas zem tās parāda, kas tika gaidīts un ko programma patiesībā ieguva. Tāpēc, kad svarīga ir noteikta vērtība, `is` ir noderīgāks nekā vienkāršs `ok`.

Ar `ok`, `is` un `done-testing` jau pietiek noderīgam testu failam. Nākamais temats pievieno [pārējos salīdzinājumus](/lv/advanced/testing/comparisons).

{% include nav.html %}
