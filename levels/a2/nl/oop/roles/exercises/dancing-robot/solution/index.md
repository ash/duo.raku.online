---
title: 'Oplossing: Een dansende robot'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. Dit is anders dan de eerdere voorbeelden. `Dancing` vervangt geen methode die er al is. Hij brengt een helemaal nieuwe methode mee, `dance`. De klasse `Robot` weet niets van deze methode.

1. `Robot.new but Dancing` mengt de rol in één enkel object. Dat gebeurt terwijl het programma draait. Dus kan `$dancing` twee dingen. Hij kan `speak`, uit de klasse. Hij kan ook `dance`, uit de rol. De gewone `$plain` kent alleen `speak`.

1. De nieuwe vaardigheid hoort alleen bij dit ene object. Ze hoort niet bij de klasse `Robot`. Dus geeft `$plain.dance` een fout. `$plain` heeft de rol nooit gekregen.

{% include nav.html %}
