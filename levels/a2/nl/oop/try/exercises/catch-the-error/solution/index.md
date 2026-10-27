---
title: 'Oplossing: Vang de fout'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
my $ok = try { 6 * 7 };
say $ok;

my $bad = try { die 'broken' };
say $bad.defined;
say $!.message;
```

🦋 Je kunt de broncode vinden in het bestand [catch-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/try/catch-the-error.raku).

## Uitvoer

```
42
False
broken
```

## Opmerkingen

1. Hier draait het blok zonder fout. Dan geeft `try` gewoon de waarde van het blok. Dus bevat `$ok` de waarde `42`.

1. De `die` in het tweede blok werpt een exceptie. Dus geeft dit blok een ongedefinieerde waarde. `$bad.defined` is `False`.

1. Raku bewaart de gevangen exceptie in de bijzondere variabele `$!`. `$!.message` geeft de tekst van de exceptie terug, `broken`.

{% include nav.html %}
