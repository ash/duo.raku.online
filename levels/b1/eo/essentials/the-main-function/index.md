---
title: 'La `MAIN` funkcio'
---

{% include menu.html %}

Raku-programo ne bezonas kutiman kodon, kiun vi ĉiam devas skribi. Do vi povas tuj komenci skribi utilajn instrukciojn. Ĉi tiu parto de la programo troviĝas ekster ĉiuj [kodaj blokoj](/eo/essentials/code-blocks), ekzemple ankaŭ ekster [funkcioj](/eo/essentials/functions). Ĝi nomiĝas _ĉeflinio_.

Se programo havas funkcion kun la speciala nomo `MAIN`, Raku rulas ĝin laste. Tio okazas post kiam Raku kompilas ĉion kaj post kiam ĝi rulas la ĉeflinian kodon.

```raku
say '1. Ĉeflinia kodo';

sub MAIN {
    say '3. MAIN vokita';
}

say '2. Ankaŭ ĉeflinio';
```

Ĉi tiu programo unue rulas la `say`-ojn sur la supra nivelo kaj poste vokas `MAIN`:

```console
$ raku t.raku
1. Ĉeflinia kodo
2. Ankaŭ ĉeflinio
3. MAIN vokita
```

Kompreneble, programo ankaŭ povas havi la funkcion `MAIN` kaj neniun alian ĉeflinian kodon.

{% include nav.html %}
