---
title: Ingebouwde speciale variabelen
---

{% include menu.html %}

Raku heeft een reeks variabelen voor je klaarstaan. De meeste zijn _dynamisch_, met de twigil `*`. Je kent [dynamische variabelen](/nl/advanced/special-variables/dynamic-variables) al. Dus kun je deze variabelen overal lezen. Je kunt ze zelfs een nieuwe waarde geven voor één scope. Hier zijn de variabelen die je het vaakst nodig hebt.

## Standaardstreams

Invoer en uitvoer gaan via drie dynamische variabelen. `$*OUT` is de standaarduitvoer. `$*ERR` is de standaardfout, een uitvoer voor foutmeldingen. `$*IN` is de standaardinvoer. `say` en `print` schrijven naar `$*OUT`. Wil je tekst naar de standaardfout sturen? Roep dan de methode aan op `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Deze variabelen zijn dynamisch. Dus kun je `$*OUT` in een blok naar een nieuwe plek sturen. Dan drukt de code die je in het blok aanroept daar af. Je verandert die code helemaal niet.

## Het programma en zijn proces

Sommige variabelen vertellen je iets over het programma dat nu draait:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Hun waarden zijn elke keer anders als je het programma draait. Dus tonen we de uitvoer hier niet.

## Commandoregel en omgeving

Raku zet de argumenten en de omgevingsvariabelen in twee containers. Ze staan voor je klaar:

* `@*ARGS` — de lijst met commandoregelargumenten; een `MAIN`-subroutine krijgt dezelfde argumenten
* `%*ENV` — de omgevingsvariabelen, in een hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Deze ingebouwde variabelen besparen je werk. Je hoeft deze informatie niet zelf op te halen. Ze zijn dynamisch, dus Raku zoekt ze op via de call stack. Dus kun je elke ingebouwde `$*`-variabele overschrijven voor een scope. Het werkt net als je eigen `$*`-variabele.

Dit zijn allemaal dynamische variabelen. Maar Raku heeft ook ingebouwde variabelen met de twigil `?`. Dat zijn `$?FILE` en `$?LINE`. De compiler geeft ze hun waarde voordat het programma draait. Je zag ze al op de pagina over [twigils](/nl/advanced/special-variables/twigils).

{% include nav.html %}
