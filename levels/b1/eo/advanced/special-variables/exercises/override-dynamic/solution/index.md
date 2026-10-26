---
title: 'Solvo: Superregi la dinamikan'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `task` vokas `log-it`, sed neniam mencias `$*prefix`. Tamen la valoro atingas `log-it`. Dinamika serĉado iras eksteren tra la voka stako, preter `task`. Ĝi atingas tiun, kiu estas sur la stako en tiu momento.

1. La du blokoj agordas malsamajn valorojn. Do la *sama* voko `task()` donas alian prefikson ĉiufoje. Jen kio faras dinamikajn variablojn utilaj. La kunteksto atingas profunde nestitan kodon. Vi ne devas transdoni ĝin kiel argumenton tra ĉiu rutino intere.

{% include nav.html %}
