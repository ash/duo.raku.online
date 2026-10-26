---
title: Bags en mixes
translations_gpt:
---

{% include menu.html %}

Een set vertelt je alleen _of_ een waarde erin zit. Maar soms moet je ook weten _hoe vaak_ de waarde erin zit. Daarvoor is er de `Bag`, die voor elke waarde een telling bijhoudt.

Je maakt een bag met de `bag`-routine. Herhaalde waarden worden niet één waarde. In plaats daarvan worden ze geteld:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Je kunt de bag naar een waarde vragen met de `< >`-subscript. Dan krijg je het aantal keren dat deze waarde erin is gestopt. De methode `total` geeft de som van alle tellingen:

```raku
say bag(<a b a c a>).total; # 5
```

Een `Mix` is hetzelfde idee als een bag. Het verschil is dat de tellingen, die _gewichten_ heten, breuken kunnen zijn, niet alleen gehele getallen. Om de gewichten zelf te geven, koppel je elke waarde aan zijn gewicht. Maak daarna van de lijst een mix met `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Je zoekt een gewicht op met `< >` en telt de gewichten op met `total`. Beide werken precies zoals bij een bag. Het enige verschil is dat de getallen niet geheel hoeven te zijn. Hier telt `total` de gewichten `2.5` en `0.75` op, en dat geeft `3.25`. Het is de som van de gewichten, niet het aantal waarden. Bags en mixes zijn handig als je hoeveelheden wilt bijhouden. Je kunt bijvoorbeeld tellen hoe vaak elk woord in een tekst voorkomt. Of je kunt gewichten aan opties geven.

{% include nav.html %}
