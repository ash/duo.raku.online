---
title: Module-introspectie
---

{% include menu.html %}

De naam van een module maakt een _pakket_ aan. Een pakket is een naamruimte die de namen bevat die in de module gedefinieerd zijn. Eerder, in [de sectie over containers](/nl/advanced/containers), heb je `WHO` leren kennen. Het geeft de `Stash`, of symbooltabel, van een pakket terug. Module-introspectie maakt daar gebruik van.

De voorbeelden hieronder gebruiken de `Greeting`-module die we in de eerdere onderwerpen hebben gebouwd. Hij heeft een geëxporteerde subroutine en een gedeelde `our`-variabele:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Je schrijft het pakket van een module met `::` aan het eind. Met `.keys` erachter krijg je de namen die het bevat:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

De `Greeting`-module uit de eerdere onderwerpen definieert een `our`-variabele, `$version`. Zijn pakket bevat dus deze naam, samen met de sigil. Daarnaast staat `EXPORT`, wat misschien verrassend lijkt. Het is een pakket dat Raku automatisch aanmaakt. Het bevat alles wat een module markeert met `is export`, zoals de subroutine `hello`. Een geëxporteerde naam staat dus _niet_ direct in het pakket. Hij zit in het `EXPORT`-subpakket. De sleutels komen in geen vaste volgorde terug. Daarom sorteert het voorbeeld ze, zodat het resultaat altijd hetzelfde is.

Je kunt ook een naam opzoeken in het pakket. Gebruik de naam gewoon als sleutel. Dat geeft dezelfde waarde als de gekwalificeerde naam `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Weergeven wat een module exporteert

De geëxporteerde namen staan eigenlijk in het `EXPORT`-pakket dat je hierboven zag. Je kunt ze dus weergeven door één niveau dieper te kijken. Exports zonder tag gaan naar de `DEFAULT`-groep (zie [Exporttags](/nl/advanced/modules-basics/export-tags)). De `.keys` van deze groep zijn de geëxporteerde routines:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Elke sleutel is een geëxporteerde naam met zijn sigil. Hier is dat de enige subroutine, `&hello`, met de `&` die een routine aangeeft. Zo kun je ontdekken wat een module zijn gebruikers aanbiedt. Je hoeft de broncode niet te lezen. Vraag gewoon aan het `EXPORT::DEFAULT`-pakket wat het bevat.

Op deze manier in een pakket kijken is handig in twee gevallen. Misschien wil je ontdekken wat een module biedt. Of je wilt de namen bereiken terwijl het programma draait. Dan hoef je niet elke naam uit te schrijven in de broncode.

{% include nav.html %}
