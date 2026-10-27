---
title: 'Oplossing: Opzoeken of niet gevonden'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
sub lookup($key) {
    fail 'no such key' if $key ne 'a';
    return 100;
}

my $r = lookup('z');
if $r.defined {
    say $r;
}
else {
    say 'not found';
    say "reason: {$r.exception.message}";
}
```

🦋 Je kunt de broncode vinden in het bestand [lookup.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/lookup.raku).

## Uitvoer

```
not found
reason: no such key
```

## Opmerkingen

1. `lookup('z')` roept `fail` aan. Dus geeft het een `Failure` terug. Een `Failure` is een ongedefinieerde waarde met een fout erin.

1. Het resultaat is ongedefinieerd. Dus drukt het programma `not found` af. Het probeert de mislukte waarde niet te gebruiken.

1. Een `Failure` bevat nog steeds een exceptie. De exceptie vertelt wat er misging. `$r.exception` haalt deze exceptie op. Dat markeert de mislukking ook als afgehandeld. Dus geeft ze later geen fout. Dan leest `.message` de tekst van `fail`. Deze tekst is `no such key`.

{% include nav.html %}
