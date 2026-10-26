---
title: 'Solvo: Vivperiodo laŭ aĝo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $age = 30;

given $age {
    when $_ < 0 { say 'invalid' }
    when 0..12  { say 'child' }
    when 13..19 { say 'teenager' }
    when 20..64 { say 'adult' }
    default     { say 'senior' }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Eligo

```
adult
```

## Komentoj

1. Ĉi tiu solvo miksas du specojn de `when`. La unua estas *kondiĉo*, `$_ < 0`, kie `$_` estas la temo, kiun `given` starigas. Ĝi forfiltras la nevalidajn aĝojn. La ceteraj estas *intervaloj*, kiuj grupigas la validajn aĝojn en periodojn.

1. La ordo gravas. La kontrolo de negativa aĝo venas unue. Do ĝi ruliĝas, antaŭ ol iu intervalo estas provata. La valoro `30` estas en `20..64`, do la programo presas `adult`.

1. La bloko `default` kovras ĉiun aĝon de 65 kaj pli. Neniu el la listigitaj intervaloj kaptas ĉi tiujn aĝojn.

Vi povus ankaŭ inversigi tion kaj lasi `default` kapti la *nevalidan* enigon anstataŭe. Listigu ĉiun konatan periodon, inkluzive de `senior` kiel la kondiĉon `$_ >= 65`. Traktu ĉion, kio restas, ekzemple negativan aĝon, kiel nevalidan:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Ĉi tie `default` estas vera branĉo «neniu el la supraj». Kiu versio legiĝas pli bone, estas afero de gusto. Metu la kontrolon unue, kiam la nevalida kazo estas escepto. Aŭ faru ĝin la `default`, kiam ĉiuj validaj periodoj estas klare listigitaj.

{% include nav.html %}
