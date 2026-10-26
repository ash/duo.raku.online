---
title: 'Solution: Ein benutzerdefinierter Trait'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Den Quellcode finden Sie in der Datei [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Ausgabe

```
admin
```

## Kommentare

1. Das Trait ist ein `multi sub trait_mod:<is>` mit dem benannten Parameter `:$role!`. Durch diesen Parameter läuft es bei `is role(...)`. Manche Traits sind nur vorhanden oder nicht vorhanden, aber dieses *empfängt* das Argument. Hier bindet `is role('admin')` den Wert `'admin'` an `$role`.

1. Der Rumpf speichert diesen Wert unter dem Namen der Subroutine. Wenn Sie später `%role<login>` lesen, bekommen Sie `admin`. Traits laufen zur Kompilierzeit, also ist der Eintrag schon da, wenn das Programm läuft.

{% include nav.html %}
