---
title: Eigen excepties
translations_gpt:
---

{% include menu.html %}

Raku heeft ingebouwde excepties. Hun namen beginnen met `X::`. Je kunt ook je eigen excepties maken. We noemen ze eigen excepties. Een eigen exceptie is een klasse. De klasse erft van de ingebouwde klasse `Exception`. Dus is het een soort `Exception`. De klasse heeft ook een methode `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` is een gewone klasse. Hij kan attributen hebben, zoals `value`. Maar hij `is Exception`. Dus kun je hem werpen, net als een fout van `die`. Om hem te werpen, maak je een object van de klasse. Roep dan `.throw` aan op dit object:

```raku
my $value = 20 * 30;

TooBig.new(value => $value).throw if $value > 50;

CATCH {
    when TooBig {
        say .message;
    }
}
```

Het programma drukt af:

```
Value 600 is too big
```

In de `CATCH` matcht `when TooBig`. Dat komt doordat het geworpen object het type `TooBig` heeft. Een eigen exceptie bewaart alle gegevens die je haar geeft. Hier zijn die gegevens de `value`. De code die de exceptie afhandelt, is de afhandelaar. De afhandelaar kan deze gegevens gebruiken. Hij kan een precieze melding maken. Of hij kan op een speciale manier reageren. Dat is veel nuttiger dan een simpele string voor `die`.

Hier komt alles uit dit deel van de cursus samen. Een eigen exceptie is een _klasse_. Ze heeft attributen en een methode. Ze werkt ook met de hulpmiddelen van Raku voor excepties. Je kunt haar werpen en vangen. Zo kan ze precies melden wat er misging.

{% include nav.html %}
