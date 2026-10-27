---
title: 'Risinājums: Divi izņēmumu tipi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. Pirmajā piegājienā cikls izmet `TooSmall`. Otrajā piegājienā tas izmet `TooBig`. Cikls izmet katru no tiem savā blokā. Katram blokam ir savs `CATCH`.

1. Fāzerim `CATCH` ir `when` zars katram izņēmuma tipam. Katrā piegājienā izpildās tikai viens zars. Tas ir zars izmestā izņēmuma tipam. Tāpēc pirmais piegājiens izdrukā `small`, bet otrais — `big`. Katrs `when` zars ir apstrādātājs vienam tipam. Tā viens apstrādātāju kopums var katru kļūdas veidu apstrādāt citādi.

{% include nav.html %}
