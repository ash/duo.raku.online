---
title: 'Solvo: Formatita teksto'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Vi povas trovi la fontkodon en la dosiero [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Eligo

Rulu ĝin per `raku --doc`:

```
Greeting

Hello, world!
```

## Komentoj

1. `B<world>` faras la vorton grasa. En simpla teksto ĝi aspektas kiel normala teksto. Sed pli riĉaj formatoj montras ĝin grase.

1. `raku --doc` montras la Pod kiel tekston. Ĝi ne rulas iun ajn kodon de la programo.

1. Ĉu vi volas vere *vidi* la grasan tekston? Tiam ŝanĝu la Pod en formaton kun stiloj. Unue, instalu formatilan modulon, ekzemple `Pod::To::HTML`. Uzu `zef install Pod::To::HTML` por tio. Poste rulu `raku --doc=HTML formatted-text.raku`. Nun la vorto estas en HTML-elemento `<b>`. Simpla teksto el `--doc` estas alia. Ĝi ne povas montri grasan tekston en dosiero aŭ dukto.

{% include nav.html %}
