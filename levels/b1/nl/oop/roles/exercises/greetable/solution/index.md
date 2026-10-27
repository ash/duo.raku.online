---
title: 'Oplossing: Een doos met een maat'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De rol levert de methode `describe`, en de klasse stelt hem samen met `does Sized`. De methode heeft `self.size` nodig, en die levert de klasse `Box`. Dus passen de rol en de klasse in elkaar en vormen ze het volledige object.

1. `Box` doet de rol, dus is de smartmatch `$b ~~ Sized` `True`. Een object telt als een object met elke rol die zijn klasse samenstelt. Dat helpt je om te controleren wat een object kan, voordat je een methode van een rol aanroept.

{% include nav.html %}
