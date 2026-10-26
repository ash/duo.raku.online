---
title: 'Solvo: Dinamika variablo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La tvigilo `*` igas `$*user` dinamika. `whoami` neniam ricevas ĝin kiel parametron. Ĝi trovas la valoron tra la voka stako. Do la unua voko montras la defaŭltan valoron, `guest`.

1. La interna bloko denove deklaras `$*user` kiel `admin`. Tio daŭras, dum la bloko ruliĝas. La *sama* `whoami` nun vidas `admin`. Dinamika serĉado kontrolas, kiu nun estas sur la voka stako. Vi anstataŭigas dinamikan variablon en amplekso. Tiam ĉiu kodo, kiun vi vokas de tie, ricevas pli da rajtoj. Kaj vi tute ne ŝanĝas `whoami`.

{% include nav.html %}
