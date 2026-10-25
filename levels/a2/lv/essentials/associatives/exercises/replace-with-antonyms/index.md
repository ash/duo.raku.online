---
title: Aizstāt ar antonīmiem
---

{% include menu.html %}

## Problēma

Uzrakstiet programmu. Tā ņem vārdus no komandrindas. Tā aizstāj katru vārdu ar tā antonīmu. Antonīms ir vārds ar pretēju nozīmi. Dažu vārdu nav vārdnīcā. Nemainiet šos vārdus. Izdrukājiet tos tādus, kādi tie ir.

Glabājiet antonīmu vārdnīcu kā hash. Ierakstiet šo hash tieši kodā. Lai jums palīdzētu, mēs sagatavojām aptuveni 200 pāru sarakstu. Jūs varat to nokopēt un ielīmēt savā programmā: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Katrs pāris sarakstā ir divas reizes, vienu reizi katrā virzienā. Piemēram:

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

Padariet programmu pēc iespējas vienkāršāku. Izdrukājiet katru vārdu savā rindā.

## Piemērs

Palaidiet programmu un dodiet tai dažus vārdus. Vismaz dažiem vārdiem jābūt vārdnīcā.

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
