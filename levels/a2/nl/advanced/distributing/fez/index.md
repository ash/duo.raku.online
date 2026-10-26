---
title: Publiceren met fez
translations_gpt:
---

{% include menu.html %}

Het vorige onderwerp liet `fez` zien. Met `fez` upload je een distributie naar het Raku-ecosysteem. Je hoeft `fez` niet te gebruiken. Er zijn ook andere manieren om te publiceren. Maar de meeste mensen gebruiken `fez`. En het doet meer dan uploaden. Het kan ook een nieuwe distributie voor je maken. Het kan ook voor je auteursaccount zorgen. Installeer `fez` met `zef`:

```
zef install fez
```

## Een nieuwe distributie maken

Je kunt de `META6.json` en de mappen `lib/` en `t/` zelf maken. Maar `fez` kan ze voor je maken:

```
fez init My::Greeting
```

`fez init` maakt het begin van een nieuwe distributie. Dit is een projectmap. Die heeft al een `META6.json` en de standaardindeling. Zo kun je meteen beginnen met schrijven. De code komt onder `lib/` en de tests komen onder `t/`. Je hoeft de `META6.json` niet zelf klaar te maken.

## Registreren en inloggen

Om te publiceren heb je een account in het ecosysteem nodig. Je maakt het account maar één keer, met `fez register`. Het vraagt om een gebruikersnaam, een e-mailadres en een wachtwoord. Dan log je in met `fez login`. Het bewaart je sleutel. Met deze sleutel weten de volgende commando's wie je bent:

```
fez register
fez login
```

Je gebruikersnaam is belangrijk. Het `META6.json` van een distributie moet een veld `auth` hebben. De waarde is `zef:<gebruikersnaam>`. Zo weet het ecosysteem dat de upload echt van jou is.

## Uploaden

Je hebt een account, en de distributie is klaar. Nu pakt `fez upload` de huidige map in en verstuurt die:

```
fez upload
```

Daarna kan iedereen ze op naam installeren met `zef install My::Greeting`. Je kunt elke versie maar één keer uploaden. Maak dus vóór een update de `version` in `META6.json` hoger.

## Meer nuttige commando's

Je gebruikt ook deze `fez`-commando's:

* `fez review` — zoek naar mogelijke problemen in een distributie, vóór de upload;
* `fez list` — toon de distributies die je al hebt gepubliceerd;
* `fez refresh` — maak `META6.json` opnieuw uit de bestanden die nu op de schijf staan.

> Al deze commando's hebben een geïnstalleerde `fez` en het netwerk nodig. Alles na `init` heeft ook een ecosysteemaccount nodig.

{% include nav.html %}
