---
title: Bags en mixes
translations_gpt:
---

{% include menu.html %}

Een set onthoudt alleen _of_ een waarde erin zit. Soms wil je ook weten _hoe vaak_ die erin zit. Daarvoor is er de `Bag`. Die houdt voor elke waarde een telling bij.

Een bag maak je met de `bag`-routine. Een bag voegt herhaalde waarden niet samen. Hij telt ze:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Vraag de bag naar een waarde met de subscript `< >`. Je krijgt hoe vaak deze waarde in de bag is gestopt. De methode `total` telt alle tellingen op:

```raku
say bag(<a b a c a>).total; # 5
```

Een `Mix` lijkt op een bag. Maar in een mix heten de tellingen _gewichten_. Een gewicht hoeft geen geheel getal te zijn. Het kan ook een breuk zijn. Je kunt de gewichten zelf geven. Koppel elke waarde aan zijn gewicht. Maak dan van de lijst een mix met `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Je krijgt een gewicht met `< >`. Je telt de gewichten op met `total`. Beide werken net als bij een bag. Alleen hoeven de getallen niet geheel te zijn. Hier telt `total` de gewichten `2.5` en `0.75` op. Het resultaat is `3.25`. `total` geeft dus de som van de gewichten. Die telt de waarden niet. Bags en mixes zijn handig als je hoeveelheden moet tellen. Een bag kan bijvoorbeeld de woorden in een tekst tellen. Hij vertelt je hoe vaak elk woord voorkomt. Een mix kan gewichten aan opties geven.

{% include nav.html %}
