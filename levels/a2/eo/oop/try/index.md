---
title: 'Kapti esceptojn per `try`'
translations_gpt:
---

{% include menu.html %}

Foje io misiras en Raku-programo. Ekzemple, dosiero mankas, aŭ la kodo vokas `die`. Tiam la programo ĵetas eraron. Tia eraro nomiĝas _escepto_. Se neniu kodo traktas la escepton, la programo haltas. Tio estas la defaŭlto. La bloko `try` helpas ĉi tie. Ĝi estas bloko de kodo kun la vorto `try` antaŭ ĝi. Kodo en ĉi tiu bloko povas malsukcesi. Sed la programo ne kolapsas.

Vi metas la kodon, kiu povas malsukcesi, en blokon `try`. Eble la kodo ĵetas escepton ene de la bloko. Tiam la bloko haltas en tiu loko. Sed la programo daŭras:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

La `try` kaptas la `die`. Do la programo ne kolapsas. Ĝi iras rekte al la sekva instrukcio. Ĝi presas:

```
Still works
```

Ĉi tie, la bloko malsukcesas. Tiam ĝi donas nedifinitan valoron. Do `$result` estas nedifinita:

```raku
say $result.defined; # False
```

Raku tenas la kaptitan escepton en la speciala variablo `$!`. Vi povas legi la mesaĝon de la escepto el tie:

```raku
say $!.message; # Boom!
```

Do `try` helpas kun fatala eraro. Sen `try`, tia eraro haltigas la programon. Kun `try`, via programo povas rigardi la eraron. Poste ĝi povas reagi al ĝi. Kaj se la bloko ruliĝas sen escepto? Tiam `$result` tenas la valoron de la bloko. En ĉi tiu kazo, `$!` estas nedifinita.

{% include nav.html %}
