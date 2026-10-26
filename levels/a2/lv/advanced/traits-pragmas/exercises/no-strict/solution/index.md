---
title: 'Risinājums: Atslābināt strict'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
no strict;

$a = 10;
$b = 20;
say $a + $b;
```

🦋 Programmas pirmkodu var atrast failā [no-strict.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/no-strict.raku).

## Izvade

```
30
```

## Komentāri

1. `no strict` izslēdz vienu noteikumu. Noteikums saka, ka visi mainīgie jādeklarē. Tāpēc jūs varat piešķirt vērtības `$a` un `$b` bez `my`. Ar parasto `strict` šīs rindas dod kļūdas kompilēšanas laikā.

1. Pēc piešķiršanas mainīgie strādā kā parasti. Tāpēc `$a + $b` ir `30`. Šī noteikuma maiņa ir leksiska. Tā ilgst tikai līdz pašreizējā tvēruma beigām. Tas ir tvērums ar `no strict`.

1. Šī ir tikai demonstrācija. Mēs to neiesakām praksē. `strict` ir ieslēgta pēc noklusējuma ar labu iemeslu. Tā atrod drukas kļūdas mainīgo nosaukumos kompilēšanas laikā. Īstā kodā atstājiet to ieslēgtu. Deklarējiet savus mainīgos ar `my`.

{% include nav.html %}
