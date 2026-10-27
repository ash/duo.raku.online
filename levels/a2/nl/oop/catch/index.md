---
title: De `CATCH`-faser
translations_gpt:
---

{% include menu.html %}

Het `try`-blok is makkelijk te gebruiken. Maar voor `try` is het hele blok één stuk. Het blok werkt, of het mislukt. De `CATCH`-faser geeft je meer controle. Een exceptie is een fout die het programma stopt. Met `CATCH` handel je de exceptie _binnen_ haar blok af. Dat is het blok met de fout. Daar beslis je wat er moet gebeuren.

`CATCH` is een faser. Een faser is een speciaal blok. Raku draait het vanzelf op een bepaald moment. Je zag fasers al in de [sectie over besturingsstructuren](/nl/advanced/phasers). Je kunt `CATCH` overal in een blok zetten. Hij draait alleen als code in dit blok een exceptie werpt. Je krijgt de exceptie in de topic variabele `$_`:

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

Het `default`-blok in `CATCH` handelt elke exceptie af. Daarna telt de exceptie als afgehandeld. Dus stopt het programma niet. Het gaat verder na het blok met de `CATCH`. Daarom drukt het programma `after` af.

Zonder de `CATCH` stopt de `die` het programma. Het programma komt nooit bij `after`.

{% include nav.html %}
