---
title: Typen met vaste grootte en overflow
---

{% include menu.html %}

Naast het gewone `int` heeft Raku gehele getallen met een vaste grootte in bits. Dat zijn `int8`, `int16`, `int32`, `int64` en hun unsigned partners `uint8`, `uint16`, `uint32`, `uint64`. Het getal laat zien hoeveel bits de waarde inneemt.

Als de breedte vastligt, ligt ook het bereik vast. Een `int8` bevat waarden van `-128` tot `127`, en een `uint8` van `0` tot `255`. De opslag kan niet groeien, dus een waarde voorbij de bovenkant wrapt naar de onderkant. Dit heet _overflow_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Als je één optelt bij de grootste `int8`, krijg je geen `128`. Dat getal zou niet passen. In plaats daarvan wrapt het naar de kleinste waarde, `-128`. Unsigned typen wrappen ook:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Een normaal `Int` is het tegenovergestelde. Het groeit gewoon zo groot als nodig en loopt nooit over. Deze ruil is precies het doel van native typen met vaste grootte. Je accepteert een vast bereik. In ruil krijg je opslag die voorspelbaar, klein en snel is.

Ken je het bereik van je gegevens, en wil je dat je code efficiënt is? Gebruik dan een native type met vaste grootte. Bewaar bijvoorbeeld bytes van binaire gegevens in een `uint8`-array. Voor gewoon rekenwerk, waarbij getallen zonder grens kunnen groeien, blijf je bij `Int`.

{% include nav.html %}
