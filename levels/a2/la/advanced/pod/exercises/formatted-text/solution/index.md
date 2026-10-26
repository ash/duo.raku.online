---
title: 'Solutio: Textum formatum'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Fontem codicis in fasciculo [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku) invenire potes.

## Exitus

Exsequere eum cum `raku --doc`:

```
Greeting

Hello, world!
```

## Commentarii

1. `B<world>` verbum crassum facit. In textu simplici ut textus ordinarius apparet. Sed formata ditiora id crasse ostendunt.

1. `raku --doc` Pod ut textum ostendit. Nullum codicem programmatis exsequitur.

1. Visne crassum vere *videre*? Tum Pod in formatum cum ornamentis verte. Primum modulum formatoris installa, exempli gratia `Pod::To::HTML`. Ad hoc `zef install Pod::To::HTML` adhibe. Deinde `raku --doc=HTML formatted-text.raku` exsequere. Nunc verbum intra elementum HTML `<b>` est. Textus simplex ex `--doc` alius est. Crassum in fasciculo vel tubo ostendere non potest.

{% include nav.html %}
