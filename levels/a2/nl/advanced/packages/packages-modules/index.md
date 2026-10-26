---
title: Pakketten en modules
translations_gpt:
---

{% include menu.html %}

Het sleutelwoord `package` maakt een naamruimte. Daarin kun je dingen maken met `our`. Ze worden deel van de naamruimte. Je kunt er van buitenaf bij. Gebruik de naam van het pakket en het scheidingsteken `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Je krijgt de variabele als `$Maths::pi`. Eerst komt de sigil, dan de pakketnaam, dan de naam van de variabele. Je roept een subroutine aan als `Maths::double(...)`.

Zowel `package` als `module` maken een naamruimte. Maar ze doen ook verschillende dingen. Een `module` is de gewone keuze voor code die je opnieuw gebruikt. Een gewoon `package` is alleen de naamruimte, zonder meer. Een `class` maakt ook een naamruimte. Over klassen leer je meer in [het volgende deel](/nl/oop). Een klasse voegt ook de hulpmiddelen voor objecten toe.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Een `module` geeft je dus een naamruimte. Een `package` alleen geeft je dezelfde soort naamruimte. Wat je kiest, hangt af van je doel. Gebruik `module` voor bibliotheken. Gebruik `package` voor alleen een naamruimte. Later, met objecten, gebruik je `class` voor typen.

{% include nav.html %}
