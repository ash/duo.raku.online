---
title: Module-introspectie
---

{% include menu.html %}

De naam van een module maakt ook een _pakket_ aan. Een pakket is een naamruimte. Het bewaart de namen uit de module. Eerder, in [de sectie over containers](/nl/advanced/containers), zag je `WHO`. Het geeft de `Stash` van een pakket terug. De `Stash` is de tabel met symbolen, of namen, in het pakket. Module-introspectie gebruikt dit. Daarmee kijkt een programma in een module.

De voorbeelden hieronder gebruiken de module `Greeting` uit de eerdere onderwerpen. Hij heeft een subroutine die hij exporteert. Hij heeft ook een gedeelde `our`-variabele:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Om het pakket van een module te krijgen, schrijf je `::` na de naam. Voeg dan `.keys` toe. Dat geeft de namen in het pakket:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

De module `Greeting` uit de eerdere onderwerpen heeft een `our`-variabele, `$version`. Zijn pakket bevat dus deze naam. De naam heeft de sigil erbij. Ernaast zie je `EXPORT`. Dat is misschien een verrassing. `EXPORT` is ook een pakket. Raku maakt het automatisch. De module markeert sommige dingen met `is export`. `EXPORT` bewaart ze allemaal, bijvoorbeeld de subroutine `hello`. Een geëxporteerde naam staat dus _niet_ direct in het pakket. Hij staat in `EXPORT`. Dat is een kleiner pakket binnen het pakket van de module. De sleutels komen niet in een vaste volgorde. Daarom sorteert het voorbeeld ze. Dan is het resultaat altijd hetzelfde.

Je kunt ook een naam in het pakket zoeken. Gebruik de naam als sleutel. Je krijgt dezelfde waarde als met de volledige naam `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## De exports van een module weergeven

De geëxporteerde namen staan echt in het `EXPORT`-pakket van hierboven. Je kunt ze dus weergeven. Kijk gewoon één niveau dieper. Exports zonder tag gaan naar de groep `DEFAULT`. Over tags lees je meer in [Exporttags](/nl/advanced/modules-basics/export-tags). De `.keys` van `DEFAULT` zijn de geëxporteerde routines:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Elke sleutel is een geëxporteerde naam met zijn sigil. Hier is er maar één sleutel: de subroutine `&hello`. De sigil `&` laat zien dat het een routine is. Zo kun je zien wat een module aan zijn gebruikers geeft. Je hoeft de broncode niet te lezen. Vraag gewoon aan het pakket `EXPORT::DEFAULT` wat erin zit.

Zo in een pakket kijken is handig. Je kunt zien wat een module heeft. Je kunt ook bij de namen komen terwijl het programma draait. Dan hoef je niet elke naam in de code te schrijven.

{% include nav.html %}
