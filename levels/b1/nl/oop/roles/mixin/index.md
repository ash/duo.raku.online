---
title: Een rol aan een object toevoegen
translations_gpt:
---

{% include menu.html %}

Een rol hoeft niet in een klasse ingebouwd te zijn. Je kunt er ook een geven aan een object dat al bestaat, met de operator `but`. Die mengt de rol tijdens het draaien in één enkel object. Dan geeft hij een nieuw object terug dat de rol heeft:

```raku
role Loud {
    method greet {
        callsame().uc;
    }
}

class Greeter {
    method greet {
        'Hello';
    }
}

my $quiet = Greeter.new;
my $loud  = Greeter.new but Loud;

say $quiet.greet; # Hello
say $loud.greet;  # HELLO
```

Alleen `$loud` kreeg de rol. De klasse `Greeter` en alle andere `Greeter`-objecten blijven hetzelfde. Dus groet `$quiet` nog steeds op de gewone manier. Soms definiëren de rol en de klasse allebei een methode met dezelfde naam. In dat geval wint de versie van de rol. En `callsame` roept de methode aan die ze overschreef. Hier is dat de oorspronkelijke `greet` uit `Greeter`. Haar resultaat wordt dan in hoofdletters gezet.

Een object waarin een rol gemengd is, telt als een object dat die rol doet:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` laat het oorspronkelijke object zoals het was en geeft je een nieuw object. Als je een bestaand object zelf wilt veranderen, gebruik dan de operator `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Als je rollen in losse objecten mengt, beslis je welk extra gedrag elk object krijgt. Je hoeft niet voor elke combinatie een aparte klasse te definiëren.

{% include nav.html %}
