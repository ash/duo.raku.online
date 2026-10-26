---
title: Publicēšana ar fez
translations_gpt:
---

{% include menu.html %}

Iepriekšējais temats parādīja `fez`. Ar `fez` jūs augšupielādējat distribūciju Raku ekosistēmā. Jums nav obligāti jāizmanto `fez`. Ir arī citi veidi, kā publicēt. Bet vairums cilvēku izmanto `fez`. Un tas dara vairāk nekā tikai augšupielādē. Tas var arī izveidot jums jaunu distribūciju. Tas var rūpēties arī par jūsu autora kontu. Instalējiet `fez` ar `zef`:

```
zef install fez
```

## Jaunas distribūcijas izveide

Jūs varat pats izveidot `META6.json` un direktorijas `lib/` un `t/`. Bet `fez` var tos izveidot jūsu vietā:

```
fez init My::Greeting
```

`fez init` izveido jaunas distribūcijas sākumu. Tā ir projekta direktorija. Tajā jau ir `META6.json` un standarta izkārtojums. Tāpēc jūs varat uzreiz sākt rakstīt. Kods nonāk zem `lib/`, un testi nonāk zem `t/`. Jums nav pašam jāgatavo `META6.json`.

## Reģistrēšanās un pieteikšanās

Publicēšanai jums vajag kontu ekosistēmā. Kontu jūs izveidojat tikai vienreiz, ar `fez register`. Tas prasa lietotājvārdu, e-pastu un paroli. Tad jūs piesakāties ar `fez login`. Tas saglabā jūsu atslēgu. Ar šo atslēgu nākamās komandas zina, kas jūs esat:

```
fez register
fez login
```

Jūsu lietotājvārds ir svarīgs. Distribūcijas failā `META6.json` jābūt laukam `auth`. Tā vērtība ir `zef:<lietotājvārds>`. Šādi ekosistēma zina, ka augšupielāde tiešām ir jūsu.

## Augšupielāde

Jums ir konts, un distribūcija ir gatava. Tagad `fez upload` iepako pašreizējo direktoriju un nosūta to:

```
fez upload
```

Pēc tam ikviens var to instalēt pēc nosaukuma ar `zef install My::Greeting`. Katru versiju jūs varat augšupielādēt tikai vienreiz. Tāpēc pirms atjauninājuma palieliniet `version` failā `META6.json`.

## Vēl noderīgas komandas

Jūs izmantosiet arī šīs `fez` komandas:

* `fez review` — pirms augšupielādes meklēt iespējamās problēmas distribūcijā;
* `fez list` — parādīt distribūcijas, kuras jūs jau esat publicējuši;
* `fez refresh` — no jauna izveidot `META6.json` no failiem, kas tagad ir diskā.

> Visām šīm komandām vajadzīgs instalēts `fez` un tīkls. Visam pēc `init` vajadzīgs arī ekosistēmas konts.

{% include nav.html %}
