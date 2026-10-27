---
title: 'Risinājums: Divi izņēmumu tipi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 Atrodiet programmu failā [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Izvade

```
small
big
```

## Komentāri

1. Cikls pirmajā piegājienā izmet `TooSmall`, bet otrajā — `TooBig`. Katrs no tiem tiek izmests savā blokā, kuram ir savs `CATCH`.

1. Fāzerim `CATCH` ir `when` zars katram izņēmuma tipam. Katrā piegājienā izpildās tikai tas zars, kas atbilst izmestajam tipam. Tāpēc pirmais piegājiens izdrukā `small`, bet otrais — `big`. Tā viens apstrādātāju kopums atšķirīgi reaģē uz katru kļūdas veidu.

{% include nav.html %}
