---
title: Allomorfen
---

{% include menu.html %}

Kijk naar het volgende programma. Probeer te raden, voordat je het uitvoert. Welke invoerwaarden zouden het breken, en op welke regel?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Het programma maakt hier drie scalaire variabelen. Twee daarvan, `$i` en `$s`, zijn getypeerde variabelen. Dat betekent dat `$i` alleen gehele getallen kan opslaan, en `$s` alleen strings.

Het type dat `prompt` teruggeeft, hangt af van de tekens die we hebben getypt. Als de invoerstring een geheel getal kan zijn, heeft het resultaat het type `IntStr`. Dit type is _zowel_ `Int` als `Str`. Dus kun je het toewijzen aan een `Int`-variabele of aan een `Str`-variabele. Als je bijvoorbeeld `1234` invoert, breekt het programma niet.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Het type `IntStr` is een voorbeeld van een zogenaamde _allomorf_. Dat is een gegevenstype dat twee andere typen combineert. Hier zijn nog een paar voorbeelden.

Als je een string invoert die geen geheel getal kan zijn, breekt het programma. Dat gebeurt op het moment dat we `$input` aan `$i` toewijzen:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Let op dat je ook een foutmelding krijgt voor een getal dat geen geheel getal is. Een container voor gehele getallen kan geen drijvende-kommagetal of rationaal getal opslaan. Daarom geeft Raku een uitzondering:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

De tweede toewijzing, `$s = $input`, zal nooit breken, omdat een string elke invoer kan accepteren.

🦋 Je kunt de broncode van dit programma vinden in het bestand [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
