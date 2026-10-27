---
title: 'Oplossing: Opzoeken of niet gevonden'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `lookup('z')` roept `fail` aan en geeft dus een ongedefinieerde `Failure` terug.

1. Het resultaat is ongedefinieerd, dus drukt het programma `not found` af. Het probeert de mislukte waarde niet te gebruiken.

1. Een `Failure` draagt nog steeds de exceptie mee die beschrijft wat er misging. Je krijgt haar met `$r.exception`. Dat markeert de mislukking ook als afgehandeld, dus werpt ze later niet alsnog. Daarna leest `.message` de tekst die aan `fail` is meegegeven, `no such key`.

{% include nav.html %}
