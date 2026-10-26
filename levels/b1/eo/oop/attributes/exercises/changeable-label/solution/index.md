---
title: 'Solvo: Ŝanĝebla etikedo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La trajto `is rw` igas la atingilon redoni skribeblan ujon. Do la atingilo povas esti ĉe la maldekstra flanko de atribuo.

1. Ĉar la ujo estas skribebla, ankaŭ la kunmetita operatoro `~=` funkcias sur ĝi. `$l.text ~= ' (revised)'` legas la nunan tekston, aldonas la novan finon kaj konservas la rezulton reen. Ĉio ĉi okazas tra la sama atingilo.

{% include nav.html %}
