---
title: 'Solution: Ein benutzerdefinierter Trait'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Das Trait ist ein `multi sub trait_mod:<is>`. Es hat einen benannten Parameter, `:$role!`. Wegen dieses Parameters läuft die Sub bei `is role(...)`. Manche Traits sind nur da oder nicht da. Dieses Trait ist anders. Es *bekommt* das Argument: `is role('admin')` gibt `'admin'` an `$role`.

1. Der Rumpf speichert diesen Wert unter dem Namen der Subroutine. Später gibt `%role<login>` den Wert `admin`. Traits laufen zur Kompilierzeit. Also ist der Wert schon im Hash, wenn das Programm läuft.

{% include nav.html %}
