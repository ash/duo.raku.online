---
title: Een rol aan een object toevoegen
translations_gpt:
---

{% include menu.html %}

Je hoeft een rol niet in een klasse te bouwen. Je kunt een rol ook geven aan een object dat al bestaat. Gebruik daarvoor de operator `but`. Die mengt de rol in één enkel object. Dat gebeurt terwijl het programma draait. Dan geeft `but` een nieuw object met de rol terug:

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

Alleen `$loud` kreeg de rol. De klasse `Greeter` en alle andere `Greeter`-objecten blijven hetzelfde. Dus groet `$quiet` nog steeds op de gewone manier. Soms hebben de rol en de klasse methoden met dezelfde naam. Dan wint de versie uit de rol. En `callsame` roept de andere methode aan, die de rol overschrijft. Hier is dat de oorspronkelijke `greet` uit `Greeter`. Daarna komt haar resultaat in hoofdletters.

Een object kan op deze manier een rol krijgen. Dan telt het als een object dat deze rol doet:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` verandert het oorspronkelijke object niet. Hij geeft je een nieuw object. Misschien wil je het object zelf veranderen. Gebruik dan in plaats daarvan de operator `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Je kunt rollen in losse objecten mengen. Zo beslis je voor elk object welk extra gedrag het krijgt. Je hebt geen aparte klasse nodig voor elke combinatie.

{% include nav.html %}
