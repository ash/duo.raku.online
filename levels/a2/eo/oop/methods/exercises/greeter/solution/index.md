---
title: 'Solvo: Inversigita vorto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class Word {
    has $.text;

    method reversed {
        $.text.flip;
    }
}

say Word.new(text => 'Raku').reversed;
```

🦋 Vi povas trovi la fontkodon en la dosiero [greeter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/greeter.raku).

## Eligo

```
ukaR
```

## Komentoj

1. La metodo `reversed` prenas la `text` de la objekto. Por tio ĝi uzas la atingilon `$.text`. Poste ĝi vokas la enkonstruitan metodon `flip` sur ĝi. `flip` redonas la ĉenon inverse.

1. La programo vokas la metodon rekte sur la nova objekto `Word`. La metodo konservas nenion. `reversed` nur faras novan valoron el la atributo kaj redonas ĝin.

1. Ene de la klaso, vi ankaŭ povas legi la variablon rekte. Por tio vi ne bezonas la atingilon:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
