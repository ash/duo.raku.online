---
title: Iebūvētie speciālie mainīgie
translations_gpt:
---

{% include menu.html %}

Raku jums dod gatavu mainīgo kopu. Vairums no tiem ir _dinamiski_, ar tvigilu `*`. Jūs jau zināt [dinamiskos mainīgos](/lv/advanced/special-variables/dynamic-variables). Tāpēc jūs varat lasīt šos mainīgos jebkur. Jūs pat varat tiem dot jaunu vērtību vienam redzamības apgabalam. Lūk, mainīgie, kas jums vajadzīgi visbiežāk.

## Standarta plūsmas

Ievade un izvade iet caur trim dinamiskiem mainīgajiem. `$*OUT` ir standarta izvade. `$*ERR` ir standarta kļūdas, izvade kļūdu ziņojumiem. `$*IN` ir standarta ievade. `say` un `print` raksta uz `$*OUT`. Vai jūs gribat sūtīt tekstu uz standarta kļūdām? Tad izsauciet metodi uz `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Šie mainīgie ir dinamiski. Tāpēc blokā jūs varat novirzīt `$*OUT` uz jaunu vietu. Tad kods, ko jūs izsaucat blokā, drukā tur. Jūs šo kodu nemaz nemaināt.

## Programma un tās process

Daži mainīgie jums stāsta par programmu, kas darbojas tagad:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

To vērtības ir citas katru reizi, kad jūs palaižat programmu. Tāpēc mēs šeit nerādām izvadi.

## Komandrinda un vide

Raku ieliek argumentus un vidi divos konteineros. Tie ir jums gatavi:

* `@*ARGS` — komandrindas argumentu saraksts; apakšprogramma `MAIN` saņem tos pašus argumentus
* `%*ENV` — vides mainīgie jauktenī

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Šie iebūvētie mainīgie jums ietaupa darbu. Jums nav pašiem jāiegūst šī informācija. Tie ir dinamiski, tāpēc Raku tos meklē caur izsaukumu steku. Tāpēc jūs varat pārmākt jebkuru `$*` iebūvēto mainīgo kādam redzamības apgabalam. Tas darbojas tieši tāpat kā jūsu pašu `$*` mainīgais.

Visi šie ir dinamiski mainīgie. Bet Raku ir arī iebūvēti mainīgie ar tvigilu `?`. Tie ir `$?FILE` un `$?LINE`. Kompilators iestata to vērtības pirms programmas palaišanas. Jūs tos jau redzējāt lappusē par [tvigiliem](/lv/advanced/special-variables/twigils).

{% include nav.html %}
