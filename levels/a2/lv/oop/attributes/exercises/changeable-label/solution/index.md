---
title: 'Risinājums: Maināma etiķete'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Atrodiet programmu failā [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Izvade

```
draft (revised)
```

## Komentāri

1. Iezīme `is rw` maina piekļuves metodi. Tagad tā atgriež konteineru, kurā var rakstīt. Tāpēc piekļuves metode var stāvēt piešķiršanas kreisajā pusē.

1. Jūs varat rakstīt konteinerā. Tāpēc ar to darbojas arī operators `~=`. Šis operators savieno virknes un piešķir vienā solī. `$l.text ~= ' (revised)'` nolasa pašreizējo tekstu. Tas pievieno jauno daļu beigās. Pēc tam tas saglabā rezultātu atpakaļ. Tas viss notiek caur to pašu piekļuves metodi.

{% include nav.html %}
