---
title: Reponere cum antonyma
---

{% include menu.html %}

## Problema

Scribe programma quod omnia verba ex linea mandati in antonyma sua mutat. Antonyma sunt verba cum sensu contrario. Si verbum in dictionario non est, id sine mutatione imprime.

Dictionarium antonymorum in hash serva, directe in codice programmatis. Ut res facilior sit, hic est index paratus circiter 200 parium: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Eum directe in programma tuum effingere et inserere potes. Omnia paria ibi in utraque directione sunt, exempli gratia:

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

Fac programma quam simplicissimum, et verba unum per lineam imprime.

## Exemplum

Curre programma cum paucis verbis ut argumentis. Cura ut saltem quaedam ex eis in dictionario sint.

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

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
