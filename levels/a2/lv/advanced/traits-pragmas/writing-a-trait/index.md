---
title: Īpašības rakstīšana
---

{% include menu.html %}

Īpašības ir parastas multi-apakšprogrammas ar īpašu nosaukumu. Tāpēc jūs varat rakstīt savas īpašības. Vai jūs gribat īpašību `is kautkas`? Tad definējiet `multi sub trait_mod:<is>`. Tās parametri pasaka divas lietas. Tie pasaka, ar ko īpašība strādā. Tie arī dod īpašības nosaukumu:

Šī ir viena no grūtākajām Raku daļām. Neuztraucieties, ja tā izskatās grūta. Jūs varat labi lietot iebūvētās īpašības bez šīm zināšanām. Jums nav jāzina, kā tās ir veidotas. Jums reti būs pašiem jāraksta īpašība. Šī lapa tikai parāda, kā īpašības strādā iekšpusē.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Paskatieties uz signatūru. Pirmais parametrs ir `Routine:D $r`. Tā ir lieta, kurai ir īpašība. Šeit tā ir apakšprogramma. `:D` ir tipa _smailijs_. Tas pieprasa **definētu** vērtību. Tas ir īsts apakšprogrammas objekts. Tas nav pats nedefinētais tips `Routine`. Ir vēl divi smailiji. `:U` pieprasa nedefinētu tipa objektu. `:_` pieņem abus. Nosauktais parametrs `:$traced!` ir īpašības nosaukums. Šī parametra dēļ `is traced` izsauc šo apakšprogrammu. Īpašības izpildās **kompilēšanas laikā**. Tāpēc Raku pieraksta `foo` un `bar` uzreiz, kad nolasa to deklarācijas. Kad programma darbojas, masīvā `@traced` jau ir abi nosaukumi. Jūs pat varat pārcelt rindu `say @traced` augšup, virs abām `sub` definīcijām. Tā joprojām izdrukā `[foo bar]`.

Šī mazā īpašība tikai pieraksta nosaukumus. Bet tā pati ideja var izdarīt daudz vairāk. Piemēram, īpašība var ietvert apakšprogrammu, lai pievienotu žurnalēšanu. Tā var pārbaudīt atribūtu. Vai arī tā var pievienot metadatus, tas ir, papildu datus par kodu. Šeit pirmais parametrs ir `Routine`. Jūs to varat padarīt arī par `Attribute` vai `Variable`. Tad īpašība strādā ar atribūtiem vai mainīgajiem. Īpašības uztur Raku deklarāciju sintaksi atvērtu. Jūs vienmēr varat pievienot jaunas īpašības. Iebūvētā `is rw` un jūsu pašu `is traced` ir veidotas vienādi.

{% include nav.html %}
