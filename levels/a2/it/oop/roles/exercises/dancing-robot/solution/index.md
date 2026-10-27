---
title: 'Soluzione: Un robot che balla'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

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

🦋 Trova il programma nel file [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Output

```
beep
beep
spinning around
```

## Commenti

1. Qui non è come negli esempi precedenti. `Dancing` non sostituisce un metodo che c'è già. Porta un metodo completamente nuovo, `dance`. La classe `Robot` non sa niente di questo metodo.

1. `Robot.new but Dancing` mescola il ruolo in un solo oggetto. Questo succede mentre il programma gira. Quindi `$dancing` sa fare due cose. Sa fare `speak`, dalla classe. Sa fare anche `dance`, dal ruolo. Il semplice `$plain` conosce solo `speak`.

1. La nuova capacità appartiene solo a questo oggetto. Non appartiene alla classe `Robot`. Quindi `$plain.dance` dà un errore. `$plain` non ha mai ricevuto il ruolo.

{% include nav.html %}
