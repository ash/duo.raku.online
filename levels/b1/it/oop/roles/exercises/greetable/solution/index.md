---
title: 'Soluzione: Una scatola con una misura'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
role Sized {
    method describe {
        'size is ' ~ self.size;
    }
}

class Box does Sized {
    has $.size;
}

my $b = Box.new(size => 10);
say $b.describe;
say $b ~~ Sized;
```

🦋 Trova il programma nel file [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Output

```
size is 10
True
```

## Commenti

1. Il ruolo fornisce il metodo `describe`, e la classe lo compone con `does Sized`. Il metodo ha bisogno di `self.size`, che la classe `Box` fornisce. Così il ruolo e la classe si incastrano e formano l'oggetto completo.

1. `Box` assume il ruolo, quindi lo smartmatch `$b ~~ Sized` è `True`. Per Raku, un oggetto ha ogni ruolo che la sua classe compone. Questo ti aiuta a controllare che cosa sa fare un oggetto prima di chiamare un metodo del ruolo.

{% include nav.html %}
