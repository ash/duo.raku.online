---
title: Ingebouwde speciale variabelen
---

{% include menu.html %}

Raku definieert een reeks variabelen voor je. De meeste zijn _dynamisch_, met de `*`-twigil. Dus kun je ze overal lezen, zoals je zag bij [dynamische variabelen](/nl/advanced/special-variables/dynamic-variables). Je kunt ze zelfs voor een scope overschrijven. Hier zijn de variabelen die je het vaakst nodig zult hebben.

## Standaardstreams

Invoer en uitvoer gaan via drie dynamische variabelen: `$*OUT` voor standaarduitvoer, `$*ERR` voor standaardfout en `$*IN` voor standaardinvoer. `say` en `print` schrijven naar `$*OUT`. Om tekst in plaats daarvan naar standaardfout te sturen, roep je de methode aan op `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Omdat deze variabelen dynamisch zijn, kun je `$*OUT` in een blok omleiden. Dan stuurt alles wat je in dat blok aanroept zijn uitvoer naar de nieuwe plek. Je hoeft niets aan die code te veranderen.

## Het programma en zijn proces

Een paar variabelen geven informatie over het draaiende programma zelf:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Hun waarden veranderen elke keer dat je het programma draait. Er is hier dus geen vaste uitvoer om te tonen.

## Commandoregel en omgeving

De argumenten en de omgevingsvariabelen komen in twee containers die klaar zijn voor gebruik:

* `@*ARGS` — de lijst met commandoregelargumenten (een `MAIN`-subroutine krijgt dezelfde)
* `%*ENV` — de omgevingsvariabelen, in een hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

Deze ingebouwde variabelen besparen je het werk om dezelfde informatie zelf te verzamelen. Ze zijn ook dynamisch, dus Raku zoekt ze op via de call stack. Dus kun je elke ingebouwde `$*`-variabele voor een scope overschrijven. Dit werkt precies zoals bij een eigen `$*`-variabele.

Naast deze dynamische variabelen heeft Raku ook de ingebouwde compile-time `?`-variabelen: `$?FILE` en `$?LINE`. Je zag ze al op de pagina over [twigils](/nl/advanced/special-variables/twigils).

{% include nav.html %}
