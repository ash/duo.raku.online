---
title: Typen met vaste grootte en overflow
---

{% include menu.html %}

Raku heeft het gewone `int`. Raku heeft ook gehele getallen met een vast aantal bits. Dat zijn `int8`, `int16`, `int32` en `int64`. Elk ervan heeft een unsigned partner: `uint8`, `uint16`, `uint32` en `uint64`. Unsigned waarden zijn nooit negatief. Het getal in de naam zegt hoeveel bits de waarde inneemt.

Een vaste grootte betekent een vast bereik van waarden. Een `int8` bevat waarden van `-128` tot `127`. Een `uint8` bevat waarden van `0` tot `255`. De opslag kan niet groeien. Als een waarde dus voorbij de bovenkant gaat, wrapt hij. Hij komt terug aan de onderkant. Dit is _overflow_:

```raku
my int8 $i = 127;
$i++;
say $i; # -128
```

Tel één op bij de grootste `int8`. Je krijgt dan geen `128`, want `128` past niet. De waarde wrapt naar de kleinste waarde, `-128`. Unsigned typen wrappen ook:

```raku
my uint8 $u = 255;
$u++;
say $u; # 0
```

Een normaal `Int` is het tegenovergestelde. Het groeit gewoon zo groot als nodig. Het loopt nooit over. Native typen met vaste grootte zijn een ruil. Je accepteert een vast bereik. In ruil is de opslag klein en snel, zonder verrassingen. Deze ruil is precies het doel van native typen met vaste grootte.

Ken je het bereik van je gegevens? Wil je snelle en kleine opslag? Gebruik dan een native type met vaste grootte. Bewaar bijvoorbeeld bytes van binaire gegevens in een `uint8`-array. Bij normaal rekenwerk kunnen getallen zonder grens groeien. Gebruik daar `Int`.

{% include nav.html %}
