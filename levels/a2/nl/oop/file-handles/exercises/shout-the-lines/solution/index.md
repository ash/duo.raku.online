---
title: 'Oplossing: Nummer de regels'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 Je kunt de broncode vinden in het bestand [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Uitvoer

```
1: apple
2: banana
3: cherry
```

## Opmerkingen

1. `spurt` schrijft de drie woorden naar het bestand. Tussen de woorden staan newlines.

1. `.IO.lines` geeft de regels een voor een. De regels hebben geen newline aan het eind. We houden een teller `$n` bij. Elke ronde van de lus telt er 1 bij op. Zo drukken we elke regel af met haar plaats in het bestand.

{% include nav.html %}
