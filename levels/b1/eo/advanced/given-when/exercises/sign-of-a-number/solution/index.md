---
title: 'Solvo: Para, nepara aŭ nulo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Eligo

```
even
```

## Komentoj

1. `when 0` kongruas nur kun la valoro nulo. Ĝi venas unue, ĉar nulo ankaŭ estas para, kaj ni volas raporti ĝin aparte.

1. `when $_ %% 2` estas kondiĉo, kie `$_` estas la temo, kiun `given` starigas. La operatoro `%%` kontrolas, ĉu la temo dividiĝas senreste per du. La valoro `12` ne estas nulo, sed ĝi dividiĝas per du, do la programo presas `even`.

1. `default` kovras ĉion, kio restas. Ili estas la nombroj, kiuj estas nek nulo nek paraj, tio estas, la neparaj.

{% include nav.html %}
