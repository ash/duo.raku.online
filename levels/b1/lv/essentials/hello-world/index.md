---
title: 'Sveika, Pasaule!'
---

{% include menu.html %}

Lieliski, mēs esam apguvuši pamatus. Tagad mēs varam sarunāties ar Raku un redzēt tā atbildi. Tāpēc pāriesim tieši pie pirmās īstās programmas, 'Hello, World!'.

```raku
say 'Hello, World!';
```

Drīz mēs apgūsim funkciju pamatus. Bet vispirms apskatīsim dažas citas iespējas šai programmai.

Pirmkārt, jūs varat ielikt funkcijas argumentu iekavās:

```raku
say('Hello, World!');
```

Otrkārt, jūs varat izmantot divas citas funkcijas, `put` un `print`. Atkal tās var rakstīt ar iekavām vai bez tām:

```raku
put 'Hello, World!';

print("Hello, World!\n");
```

Ņemiet vērā, ka ar `print` jaunas rindas rakstzīme jums jāpievieno pašiem. Tā jāliek ziņojuma beigās. Bet neuztraucieties, visas šīs detaļas mēs apskatīsim vēlāk.

Pirms turpinām, šeit ir vēl viena aizraujoša iespēja. Funkciju var izsaukt kā metodi, tieši uz virknes:

```raku
'Hello, World!'.say;
```

{% include nav.html %}
