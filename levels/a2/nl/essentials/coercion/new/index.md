---
title: Typen converteren met constructor vormen
---

{% include menu.html %}

Er is ook een manier die hierop lijkt. Je kunt een nieuw object maken van het type dat je nodig hebt. Roep daarvoor de constructor van het type aan. Een constructor maakt nieuwe objecten. Hij heeft dezelfde naam als het type. Bijvoorbeeld:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Hier bevat de string een drijvende-kommagetal. Raku zet het om naar een integer.

{% include nav.html %}
