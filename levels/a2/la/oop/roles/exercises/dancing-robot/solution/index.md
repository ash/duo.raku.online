---
title: 'Solutio: Robotum saltans'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

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

🦋 Inveni codicem fontem in archivo [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Exitus

```
beep
beep
spinning around
```

## Commentarii

1. Hoc non est sicut exempla superiora. `Dancing` methodum quae iam adest non substituit. Methodum omnino novam adfert, `dance`. Classis `Robot` nihil de hac methodo scit.

1. `Robot.new but Dancing` partem in unum solum obiectum miscet. Hoc fit dum programma currit. Itaque `$dancing` duas res facere potest. Potest `speak`, ex classe. Etiam potest `dance`, ex parte. Simplex `$plain` solum `speak` scit.

1. Nova facultas solum ad hoc unum obiectum pertinet. Ad classem `Robot` non pertinet. Itaque `$plain.dance` errorem dat. `$plain` partem numquam accepit.

{% include nav.html %}
