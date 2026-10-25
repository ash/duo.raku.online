---
title: Eenzijnige opmerkingen
---

{% include menu.html %}

De eenvoudigste opmerking is een eenregelige opmerking. Ze begint met het `#`-teken. Ze loopt tot het einde van de regel.

```raku
my $name; # Deze variabele wordt gebruikt om de naam van de gebruiker te bewaren
$name = prompt 'Wat is je naam? ';
say $name; # We zien nu de naam
```

Een shebang is een eerste regel zoals `#!/usr/bin/env raku`. Voor Raku is dat ook een opmerking. Maar de shell kan hem lezen en uitvoeren.

{% include nav.html %}
