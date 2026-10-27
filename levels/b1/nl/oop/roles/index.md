---
title: Rollen
translations_gpt:
---

{% include menu.html %}

Een _rol_ is een stuk gedrag, en soms gegevens, dat meerdere klassen kunnen delen. Overerving zegt dat een klasse een soort van een andere klasse _is_. Een rol beschrijft daarentegen iets wat een klasse _kan doen_.

Je definieert een rol met het sleutelwoord `role`, op dezelfde manier als een klasse. Om hem aan een klasse te geven, gebruik je de trait `does`:

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

De klasse `Person` heeft nu de methode `hello` uit de rol. Ze werkt alsof je haar in de klasse zelf schreef:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Als een klasse een rol doet, kan Raku zien dat ze deze rol heeft:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Merk op dat de methode `hello` van de rol `self.name` gebruikt. Maar de rol zelf heeft geen attribuut `name`. Dat is prima. De methode draait als deel van de klasse die de rol samenstelt, welke dat ook is. En die klasse levert `name`. Het volgende onderwerp laat zien dat een klasse meerdere rollen tegelijk kan hebben.

{% include nav.html %}
