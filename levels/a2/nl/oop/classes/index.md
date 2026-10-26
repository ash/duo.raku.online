---
title: Klassen
translations_gpt:
---

{% include menu.html %}

Tot nu toe gebruikte je alleen de typen die Raku zelf heeft. Dat zijn getallen, strings, arrays enzovoort. Met _objectgeoriënteerd programmeren_ kun je je eigen typen maken. Zo'n type heet een _klasse_. Een waarde van dit type heet een _object_.

Voor een nieuwe klasse schrijf je het sleutelwoord `class`. Daarna schrijf je een naam en een blok:

```raku
class Dog {
}
```

Deze klasse `Dog` is nu nog leeg. Maar het is al een nieuw type. Een object van een klasse heet ook een _instantie_. `new` is een methode. Voor een instantie roep je haar aan op de klassenaam:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Nu zit er een `Dog`-object in de variabele `$rex`. Elke aanroep van `new` maakt een nieuw, apart object:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` en `$fido` zijn twee verschillende honden. De klasse is nog leeg, maar de honden zijn verschillend. In de volgende secties geef je een klasse haar eigen gegevens. Die stukjes gegevens heten _attributen_. Een klasse krijgt ook haar eigen gedrag, of acties. Die acties heten _methoden_. Het eerste onderwerp kijkt beter naar een klasse en haar instanties. Het laat zien hoe ze verschillen.

{% include nav.html %}
