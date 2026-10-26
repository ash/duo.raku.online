---
title: 'Risinājums: Kas tas ir'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 Avota kodu var atrast failā [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Izvade

```
True
False
```

## Komentāri

1. `$a.WHAT` nav virkne `Int`. Tas ir īstais `Int` tipa objekts. Tāpēc `=== Int` salīdzina to ar pašu tipu. Rezultāts ir `True`.

1. `$b` glabā virkni. Tāpēc tā `WHAT` ir `Str`. Salīdzinājums ar `Int` dod `False`. Tāpēc `WHAT` ir noderīgs nosacījumos. Tas nav tikai drukāšanai.

{% include nav.html %}
