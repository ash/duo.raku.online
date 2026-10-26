---
title: 'Solvo: Para, nepara aŭ nulo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `when 0` kongruas nur kun unu valoro, nulo. Ĝi venas unue. Nulo ankaŭ estas para, sed ni volas montri ĝin aparte.

1. `when $_ %% 2` estas kondiĉo. Ĉi tie `$_` estas la temo de `given`. La operatoro `%%` kontrolas, ĉu ĝi dividiĝas per du sen resto. La valoro `12` ne estas nulo. Sed ĝi dividiĝas per du. Do la programo presas `even`.

1. `default` estas por ĉiuj aliaj nombroj. Ili ne estas nulo kaj ne estas paraj. Do ili estas la neparaj nombroj.

{% include nav.html %}
