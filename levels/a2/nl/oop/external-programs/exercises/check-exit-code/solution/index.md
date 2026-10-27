---
title: 'Oplossing: Controleer de exitcode'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `run` geeft een `Proc` terug. We bewaren hem in `$proc` en lezen hem daarna. Dat is hier belangrijk. Een commando kan mislukken. Als niemand zijn `Proc` bewaart, werpt Raku een exceptie. Een exceptie is een fout die het programma stopt. Maar hier kijken we naar het resultaat. Dat telt als het afhandelen van de mislukking.

1. `.exitcode` geeft het getal dat het commando teruggaf. Hier is dat `4`. Je kunt de `Proc` ook als boolean testen. Een boolean is waar of onwaar. Dat beantwoordt een eenvoudigere vraag: heeft het commando gewerkt? De `Proc` is alleen waar als de exitcode `0` is. Hier is hij onwaar. Dus drukt het programma `failure` af.

{% include nav.html %}
