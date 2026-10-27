---
title: Eigen excepties
translations_gpt:
---

{% include menu.html %}

Raku heeft ingebouwde `X::`-excepties, maar je kunt ook je eigen excepties maken. Een eigen exceptie is een klasse die van de ingebouwde klasse `Exception` erft. Ze heeft ook een methode `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` is een gewone klasse, dus kan hij attributen hebben, zoals `value`. Maar omdat hij `is Exception`, kun je hem werpen. Om hem te werpen, maak je een object en roep je er `.throw` op aan:

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

In de `CATCH` matcht `when TooBig`, omdat het geworpen object dat type heeft. Een eigen exceptie draagt alle gegevens mee die je haar geeft, hier de `value`. Dus kan de afhandelaar een precieze melding maken of op een speciale manier reageren. Dat is veel nuttiger dan een kale string die je aan `die` geeft.

Deze pagina brengt alles uit dit deel samen. Een eigen exceptie is een _klasse_ met attributen en een methode. Ze doet ook mee in het exceptiesysteem van Raku. Zo is ze klaar om precies te melden wat er misging.

{% include nav.html %}
