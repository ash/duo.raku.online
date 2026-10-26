---
title: 'Solution: Потребителски трейт'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Трейтът е `multi sub trait_mod:<is>`. Той има именуван параметър, `:$role!`. Заради този параметър подпрограмата се изпълнява при `is role(...)`. Някои трейтове само присъстват или липсват. Този трейт е различен. Той *получава* аргумента: `is role('admin')` дава `'admin'` на `$role`.

1. Тялото записва тази стойност под името на подпрограмата. По-късно `%role<login>` дава `admin`. Трейтовете се изпълняват по време на компилация. Затова стойността вече е в хеша, когато програмата работи.

{% include nav.html %}
