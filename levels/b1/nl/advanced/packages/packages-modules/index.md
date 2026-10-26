---
title: Pakketten en modules
translations_gpt:
---

{% include menu.html %}

Het sleutelwoord `package` maakt een naamruimte aan. Alles wat erin met `our` gedeclareerd wordt, wordt deel van die naamruimte. Van buitenaf kun je deze namen bereiken via de naam van het pakket en het `::`-scheidingsteken:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Je bereikt de variabele als `$Maths::pi`. Er staat eerst de sigil, dan de pakketnaam en dan de naam van de variabele. Een subroutine roep je aan als `Maths::double(...)`.

Zowel `package` als `module` maken een naamruimte aan, maar ze verschillen in wat ze verder doen. Een `module` is de gebruikelijke keuze voor herbruikbare code. Een gewoon `package` is alleen de naamruimte, zonder extra's. Een `class`, die je in [het volgende deel](/nl/oop) leert kennen, maakt ook een naamruimte aan. Daarbovenop voegt hij alles toe wat je nodig hebt voor objectgeoriënteerd programmeren.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Een `module` geeft je dus dezelfde naamruimte als een gewoon `package`. Welke je kiest, hangt vooral af van wat je wilt doen. Gebruik `module` voor bibliotheken en `package` voor een eenvoudige naamruimte. Later, als je bij objecten komt, gebruik je `class` voor typen.

{% include nav.html %}
