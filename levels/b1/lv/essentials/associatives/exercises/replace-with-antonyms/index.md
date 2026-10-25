---
title: Aizstāt ar antonīmiem
---

{% include menu.html %}

## Problēma

Uzrakstiet programmu, kas aizstāj visus vārdus no komandrindas ar to antonīmiem. Antonīmi ir vārdi ar pretēju nozīmi. Ja vārda nav vārdnīcā, izdrukājiet to bez izmaiņām.

Glabājiet antonīmu vārdnīcu kā hash, tieši programmas kodā. Lai būtu vieglāk, šeit ir gatavs aptuveni 200 pāru saraksts: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Jūs varat to nokopēt un ielīmēt tieši savā programmā. Tur ir visi pāri abos virzienos, piemēram:

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    # . . .
    'below' => 'above',
    # . . .
    'present' => 'absent',
    # . . .
;
```

Veidojiet programmu pēc iespējas vienkāršāku un izdrukājiet vārdus pa vienam katrā rindā.

## Piemērs

Palaidiet programmu ar dažiem vārdiem kā argumentiem. Pārbaudiet, ka vismaz daži no tiem ir vārdnīcā.

```console
$ raku replace-with-antonyms.raku a quiet teacher wants to buy some salt
a
noisy
student
wants
to
sell
some
sugar
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
