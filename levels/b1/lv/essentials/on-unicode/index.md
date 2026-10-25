---
title: Piezīmes par Unicode izmantošanu
---

{% include menu.html %}

Raku pieņem, ka visi jūsu programmu faili ir saglabāti UTF-8 kodējumā. Praksē jums nav jāuztraucas par ne-ASCII rakstzīmēm. Piemēram, jūs varat tās lietot virknes literāļos. Bet tas nav viss. Arī UTF-8 teksta faila lasīšana, visticamāk, nesagādās problēmas. Tas arī nozīmē, ka Raku pareizi nosaka virknes garumu. Tas skaita rakstzīmes, nevis baitus. Sīkāk mēs to apskatīsim vēlāk.

Šeit ir nākamā lieta, kas jums būtu jāzina. Identifikatoros jeb nosaukumos var būt ne-latīņu vai ne-angļu burti. Ja vēlaties, varat nosaukt savu mainīgo `$ι`, nevis `$i`. Kompilators to pareizi nolasīs.

Raku ir diezgan stingrs attiecībā uz rakstzīmju Unicode īpašībām. Piemēram, tas zina, vai rakstzīme ir burts vai cipars. Tas arī zina, kuras rakstzīmes veido pārus, piemēram, apaļās un citas iekavas. Bieži dažādās programmas daļās var lietot dažāda veida iekavas. Piemēram, pārveidosim mūsu "Hello, World!" programmu. Tajā varam lietot šīs ne-latīņu pēdiņas. Jūs tās redzēsiet atkal, kad strādāsim ar Raku gramatikām:

```raku
say ｢Hello, World!｣;
```

Dažiem iebūvētiem operatoriem ir divas formas: Unicode un ASCII. Piemēram, ‘nav vienāds’ var rakstīt kā `!=` vai kā `≠`. Tas pats attiecas uz kopu operācijām. Piemēram, operatoram `∈` ir tīra ASCII versija, `(elem)`. Arī iebūvēto konstanti var saukt gan par `pi`, gan par `π`.

Ar skaitļiem jūs varat lietot daļskaitļus, piemēram, `½`, nevis `0.5`. Jūs varat arī iegūt `$x` kvadrātu ar augšraksta rakstzīmi: `$x²`.

Pilnu šādu pāru sarakstu skatiet dokumentācijā: 📖 [Unicode versus ASCII symbols](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
