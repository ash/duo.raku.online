---
title: 'Solution: Потребителски трейт'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my %role;

multi sub trait_mod:<is>(Routine:D $r, :$role!) {
    %role{$r.name} = $role;
}

sub login() is role('admin') { }

say %role<login>;
```

🦋 Можете да намерите изходния код във файла [custom-trait.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/custom-trait.raku).

## Изход

```
admin
```

## Коментари

1. Трейтът е `multi sub trait_mod:<is>` с именувания параметър `:$role!`. Този параметър го кара да се изпълни при `is role(...)`. Някои трейтове само присъстват или липсват, но този *получава* аргумента. Тук `is role('admin')` свързва `'admin'` с `$role`.

1. Тялото записва тази стойност под името на подпрограмата. Когато по-късно прочетете `%role<login>`, получавате `admin`. Трейтовете се изпълняват по време на компилация, затова записът вече е там, когато програмата работи.

{% include nav.html %}
