---
title: 'Risinājums: Mainīgais ar our'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
package Config {
    our $port = 8080;
    my  $secret = 42;
}

say $Config::port;
say $Config::secret.defined;
```

🦋 Šīs programmas pirmkodu var atrast failā [our-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/our-variable.raku).

## Izvade

```
8080
False
```

## Komentāri

1. `our $port` ir vārdtelpas `Config` daļa. Tāpēc jūs varat to iegūt no ārpuses kā `$Config::port`. Tas izdrukā `8080`.

1. `my $secret` ir leksisks. Tas ir privāts pakotnes blokam. Tāpēc tas nav vārdtelpā. Ceļš `$Config::secret` neatrod neko. Tas dod nedefinētu vērtību. Tātad `.defined` ir `False`. Tā ir atšķirība, ko rada `our`.

{% include nav.html %}
