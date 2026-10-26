---
title: 'Solvo: Inversigita vorto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La metodo `reversed` prenas la propran `text` de la objekto tra ĝia atingilo, `$.text`. Poste ĝi vokas la enkonstruitan `flip` sur ĝi, kiu inversigas la ĉenon.

1. La metodo estas vokata rekte sur la nova objekto `Word`. Nenio estas konservata reen en la objekton. `reversed` nur kalkulas novan valoron el la atributo kaj redonas ĝin.

1. Notu, ke ene de la klaso vi ne bezonas la atingilon. Vi povas legi la variablon rekte:

```raku
    method reversed {
        $!text.flip;
    }
```

{% include nav.html %}
