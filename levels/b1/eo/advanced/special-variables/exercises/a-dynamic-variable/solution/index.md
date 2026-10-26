---
title: 'Solvo: Dinamika variablo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Eligo

```
running as guest
running as admin
```

## Komentoj

1. La tvigilo `*` igas `$*user` dinamika. `whoami` neniam ricevas ĝin kiel parametron. Anstataŭe, ĝi trovas la valoron, rigardante eksteren tra la voka stako. Do la unua voko montras la defaŭlton, `guest`.

1. La interna bloko denove deklaras `$*user` kiel `admin`, kaj tio daŭras, dum la bloko ruliĝas. La *sama* `whoami` nun vidas `admin`. Tio estas ĉar dinamika serĉado sekvas tiun, kiu estas sur la stako en la momento. Anstataŭigi dinamikan variablon en amplekso donas pli da rajtoj al ĉio, kio estas vokita el ĝi. Kaj vi tute ne bezonas ŝanĝi `whoami`.

{% include nav.html %}
