---
title: Publicēšana ar fez
translations_gpt:
---

{% include menu.html %}

Iepriekšējais temats iepazīstināja ar `fez` — rīku, kas augšupielādē distribūcijas Raku ekosistēmā. `fez` nav obligāti jāizmanto, jo ir arī citi veidi, kā publicēt. Taču tā ir visbiežākā izvēle. Turklāt tas dara vairāk nekā tikai augšupielādē. Tas var jums sagatavot jaunu distribūciju un pārvaldīt jūsu autora kontu. Instalējiet to ar `zef`:

```
zef install fez
```

## Distribūcijas uzsākšana

Jūs varat izveidot `META6.json` un direktorijas `lib/` un `t/` ar rokām. Vai arī varat ļaut `fez` tos sagatavot jūsu vietā:

```
fez init My::Greeting
```

`fez init` izveido jaunu distribūciju, uz kuras jūs varat būvēt tālāk. Tā ir projekta direktorija ar gatavu `META6.json` un standarta izkārtojumu. Tāpēc jūs varat uzreiz sākt rakstīt kodu zem `lib/` un testus zem `t/`. Jums nav pašam jāgatavo metadatu fails.

## Reģistrēšanās un pieteikšanās

Lai publicētu, jums vajadzīgs ekosistēmas konts. To jūs izveidojat vienreiz ar `fez register`, kas prasa lietotājvārdu, e-pastu un paroli. Pēc tam jūs piesakāties ar `fez login`. Tas saglabā jūsu atslēgu, lai vēlākās komandas zinātu, kas jūs esat:

```
fez register
fez login
```

Jūsu lietotājvārds ir svarīgs. Distribūcijas failā `META6.json` jābūt laukam `auth` ar vērtību `zef:<lietotājvārds>`. Tieši tā ekosistēma zina, ka augšupielāde tiešām nāk no jums.

## Augšupielāde

Kad jums ir konts un distribūcija ir gatava, palaidiet `fez upload`. Tas iepako pašreizējo direktoriju un nosūta to:

```
fez upload
```

Pēc tam ikviens to var instalēt pēc nosaukuma ar `zef install My::Greeting`. Katru versiju var augšupielādēt tikai vienreiz. Tāpēc neaizmirstiet palielināt `version` failā `META6.json`, pirms publicējat atjauninājumu.

## Citas noderīgas komandas

Šeit ir vēl dažas `fez` komandas, kas jums būs vajadzīgas:

* `fez review` — pārbaudīt, vai distribūcijā nav iespējamu problēmu, pirms jūs to augšupielādējat;
* `fez list` — parādīt distribūcijas, kuras jūs jau esat publicējuši;
* `fez refresh` — no jauna izveidot `META6.json` no failiem, kas tagad ir diskā.

> Visām šīm komandām vajadzīgs instalēts `fez` un tīkla savienojums. Visam pēc `init` vajadzīgs arī ekosistēmas konts.

{% include nav.html %}
