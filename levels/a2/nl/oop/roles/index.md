---
title: Rollen
translations_gpt:
---

{% include menu.html %}

Een _rol_ is een groep methoden. Soms heeft hij ook gegevens. Meerdere klassen kunnen één rol delen. Overerving zegt dat een klasse een soort van een andere klasse _is_. Een rol is anders. Hij beschrijft iets wat een klasse _kan doen_.

Je maakt een rol met het sleutelwoord `role`. Hij lijkt veel op een klasse. Gebruik de trait `does` om een rol aan een klasse te geven:

```raku
role Greet {
    method hello {
        'Hello from ' ~ self.name;
    }
}

class Person does Greet {
    has $.name;
}
```

Nu heeft de klasse `Person` de methode `hello` uit de rol. Ze werkt net als een methode in de klasse zelf:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Een klasse kan een rol doen. Dan weet Raku dat de klasse deze rol heeft:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Kijk naar de methode `hello` in de rol. Ze gebruikt `self.name`. Maar de rol zelf heeft geen attribuut `name`. Dat is geen probleem. De methode draait als deel van de klasse die de rol samenstelt. Een rol samenstellen betekent: hem in de klasse opnemen. En die klasse heeft het attribuut `name`. Het volgende onderwerp laat meer zien. Een klasse kan meer dan één rol tegelijk hebben.

{% include nav.html %}
