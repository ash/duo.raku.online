---
title: 'La `MAIN` funkcio'
---

{% include menu.html %}

Raku-programo ne bezonas specialan kodon ĉe la komenco. Do vi povas tuj komenci per utila kodo. Ĉi tiu kodo ne estas en [koda bloko](/eo/essentials/code-blocks). Ekzemple, ĝi ne estas en [funkcio](/eo/essentials/functions). Ni nomas ĉi tiun parton de la programo _ĉeflinio_.

Programo povas havi funkcion kun la speciala nomo `MAIN`. En ĉi tiu kazo, Raku unue kompilas ĉion. Poste, ĝi rulas la ĉeflinian kodon. Post tio, ĝi rulas la funkcion `MAIN`.

```raku
say '1. Ĉeflinia kodo';

sub MAIN {
    say '3. MAIN vokita';
}

say '2. Ankaŭ ĉeflinio';
```

Unue, ĉi tiu programo rulas la `say`-ojn sur la supra nivelo. Poste ĝi vokas `MAIN`:

```console
$ raku t.raku
1. Ĉeflinia kodo
2. Ankaŭ ĉeflinio
3. MAIN vokita
```

Kompreneble, programo ankaŭ povas havi nur la funkcion `MAIN`. Tiam ĝi havas neniun alian ĉeflinian kodon.

{% include nav.html %}
