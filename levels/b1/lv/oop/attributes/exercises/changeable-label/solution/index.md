---
title: 'Risinājums: Maināma etiķete'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Iezīme `is rw` liek piekļuves metodei atgriezt rakstāmu konteineru. Tāpēc piekļuves metode var būt piešķiršanas kreisajā pusē.

1. Tā kā konteiners ir rakstāms, ar to darbojas arī saliktais operators `~=`. `$l.text ~= ' (revised)'` nolasa pašreizējo tekstu, pievieno jauno beigu daļu un ieraksta rezultātu atpakaļ. Tas viss notiek caur to pašu piekļuves metodi.

{% include nav.html %}
