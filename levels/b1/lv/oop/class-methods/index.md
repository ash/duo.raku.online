---
title: Klases metodes
translations_gpt:
---

{% include menu.html %}

Lielāko daļu metožu izsauc uz objekta, kas ir klases instance. Bet metodi jūs varat izsaukt arī uz pašas klases. Citiem vārdiem, jūs to izsaucat uz tipa objekta. Tādu metodi bieži sauc par _klases metodi_. Tā noder vērtībām un darbībām, kas pieder visai klasei. Tās nepieder vienam konkrētam objektam.

Klases metodi jūs definējat tieši tāpat kā jebkuru citu metodi:

```raku
class Road {
    method speed-limit { 120 }
}
```

Bet jūs to izsaucat uz klases nosaukuma, nevis uz instances:

```raku
say Road.speed-limit; # 120
```

Patiesībā jūs jau esat lietojuši klases metodi, to tā nenosaucot. `new` ir metode, ko jūs izsaucat uz klases, lai radītu jaunu objektu.

Klases metode nevar izmantot instances atribūtus, jo aiz tās nav neviena konkrēta objekta. Tāpēc tā strādā tikai ar informāciju, kas ir kopīga visiem klases objektiem. Ja darbs ir atkarīgs no viena objekta datiem, izmantojiet parastu metodi. Izsauciet to uz instances. Ja nav, klases metode ir dabiska izvēle.

Klases metodēm instance nav vajadzīga. Tomēr, ja jums ir objekts, jūs varat tajās izmantot tā datus:

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

Šī programma izdrukā rezultātu, ko jūs gaidītu:

```
The maximum speed on Road 404 is 120
```

Bez klases objekta tāds izsaukums kā `say Road.info` izraisītu kļūdu.

{% include nav.html %}
