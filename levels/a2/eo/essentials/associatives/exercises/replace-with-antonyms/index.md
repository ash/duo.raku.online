---
title: Anstataŭigi per antonimoj
---

{% include menu.html %}

## Problemo

Skribu programon. Ĝi prenas vortojn el la komanda linio. Ĝi ŝanĝas ĉiun vorton en ĝian antonimon. Antonimo estas vorto kun la mala signifo. Kelkaj vortoj ne estas en la vortaro. Ne ŝanĝu ĉi tiujn vortojn. Presu ilin tiel, kiel ili estas.

Tenu la vortaron de antonimoj en haketo. Skribu la haketon rekte en la kodo. Por helpi vin, ni faris liston de ĉirkaŭ 200 paroj. Vi povas kopii kaj alglui ĝin en vian programon: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Ĉiu paro estas dufoje en la listo, unufoje en ĉiu direkto. Ekzemple:

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

Faru la programon tiel simpla, kiel vi povas. Presu ĉiun vorton en aparta linio.

## Ekzemplo

Rulu la programon kaj donu al ĝi kelkajn vortojn. Almenaŭ kelkaj el la vortoj devas esti en la vortaro.

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
