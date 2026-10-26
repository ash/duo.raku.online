---
title: Klases metodes
translations_gpt:
---

{% include menu.html %}

Lielāko daļu metožu jūs izsaucat uz objekta. Objekts ir klases instance. Bet metodi var izsaukt arī uz pašas klases. Tas nozīmē, ka jūs to izsaucat uz tipa objekta. Tādu metodi bieži sauc par _klases metodi_. Tā noder visas klases vērtībām un darbībām. Tās nepieder tikai vienam objektam.

Klases metodi jūs rakstāt tāpat kā jebkuru citu metodi:

```raku
class Road {
    method speed-limit { 120 }
}
```

Bet jūs to izsaucat uz klases nosaukuma. Jūs to neizsaucat uz instances:

```raku
say Road.speed-limit; # 120
```

Jūs jau zināt vienu klases metodi. Bet jūs to tā nesaucāt. Tā ir `new`. Jūs izsaucat `new` uz klases, un tā izveido jaunu objektu.

Klases metode nevar izmantot instances atribūtus. Aiz tās nav neviena objekta. Tāpēc tā var strādāt tikai ar kopīgu informāciju. Šī informācija ir vienāda katram klases objektam. Dažreiz darbam vajag viena objekta datus. Tad izmantojiet parastu metodi un izsauciet to uz instances. Dažreiz darbam tādi dati nav vajadzīgi. Tad klases metode ir laba izvēle.

Klases metodēm nevajag instanci. Bet dažreiz jums ir objekts. Tad jūs tajās tomēr varat izmantot tā datus:

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

Šī programma izdrukā rezultātu, ko jūs gaidāt:

```
The maximum speed on Road 404 is 120
```

Šeit jums vajag klases instanci. Bez tās tāds izsaukums kā `say Road.info` dod kļūdu.

{% include nav.html %}
