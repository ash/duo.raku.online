---
title: Declaratie met initialisatie
---

{% include menu.html %}

Soms weet je de waarde van een nieuwe variabele al vanaf het begin. Dan heb je maar één instructie nodig. Die maakt de variabele en zet de waarde erin. Dit bespaart één regel code:

```raku
my $name = 'Anna';
say $name;
```

## Twee of meer variabelen

Je kunt ook twee of meer variabelen maken en ze waarden geven. Schrijf het zo:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}
