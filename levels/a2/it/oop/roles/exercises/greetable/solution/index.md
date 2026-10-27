---
title: 'Soluzione: Una scatola con una misura'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Il ruolo dà il metodo `describe`. La classe compone il ruolo con `does Sized`. Questo vuol dire che prende il ruolo dentro di sé. Il metodo ha bisogno di `self.size`. La classe `Box` dà il `size`. Il ruolo e la classe si incastrano. Insieme formano l'oggetto completo.

1. `Box` assume il ruolo. Quindi lo smartmatch `$b ~~ Sized` è `True`. Un oggetto ha ogni ruolo che la sua classe compone. Raku lo sa. Questo è utile. Puoi controllare che cosa sa fare un oggetto. Fallo prima di chiamare un metodo di un ruolo.

{% include nav.html %}
