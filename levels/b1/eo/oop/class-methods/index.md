---
title: Klasmetodoj
translations_gpt:
---

{% include menu.html %}

La plej multaj metodoj estas vokataj sur objekto, kiu estas ekzemplero de klaso. Sed vi ankaŭ povas voki metodon sur la klaso mem. Per aliaj vortoj, vi vokas ĝin sur la tipobjekto. Oni ofte nomas tian metodon _klasmetodo_. Ĝi estas utila por valoroj kaj operacioj, kiuj apartenas al la tuta klaso. Ili ne apartenas al unu aparta objekto.

Vi difinas klasmetodon ekzakte same kiel ĉiun alian metodon:

```raku
class Road {
    method speed-limit { 120 }
}
```

Sed vi vokas ĝin sur la nomo de la klaso anstataŭ sur ekzemplero:

```raku
say Road.speed-limit; # 120
```

Fakte, vi jam uzis klasmetodon, sen nomi ĝin tiel. `new` estas metodo, kiun vi vokas sur la klaso por krei novan objekton.

Klasmetodo ne povas uzi la atributojn de ekzemplero, ĉar ne estas aparta objekto malantaŭ ĝi. Do ĝi laboras nur kun informoj, kiujn ĉiuj objektoj de la klaso kunhavas. Se la laboro dependas de la datumoj de unu objekto, uzu ordinaran metodon. Voku ĝin sur ekzemplero. Se ne, klasmetodo estas la natura elekto.

Klasmetodoj ne bezonas ekzempleron. Tamen, kiam vi ja havas objekton, vi povas uzi ĝiajn datumojn en ili:

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

Ĉi tiu programo presas la rezulton, kiun vi atendus:

```
The maximum speed on Road 404 is 120
```

Sen objekto de la klaso, voko kiel `say Road.info` kaŭzus eraron.

{% include nav.html %}
