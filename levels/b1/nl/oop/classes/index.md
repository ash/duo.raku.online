---
title: Klassen
translations_gpt:
---

{% include menu.html %}

Tot nu toe waren alle gegevenstypen die je gebruikt hebt in Raku ingebouwd. Dat waren getallen, strings, arrays enzovoort. Met _objectgeoriënteerd programmeren_ kun je je eigen typen definiëren, die _klassen_ heten. Je kunt ook waarden van deze typen maken, die _objecten_ heten.

Om een klasse te definiëren, schrijf je het sleutelwoord `class`, dan een naam en een blok:

```raku
class Dog {
}
```

Deze klasse `Dog` is nog leeg, maar het is al een nieuw type. Een object van een klasse heet ook een _instantie_. Om er een te maken, roep je de methode `new` aan op de naam van de klasse:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Nu bevat `$rex` een `Dog`-object. Elke keer dat je `new` aanroept, krijg je een nieuw, apart object:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` en `$fido` zijn twee verschillende honden, ook al is de klasse nog leeg. In de volgende secties geef je een klasse haar eigen gegevens, de zogenaamde _attributen_. Je geeft haar ook haar eigen gedrag, de zogenaamde _methoden_. Het eerste onderwerp kijkt beter naar hoe een klasse verschilt van haar instanties.

{% include nav.html %}
