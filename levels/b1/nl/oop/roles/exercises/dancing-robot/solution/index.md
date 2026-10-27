---
title: 'Oplossing: Een dansende robot'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
role Dancing {
    method dance {
        'spinning around';
    }
}

class Robot {
    method speak {
        'beep';
    }
}

my $plain   = Robot.new;
my $dancing = Robot.new but Dancing;

say $plain.speak;
say $dancing.speak;
say $dancing.dance;
```

🦋 Je kunt de broncode vinden in het bestand [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Uitvoer

```
beep
beep
spinning around
```

## Opmerkingen

1. Anders dan in de eerdere voorbeelden vervangt `Dancing` geen bestaande methode. In plaats daarvan brengt hij een helemaal nieuwe methode `dance` mee, waar `Robot` niets van weet.

1. `Robot.new but Dancing` mengt de rol tijdens het draaien in één enkel object. Dus kan `$dancing` zowel `speak` (uit de klasse) als `dance` (uit de rol). De gewone `$plain` heeft nooit meer dan `speak` geleerd.

1. De extra vaardigheid hoort bij dat ene object, niet bij de klasse `Robot`. Een aanroep van `$plain.dance` zou een fout geven, omdat `$plain` de rol nooit gekregen heeft.

{% include nav.html %}
