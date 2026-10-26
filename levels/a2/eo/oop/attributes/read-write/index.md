---
title: Leg- kaj skribeblaj atributoj
translations_gpt:
---

{% include menu.html %}

Defaŭlte, la atingilo de `has $.name` estas _nur-legebla_. La konstruilo donas al la atributo ĝian valoron. La konstruilo estas la metodo, kiu faras la objekton, ĉi tie `new`. Post tio, kodo ekster la objekto povas legi la valoron. Sed ĝi ne povas ŝanĝi ĝin. Provu atribui novan valoron al ĝi. Tio donas eraron:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

La programo haltas kun ĉi tiu eraro:

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

Nun la atingilo redonas ujon, en kiun vi povas skribi. Do la atribuo funkcias. La `name` de la objekto nun estas `Max`.

{% include nav.html %}
