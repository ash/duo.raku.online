---
title: Het Proc-object
translations_gpt:
---

{% include menu.html %}

Elke aanroep van `run` of `shell` geeft een `Proc`-object terug. Het is een klein verslag dat beschrijft welk programma gedraaid heeft en hoe het geëindigd is. De eerdere onderwerpen gebruikten zijn handle `.out` om uitvoer te lezen. Maar een `Proc` bevat meer dan dat.

Het nuttigste deel is de **exitcode**. Met een klein geheel getal vertelt een programma aan wie het gestart heeft of het geslaagd is. `0` betekent succes. Elk ander getal is een foutcode die het programma zelf kiest. `.exitcode` geeft je dat getal:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Meestal stel je alleen een ja/nee-vraag: heeft het gewerkt? Daarvoor is een `Proc` gewoon waar als de exitcode `0` is. Anders is hij onwaar. Dus kun je hem direct testen:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

Een `Proc` onthoudt ook welk commando hij gestart heeft, in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Er is één ding om op te letten. Als een commando mislukt en je de teruggegeven `Proc` gewoon **negeert**, werpt Raku een exceptie. Raku laat de mislukking niet ongemerkt voorbijgaan:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Een exitcode die niet nul is, betekent meestal dat er iets misging. Dus als je een mislukkende `Proc` weggooit, werpt hij een exceptie. Dat gebeurt als hij buiten bereik raakt. De oorzaak is het *weggooien* van het resultaat, niet het negeren van de exitcode. De `Proc` gewoon in een variabele bewaren is al genoeg om de exceptie te vermijden. Je hoeft er niet eens meer naar te kijken.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

Dus als je *verwacht* dat een commando kan mislukken, bewaar dan zijn `Proc`. Kijk daarna naar `.exitcode`, of test hem als boolean. Doe dat steeds wanneer je wilt weten wat er gebeurd is.

{% include nav.html %}
