---
title: 'Oplossing: Een wijzigbaar label'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Je kunt de broncode vinden in het bestand [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Uitvoer

```
draft (revised)
```

## Opmerkingen

1. Door de trait `is rw` geeft de accessor een schrijfbare container terug. Dus kan de accessor aan de linkerkant van een toekenning staan.

1. Omdat de container schrijfbaar is, werkt de samengestelde operator `~=` er ook op. `$l.text ~= ' (revised)'` leest de huidige tekst, voegt het nieuwe einde toe en slaat het resultaat weer op. Dit alles gebeurt via dezelfde accessor.

{% include nav.html %}
