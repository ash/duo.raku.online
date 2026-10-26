---
title: 'Solvo: Ŝanĝebla etikedo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Vi povas trovi la fontkodon en la dosiero [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Eligo

```
draft (revised)
```

## Komentoj

1. La trajto `is rw` ŝanĝas la atingilon. Nun ĝi redonas ujon, en kiun vi povas skribi. Do la atingilo povas stari maldekstre de atribuo.

1. Vi povas skribi en la ujon. Do ankaŭ la operatoro `~=` funkcias kun ĝi. Ĉi tiu operatoro kunigas ĉenojn kaj atribuas en unu paŝo. `$l.text ~= ' (revised)'` legas la nunan tekston. Ĝi aldonas la novan parton al la fino. Poste ĝi konservas la rezulton reen. Ĉio ĉi iras tra la sama atingilo.

{% include nav.html %}
