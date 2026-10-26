---
title: 'Oplossing: Een schrijfbare parameter'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Je kunt de broncode vinden in het bestand [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Uitvoer

```
42
```

## Opmerkingen

1. `is rw` verbindt de parameter `$n` met de variabele `$score` van de aanroeper. Zo verandert `$n *= 2` binnen `double` de variabele `$score` zelf. Daarom drukt het programma `42` af.

1. Zonder `is rw` is de parameter alleen-lezen. Dan geeft `$n *= 2` een fout. Met `is copy` krijgt `double` een eigen kopie van de waarde. Die kopie kan hij veranderen. Maar `$score` blijft `21`.

{% include nav.html %}
