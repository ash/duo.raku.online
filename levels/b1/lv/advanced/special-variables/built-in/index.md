---
title: Iebūvētie speciālie mainīgie
translations_gpt:
---

{% include menu.html %}

Raku jums definē mainīgo kopu. Vairums no tiem ir _dinamiski_, ar tvigilu `*`. Tāpēc jūs varat tos lasīt jebkur, kā jūs redzējāt pie [dinamiskajiem mainīgajiem](/lv/advanced/special-variables/dynamic-variables). Jūs pat varat tos pārmākt kādam redzamības apgabalam. Lūk, tie, kas jums būs vajadzīgi visbiežāk.

## Standarta plūsmas

Ievade un izvade iet caur trim dinamiskiem mainīgajiem: `$*OUT` standarta izvadei, `$*ERR` standarta kļūdām un `$*IN` standarta ievadei. `say` un `print` raksta uz `$*OUT`. Lai tā vietā sūtītu tekstu uz standarta kļūdām, izsauciet metodi uz `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Tā kā šie mainīgie ir dinamiski, jūs varat novirzīt `$*OUT` blokā. Tad viss, ko jūs izsaucat šajā blokā, sūta savu izvadi uz jauno vietu. Jums nav jāmaina nekas no šī koda.

## Programma un tās process

Daži mainīgie sniedz informāciju par pašu darbojošos programmu:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

To vērtības mainās katru reizi, kad jūs palaižat programmu. Tāpēc šeit nav noteiktas izvades, ko parādīt.

## Komandrinda un vide

Argumenti un vide pienāk divos konteineros, kas ir gatavi lietošanai:

* `@*ARGS` — komandrindas argumentu saraksts (apakšprogramma `MAIN` saņem tos pašus)
* `%*ENV` — vides mainīgie jauktenī

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Šie iebūvētie mainīgie ļauj jums nevākt to pašu informāciju pašiem. Tie arī ir dinamiski, tāpēc Raku tos meklē caur izsaukumu steku. Tāpēc jūs varat pārmākt jebkuru `$*` iebūvēto mainīgo kādam redzamības apgabalam. Tas darbojas tieši tāpat kā ar jūsu pašu `$*` mainīgo.

Līdzās šiem dinamiskajiem mainīgajiem Raku ir arī kompilēšanas laika `?` iebūvētie mainīgie: `$?FILE` un `$?LINE`. Jūs tos jau redzējāt [tvigilu](/lv/advanced/special-variables/twigils) lappusē.

{% include nav.html %}
