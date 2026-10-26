---
title: 'Oplossing: Een schrijfbare parameter'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `is rw` bindt de parameter `$n` aan de variabele `$score` van de aanroeper. Zo verandert `$n *= 2` binnen `double` de variabele `$score` zelf, en daarom drukt het programma `42` af.

1. Zonder `is rw` zou de parameter alleen-lezen zijn, en zou `$n *= 2` een fout geven. Met `is copy` zou `double` in plaats daarvan een eigen kopie krijgen om te veranderen. Dan zou `$score` gewoon `21` blijven.

{% include nav.html %}
