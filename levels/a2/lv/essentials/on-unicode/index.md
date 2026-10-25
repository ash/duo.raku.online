---
title: Piezīmes par Unicode izmantošanu
---

{% include menu.html %}

Raku sagaida, ka visi jūsu programmu faili ir UTF-8 kodējumā. Ko tas nozīmē praksē? Jums nav jāuztraucas par rakstzīmēm ārpus ASCII. Piemēram, jūs varat tās likt virknēs. Bet tas nav viss. Jūsu programma var arī lasīt UTF-8 teksta failu. Droši vien arī par to jums nav jāuztraucas. Raku arī pareizi nosaka virknes garumu. Tas skaita rakstzīmes, nevis baitus. Sīkāk mēs to apskatīsim vēlāk.

Šeit ir nākamā lieta, kas jums jāzina. Nosaukumos jūsu programmā var būt ne-latīņu vai ne-angļu burti. Ja vēlaties, mainīgo var nosaukt `$ι`, nevis `$i`. Kompilators to nolasa pareizi.

Raku ļoti rūpīgi strādā ar rakstzīmju Unicode īpašībām. Piemēram, tas zina, kuras rakstzīmes ir burti vai cipari. Tas arī zina, kuras rakstzīmes veido pārus. Apaļās iekavas un citas iekavas ir pāri. Bieži dažādās programmas daļās var lietot dažādas iekavas. Piemēram, mūsu "Hello, World!" programma var lietot šīs ne-latīņu pēdiņas. Jūs tās vēlreiz redzēsiet vēlāk, Raku gramatikās:

```raku
say ｢Hello, World!｣;
```

Dažiem iebūvētiem operatoriem ir divas formas. Viena forma lieto Unicode, bet otra tikai ASCII. Piemēram, ‘nav vienāds’ var rakstīt kā `!=` vai kā `≠`. Tas pats ir ar kopu operācijām. Viens piemērs ir `∈`. Tā ASCII forma ir `(elem)`. Ir arī iebūvēta konstante. To var rakstīt kā `pi` vai kā `π`.

Ar skaitļiem jūs varat rakstīt daļskaitļus kā `½`, nevis `0.5`. Jūs varat arī aprēķināt `$x` kvadrātu kā `$x²`. Tas izmanto augšraksta rakstzīmi. Tā ir maza un stāv augstu.

Šeit ir pilns šo pāru saraksts: 📖 [Unicode un ASCII simboli](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
