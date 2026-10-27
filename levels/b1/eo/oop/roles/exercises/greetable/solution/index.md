---
title: 'Solvo: Skatolo kun grandeco'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Eligo

```
size is 10
True
```

## Komentoj

1. La rolo provizas la metodon `describe`, kaj la klaso kunmetas ĝin per `does Sized`. La metodo bezonas `self.size`, kiun la klaso `Box` provizas. Do la rolo kaj la klaso kongruas inter si kaj formas la kompletan objekton.

1. `Box` faras la rolon, do la saĝa kongruado `$b ~~ Sized` estas `True`. Objekto validas kiel havanta ĉiun rolon, kiun ĝia klaso kunmetas. Tio helpas vin kontroli, kion objekto povas fari, antaŭ ol vi vokas metodon de rolo.

{% include nav.html %}
