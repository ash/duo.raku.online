---
title: 'Kapti esceptojn per `try`'
translations_gpt:
---

{% include menu.html %}

Kiam io misiras en Raku-programo, _escepto_ estas ĵetata. Tio okazas ekzemple, kiam dosiero mankas aŭ kiam vi mem vokas `die`. Defaŭlte, escepto, kiun neniu traktas, haltigas la programon. La bloko `try` permesas al vi ruli kodon, kiu povus malsukcesi, sen kolapso.

Vi metas la riskan kodon en blokon `try`. Se escepto estas ĵetata ene de ĝi, la bloko haltas en tiu punkto. Sed la programo daŭras:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

La `try` kaptas la `die`, do la programo ne kolapsas. Ĝi pluiras rekte al la sekva instrukcio kaj presas:

```
Still works
```

Kiam la bloko malsukcesas tiel, ĝi donas nedifinitan valoron. Do `$result` estas nedifinita:

```raku
say $result.defined; # False
```

La kaptita escepto estas konservita en la speciala variablo `$!`. Vi povas legi ĝian mesaĝon el tie:

```raku
say $!.message; # Boom!
```

Do `try` faras el fatala eraro ion, kion via programo povas kontroli kaj al kio ĝi povas reagi. Se la bloko ruliĝas sen ia escepto, `$result` tenas ĝian valoron kaj `$!` estas nedifinita.

{% include nav.html %}
