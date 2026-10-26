---
title: 'Solvo: Superregi la dinamikan'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub log-it($msg) {
    say "$*prefix: $msg";
}

sub task {
    log-it('working');
}

{
    my $*prefix = 'INFO';
    task();
}

{
    my $*prefix = 'DEBUG';
    task();
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [override-dynamic.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/override-dynamic.raku).

## Eligo

```
INFO: working
DEBUG: working
```

## Komentoj

1. `task` vokas `log-it`. Sed ĝi neniam uzas `$*prefix`. Tamen la valoro atingas `log-it`. Dinamika serĉado iras malantaŭen tra la voka stako. Ĝi iras preter `task`. Ĝi atingas la kodon, kiu estas sur la stako en tiu momento.

1. La du blokoj agordas malsamajn valorojn. Do la *sama* voko `task()` donas alian prefikson ĉiufoje. Tial dinamikaj variabloj estas utilaj. Informoj atingas kodon malproksime en la ĉeno de vokoj. Neniu rutino en la mezo devas transdoni ilin kiel argumenton.

{% include nav.html %}
