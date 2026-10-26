---
title: 'Solution: Even, oneven of nul'
translations_gpt: true
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Je kunt de broncode vinden in het bestand [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Uitvoer

```
even
```

## Opmerkingen

1. `when 0` matcht maar één waarde: nul. Hij komt eerst. Nul is ook even, maar we willen het apart laten zien.

1. `when $_ %% 2` is een voorwaarde. Hier is `$_` het topic van `given`. De `%%`-operator kijkt of het topic zonder rest deelbaar is door twee. De waarde `12` is niet nul. Maar het is wel deelbaar door twee. Daarom drukt het programma `even` af.

1. `default` is voor alle andere getallen. Ze zijn niet nul en niet even. Het zijn dus de oneven getallen.

{% include nav.html %}
