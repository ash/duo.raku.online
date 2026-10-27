---
title: 'Oplossing: Controleer de exitcode'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 Je kunt de broncode vinden in het bestand [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Uitvoer

```
4
failure
```

## Opmerkingen

1. `run` geeft een `Proc` terug. Hier is het belangrijk om hem in `$proc` te bewaren en daarna te lezen. Als je de `Proc` van een mislukkend commando weggooit, werpt hij een exceptie. Maar naar het resultaat kijken telt als het afhandelen ervan.

1. `.exitcode` is het getal dat het commando teruggaf: `4`. Als je de `Proc` als boolean test, beantwoord je een eenvoudigere vraag: heeft het gewerkt? Hij is alleen waar als de exitcode `0` is. Hier is hij onwaar, dus drukt het programma `failure` af.

{% include nav.html %}
