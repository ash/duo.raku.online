---
title: 'Oplossing: Een wijzigbaar label'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. De trait `is rw` verandert de accessor. Nu geeft hij een container terug waarin je kunt schrijven. Dus kan de accessor links van een toekenning staan.

1. Je kunt in de container schrijven. Dus werkt de operator `~=` er ook mee. Deze operator plakt strings aan elkaar en doet een toekenning in één stap. `$l.text ~= ' (revised)'` leest de huidige tekst. Hij zet het nieuwe deel aan het einde. Dan slaat hij het resultaat weer op. Dit alles gaat via dezelfde accessor.

{% include nav.html %}
