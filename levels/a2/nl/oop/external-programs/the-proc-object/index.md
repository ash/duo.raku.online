---
title: Het Proc-object
translations_gpt:
---

{% include menu.html %}

Elke aanroep van `run` of `shell` geeft een `Proc`-object terug. Het is een klein verslag over het programma. Het vertelt welk programma draaide en hoe het stopte. In de eerdere onderwerpen gebruikten we zijn handle `.out` om uitvoer te lezen. Maar een `Proc` bevat meer dan dat.

Het nuttigste deel is de **exitcode**. Dat is een klein geheel getal. Een programma geeft het terug aan wie het gestart heeft. Met dit getal zegt het programma of het gewerkt heeft. `0` betekent succes. Elk ander getal betekent een mislukking. Het programma kiest deze foutcode zelf. `.exitcode` geeft je het getal:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Vaak stel je alleen een ja/nee-vraag. Heeft het gewerkt? Daarvoor is een `Proc` waar als de exitcode `0` is. Anders is hij onwaar. Dus kun je de `Proc` direct testen:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

Een `Proc` onthoudt ook het commando dat hij gestart heeft. Je vindt het in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Let op één ding. Soms mislukt een commando. Wat als je de `Proc` die het teruggeeft gewoon **negeert**? Dan werpt Raku een exceptie. Een exceptie is een fout die het programma stopt. Raku laat de mislukking niet verborgen blijven:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Een andere exitcode dan `0` betekent meestal een probleem. Een mislukkende `Proc` werpt dus een exceptie als je hem weggooit. Dat gebeurt als de `Proc` buiten bereik raakt. Dan kan geen code hem meer bereiken. Het gaat hier niet om het controleren van de exitcode. Het gaat om het *weggooien* van het resultaat. Zet de `Proc` gewoon in een variabele. Dat is genoeg om de exceptie te vermijden. Je hoeft niet eens meer naar de variabele te kijken.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

*Verwacht* je dus dat een commando kan mislukken? Bewaar dan zijn `Proc`. Als je wilt weten wat er gebeurd is, kijk dan naar `.exitcode`. Of test de `Proc` als boolean.

{% include nav.html %}
