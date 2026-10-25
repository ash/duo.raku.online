---
title: Eenzijnige opmerkingen
---

{% include menu.html %}

De eenvoudigste soort opmerking is een eenregelige opmerking. Ze begint met het `#`-teken. Ze gaat door tot het einde van de huidige regel.

```raku
my $name; # Deze variabele wordt gebruikt om de naam van de gebruiker te bewaren
$name = prompt 'Wat is je naam? ';
say $name; # We zien nu de naam
```

Kijk naar een shebang zoals `#!/usr/bin/env raku` in de eerste regel van de code. Voor Raku is dat ook een opmerking. Maar de shell kan hem lezen en uitvoeren.

{% include nav.html %}
