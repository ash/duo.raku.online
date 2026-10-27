---
title: 'Solvo: Skatolo kun grandeco'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La rolo donas la metodon `describe`. La klaso kunmetas la rolon per `does Sized`. Tio signifas, ke ĝi prenas la rolon en sin. La metodo bezonas `self.size`. La klaso `Box` donas la `size`. La rolo kaj la klaso kongruas inter si. Kune ili faras la kompletan objekton.

1. `Box` faras la rolon. Do la saĝa kongruado `$b ~~ Sized` estas `True`. Objekto havas ĉiun rolon, kiun ĝia klaso kunmetas. Raku scias tion. Tio estas utila. Vi povas kontroli, kion objekto povas fari. Faru tion, antaŭ ol vi vokas metodon de rolo.

{% include nav.html %}
