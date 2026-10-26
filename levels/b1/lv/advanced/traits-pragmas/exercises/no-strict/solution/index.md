---
title: 'Risinājums: Atslābināt strict'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. `no strict` izslēdz noteikumu, ka mainīgie ir jādeklarē. Tāpēc jūs varat piešķirt vērtības `$a` un `$b` bez `my`. Ar noklusēto `strict` katra no šīm rindām būtu kompilēšanas laika kļūda.

1. Pēc piešķiršanas mainīgie darbojas kā parasti, tāpēc `$a + $b` ir `30`. Šis vājākais noteikums ir leksisks. Tas ilgst tikai līdz tā tvēruma beigām, kurā ir `no strict`.

1. Šī ir tikai demonstrācija, un mēs to neiesakām praksē. `strict` ir ieslēgta pēc noklusējuma pamatota iemesla dēļ. Tā kompilēšanas laikā uztver drukas kļūdas mainīgo nosaukumos. Īstā kodā atstājiet to ieslēgtu un deklarējiet savus mainīgos ar `my`.

{% include nav.html %}
