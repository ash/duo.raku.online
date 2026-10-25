---
title: Allomorfen
---

{% include menu.html %}

Kijk naar dit programma. Voer het nog niet uit. Kun je zeggen welke invoerwaarden het breken? En op welke regel?

```raku
my $input = prompt 'Enter something: ';
my Int $i = $input;
my Str $s = $input;

say $i;
say $s;
```

Het programma maakt drie scalaire variabelen. Twee daarvan, `$i` en `$s`, zijn getypeerde variabelen. Dus kan `$i` alleen gehele getallen bevatten. En `$s` kan alleen strings bevatten.

`prompt` geeft een waarde terug. Het type ervan hangt af van de tekens die we typen. Soms kan de invoerstring een geheel getal zijn. Dan heeft het resultaat het type `IntStr`. Dit type is _zowel_ `Int` als `Str`. Dus kun je het aan een `Int`-variabele toewijzen. Je kunt het ook aan een `Str`-variabele toewijzen. Je voert bijvoorbeeld `1234` in. Dan breekt het programma niet.

```
$ raku allomorphs.raku
Enter something: 1234
1234
1234
```

Het type `IntStr` is een voorbeeld van een _allomorf_. Een allomorf is een gegevenstype dat uit twee andere typen bestaat. Hier zijn nog een paar voorbeelden.

Voer nu een string in die geen geheel getal kan zijn. Het programma breekt. Dat gebeurt als we `$input` aan `$i` toewijzen:

```
$ raku allomorphs.raku
Enter something: Hello, World!
Type check failed in assignment to $i; expected Int but got Str ("Hello, World!")
  in block <unit> at allomorphs.raku line 2
```

Soms is de invoerstring een getal, maar geen geheel getal. Let op: ook dan krijg je een foutmelding. Een container voor gehele getallen kan geen drijvende-kommagetal bevatten. Hij kan ook geen rationaal getal bevatten. Dus krijg je een uitzondering:

```
$ raku allomorphs.raku
Enter something: 3.14
Type check failed in assignment to $i; expected Int but got RatStr (RatStr.new(3.14, "3....)
  in block <unit> at allomorphs.raku line 2
```

De tweede toewijzing, `$s = $input`, breekt nooit. Een string kan elke invoer bevatten.

🦋 Je kunt de broncode van dit programma vinden in het bestand [allomorphs.raku](https://github.com/ash/raku-course/blob/master/essentials/typed-variables/allomorphs/allomorphs.raku).

{% include nav.html %}
