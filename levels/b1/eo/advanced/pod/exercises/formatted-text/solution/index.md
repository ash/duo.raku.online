---
title: 'Solvo: Formatita teksto'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Vi povas trovi la fontkodon en la dosiero [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Eligo

Rulita per `raku --doc`:

```
Greeting

Hello, world!
```

## Komentoj

1. `B<world>` markas la vorton kiel grasan. Kiam oni bildigas ĝin kiel simplan tekston, ĝi aspektas kiel ordinara teksto. Sed pli riĉaj formatoj montras ĝin grase.

1. `raku --doc` bildigas la Pod, sed ne rulas iun ajn programan kodon.

1. Por vere *vidi* la grasan tekston, bildigu la Pod al formato, kiu havas stilojn. Instalu formatilon, ekzemple `Pod::To::HTML`, per `zef install Pod::To::HTML`. Poste rulu `raku --doc=HTML formatted-text.raku`. Nun la vorto eliras ene de HTML-elemento `<b>`. Simpla teksta eligo de `--doc` estas alia. Ĝi ne povas montri grasan tekston, kiam ĝi iras al dosiero aŭ dukto.

{% include nav.html %}
