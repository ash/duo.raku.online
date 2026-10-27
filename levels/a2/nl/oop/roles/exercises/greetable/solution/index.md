---
title: 'Oplossing: Een doos met een maat'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

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

🦋 Je kunt de broncode vinden in het bestand [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Uitvoer

```
size is 10
True
```

## Opmerkingen

1. De rol geeft de methode `describe`. De klasse stelt de rol samen met `does Sized`. Dat betekent dat ze de rol in zich opneemt. De methode heeft `self.size` nodig. De klasse `Box` geeft de `size`. De rol en de klasse passen in elkaar. Samen maken ze het volledige object.

1. `Box` doet de rol. Dus is de smartmatch `$b ~~ Sized` `True`. Een object heeft elke rol die zijn klasse samenstelt. Raku weet dat. Dit is handig. Je kunt controleren wat een object kan. Doe dat voordat je een methode van een rol aanroept.

{% include nav.html %}
