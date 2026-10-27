---
title: De `CATCH`-faser
translations_gpt:
---

{% include menu.html %}

Het `try`-blok is handig, maar het behandelt het hele blok als één geheel. Het blok werkt, of het werkt niet. De `CATCH`-faser geeft je meer controle. Hiermee kun je een exceptie afhandelen _binnen_ het blok waar ze gebeurde. Daarna beslis je wat er moet gebeuren.

`CATCH` is een faser, net als de fasers uit de [sectie over besturingsstructuren](/nl/advanced/phasers). Je kunt hem overal binnen een blok zetten. Hij draait alleen als er in dat blok een exceptie geworpen wordt. Je krijgt de exceptie als de topic variabele `$_`:

```raku
{
    die 'Boom!';

    CATCH {
        default {
            say 'Caught: ' ~ .message;
        }
    }
}

say 'after';
```

Het programma drukt af:

```
Caught: Boom!
after
```

Het `default`-blok binnen `CATCH` handelt elke exceptie af. Nadat het gedraaid heeft, telt de exceptie als afgehandeld. Dus stopt het programma niet. Het gaat verder na het blok rond de `CATCH`, en daarom wordt `after` afgedrukt.

Zonder de `CATCH` zou de `die` het programma beëindigen voordat het bij `after` kwam.

{% include nav.html %}
