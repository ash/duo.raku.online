---
title: Leg- kaj skribeblaj atributoj
translations_gpt:
---

{% include menu.html %}

Defaŭlte, la atingilo, kiun `has $.name` kreas, estas _nur-legebla_. La konstruilo, `new`, donas la valoron, kiam ĝi kreas la objekton. Post tio, kodo ekster la objekto povas legi la valoron, sed ne povas ŝanĝi ĝin. Atribui al ĝi estas eraro:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

La programo haltas kun ĉi tiu mesaĝo:

```
Cannot modify an immutable Str (Rex)
```

Ĉu vi volas ŝanĝi la valoron tra la atingilo? Tiam marku la atributon per la trajto `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Nun la atingilo redonas skribeblan ujon. Do la atribuo funkcias, kaj la `name` de la objekto ŝanĝiĝas al `Max`.

{% include nav.html %}
