---
title: 'Soluzione: Un robot che balla'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. A differenza degli esempi precedenti, `Dancing` non sostituisce un metodo esistente. Invece porta un metodo `dance` completamente nuovo, di cui `Robot` non sa niente.

1. `Robot.new but Dancing` mescola il ruolo in un singolo oggetto a runtime. Quindi `$dancing` sa fare sia `speak` (dalla classe) sia `dance` (dal ruolo). Il semplice `$plain` ha imparato soltanto `speak`.

1. La capacità in più appartiene a quel singolo oggetto, non alla classe `Robot`. Una chiamata a `$plain.dance` sarebbe un errore, perché `$plain` non ha mai ricevuto il ruolo.

{% include nav.html %}
