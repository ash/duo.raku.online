---
title: Īpašības rakstīšana
---

{% include menu.html %}

Īpašības ir parastas multi-apakšprogrammas ar īpašu nosaukumu, tāpēc jūs varat rakstīt savas. Lai pievienotu īpašību ar nosaukumu `is kautkas`, definējiet `multi sub trait_mod:<is>`. Tās parametri norāda, kam īpašība ir piemērojama, un dod tai nosaukumu:

Šī ir viena no Raku sarežģītākajām daļām. Neuztraucieties, ja tā šķiet grūta. Jūs varat lieliski lietot iebūvētās īpašības, nezinot, kā tās ir veidotas. Jums reti būs pašiem jāraksta sava īpašība. Tāpēc uztveriet šo lapu kā ieskatu tajā, kā lietas darbojas iekšpusē.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Izlasiet signatūru. Pirmais parametrs, `Routine:D $r`, ir lieta, kurai īpašība ir pievienota. Šeit tā ir apakšprogramma. `:D` ir tipa _smailijs_, kas pieprasa **definētu** vērtību. Tas nozīmē īstu apakšprogrammas objektu, nevis pašu nedefinēto `Routine` tipu. Tā partneri ir `:U`, kas pieprasa nedefinētu tipa objektu, un `:_`, kas pieņem abus. Nosauktais parametrs `:$traced!` ir pašas īpašības nosaukums. Tā kā šis parametrs ir klāt, `is traced` izsauc šo apakšprogrammu. Īpašības izpildās **kompilēšanas laikā**. Tāpēc `foo` un `bar` tiek pierakstītas, tiklīdz tās ir deklarētas. Kad programma darbojas, `@traced` jau satur tās. Jūs pat varētu pārcelt rindu `say @traced` virs abām `sub` definīcijām. Tā joprojām izdrukātu `[foo bar]`.

Šī mazā īpašība tikai pieraksta nosaukumus, bet tā pati ideja var izdarīt daudz vairāk. Tā var ietvert apakšprogrammu, lai pievienotu žurnalēšanu, pārbaudīt atribūtu vai pievienot metadatus. Pirmais parametrs var būt arī `Attribute` vai `Variable`, nevis `Routine`. Tad īpašība attiecas uz atribūtiem vai mainīgajiem. Ar īpašībām Raku uztur savu deklarāciju sintaksi atvērtu. Iebūvētā `is rw` un jūsu pašu `is traced` ir veidotas vienādi.

{% include nav.html %}
