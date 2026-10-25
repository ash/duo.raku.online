---
title: 'Sveika, Pasaule!'
---

{% include menu.html %}

Lieliski! Tagad mēs zinām pamata lietas. Mēs varam runāt ar Raku un redzēt tā atbildi. Tāpēc ejam pie pirmās īstās programmas: 'Hello, World!'.

```raku
say 'Hello, World!';
```

Drīz mēs mācīsimies funkciju pamatus. Bet vispirms šeit ir daži citi veidi, kā uzrakstīt šo programmu.

Pirmkārt, jūs varat likt funkcijas argumentu iekavās:

```raku
say('Hello, World!');
```

Otrkārt, jūs varat lietot citas funkcijas: `put` un `print`. Atkal jūs varat tās rakstīt ar iekavām vai bez tām:

```raku
put 'Hello, World!';

print("Hello, World!\n");
```

Ar `print` jums pašiem jāpievieno jaunas rindas rakstzīme. Šī rakstzīme sāk jaunu rindu. Lieciet to ziņojuma beigās. Bet neuztraucieties. Visas šīs detaļas mēs apskatīsim vēlāk.

Pirms ejam tālāk, šeit ir vēl viens aizraujošs veids. Funkciju var izsaukt kā metodi. Izsauciet to tieši uz virknes:

```raku
'Hello, World!'.say;
```

{% include nav.html %}
