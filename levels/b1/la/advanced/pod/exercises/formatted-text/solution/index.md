---
title: 'Solutio: Textum formatum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Fontem codicis in fasciculo [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku) invenire potes.

## Exitus

Cum `raku --doc` exsequere:

```
Greeting

Hello, world!
```

## Commentarii

1. `B<world>` verbum crassum notat. Cum ut textus simplex redditur, ut textus ordinarius apparet. Sed formata ditiora id crasse ostendunt.

1. `raku --doc` Pod reddit, sed nullum codicem programmatis exsequitur.

1. Ut textum crassum vere *videas*, Pod in formatum redde quod ornamenta habet. Formatorem installa, ut `Pod::To::HTML`, per `zef install Pod::To::HTML`. Deinde `raku --doc=HTML formatted-text.raku` exsequere. Nunc verbum intra elementum HTML `<b>` exit. Exitus textualis simplex ex `--doc` alius est. Crassum ostendere non potest cum in fasciculum vel tubum it.

{% include nav.html %}
