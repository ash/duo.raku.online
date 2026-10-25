---
title: Anstataŭigi per antonimoj
---

{% include menu.html %}

## Problemo

Skribu programon, kiu anstataŭigas ĉiujn vortojn el la komanda linio per iliaj antonimoj. Antonimoj estas vortoj kun la mala signifo. Se vorto ne estas en la vortaro, presu ĝin sen ŝanĝoj.

Tenu la vortaron de antonimoj en haketo, rekte en la programkodo. Por faciligi la laboron, jen preta listo de ĉirkaŭ 200 paroj: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Vi povas kopii kaj alglui ĝin rekte en vian programon. Ĉiuj paroj estas tie en ambaŭ direktoj, ekzemple:

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

Faru la programon kiel eble plej simpla, kaj presu la vortojn unu en ĉiu linio.

## Ekzemplo

Rulu la programon kun kelkaj vortoj kiel argumentoj. Kontrolu, ke almenaŭ kelkaj el ili estas en la vortaro.

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

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
