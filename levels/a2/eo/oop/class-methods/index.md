---
title: Klasmetodoj
translations_gpt:
---

{% include menu.html %}

Vi vokas la plej multajn metodojn sur objekto. Objekto estas ekzemplero de klaso. Sed vi ankaŭ povas voki metodon sur la klaso mem. Tio signifas, ke vi vokas ĝin sur la tipobjekto. Tia metodo ofte nomiĝas _klasmetodo_. Ĝi estas utila por valoroj kaj agoj de la tuta klaso. Ili ne apartenas nur al unu objekto.

Vi skribas klasmetodon kiel ĉiun alian metodon:

```raku
class Road {
    method speed-limit { 120 }
}
```

Sed vi vokas ĝin sur la nomo de la klaso. Vi ne vokas ĝin sur ekzemplero:

```raku
say Road.speed-limit; # 120
```

Vi jam konas unu klasmetodon. Sed vi ne nomis ĝin tiel. Ĝi estas `new`. Vi vokas `new` sur la klaso, kaj ĝi faras novan objekton.

Klasmetodo ne povas uzi la atributojn de ekzemplero. Ne estas objekto malantaŭ ĝi. Do ĝi povas labori nur kun komunaj informoj. Ĉi tiuj informoj estas la samaj por ĉiu objekto de la klaso. Foje la laboro bezonas la datumojn de unu objekto. Tiam uzu normalan metodon, kaj voku ĝin sur ekzemplero. Foje la laboro ne bezonas tiajn datumojn. Tiam klasmetodo estas bona elekto.

Klasmetodoj ne bezonas ekzempleron. Sed foje vi havas objekton. Tiam vi tamen povas uzi ĝiajn datumojn en ili:

```raku
class Road {
    has $.name;
    method speed-limit { 120 }

    method info {
        "The maximum speed on $.name is " ~ self.speed-limit
    }
}

my $R404 = Road.new(name => 'Road 404');
say $R404.info;
```

Ĉi tiu programo presas la rezulton, kiun vi atendas:

```
The maximum speed on Road 404 is 120
```

Ĉi tie vi bezonas ekzempleron de la klaso. Sen ĝi, voko kiel `say Road.info` donas eraron.

{% include nav.html %}
