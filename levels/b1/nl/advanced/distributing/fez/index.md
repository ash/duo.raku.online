---
title: Publiceren met fez
translations_gpt:
---

{% include menu.html %}

Het vorige onderwerp noemde `fez`, een tool die distributies naar het Raku-ecosysteem uploadt. Je hoeft `fez` niet te gebruiken, want er zijn andere manieren om te publiceren. Maar het is de meest gebruikelijke keuze. Het doet ook meer dan uploaden. Het kan een nieuwe distributie voor je opzetten en je auteursaccount beheren. Installeer het met `zef`:

```
zef install fez
```

## Een distributie starten

Je kunt een `META6.json` en de mappen `lib/` en `t/` met de hand maken. Of je laat `fez` ze voor je klaarzetten:

```
fez init My::Greeting
```

`fez init` maakt een nieuwe distributie waarop je verder kunt bouwen. Dit is een projectmap met een kant-en-klare `META6.json` en de standaardindeling. Zo kun je meteen code schrijven onder `lib/` en tests onder `t/`. Je hoeft het metadatabestand niet zelf klaar te maken.

## Registreren en inloggen

Om te publiceren heb je een ecosysteemaccount nodig. Je maakt het één keer aan met `fez register`, dat om een gebruikersnaam, e-mailadres en wachtwoord vraagt. Daarna log je in met `fez login`. Het bewaart je sleutel, zodat latere commando's weten wie je bent:

```
fez register
fez login
```

Je gebruikersnaam is belangrijk. Het `META6.json` van een distributie moet een veld `auth` hebben met de waarde `zef:<gebruikersnaam>`. Zo weet het ecosysteem dat de upload echt van jou komt.

## Uploaden

Als je een account hebt en de distributie klaar is, voer je `fez upload` uit. Het verpakt de huidige map en verstuurt die:

```
fez upload
```

Daarna kan iedereen ze op naam installeren met `zef install My::Greeting`. Je kunt elke versie maar één keer uploaden. Vergeet dus niet de `version` in `META6.json` te verhogen voordat je een update publiceert.

## Andere nuttige commando's

Hier zijn nog een paar `fez`-commando's die je nodig zult hebben:

* `fez review` — controleer een distributie op mogelijke problemen voordat je ze uploadt;
* `fez list` — toon de distributies die je al hebt gepubliceerd;
* `fez refresh` — bouw `META6.json` opnieuw op uit de bestanden die nu op de schijf staan.

> Voor al deze commando's moet `fez` geïnstalleerd zijn, en je hebt een netwerkverbinding nodig. Alles na `init` heeft ook een ecosysteemaccount nodig.

{% include nav.html %}
