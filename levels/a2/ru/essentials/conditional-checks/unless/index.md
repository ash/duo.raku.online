---
title: Использование `unless`
---

{% include menu.html %}

[Оператор `!`](/ru/essentials/booleans/operations#negation) легко превращает любое булево условие в противоположное. Но иногда этот `!` делает выражение сложнее. Тогда его труднее читать. В таких случаях может помочь `unless`.

Условие у `unless` должно быть равно `False`. Тогда Raku выполняет блок.

```raku
my $broken = False;

# ...Здесь что-то может записать True в $broken...
    
unless $broken {
    say "Don’t worry!";
    say "Be happy!";
}
```

Вот два варианта одной и той же программы. Сравните их:

С `if` и `!`:

```raku
if !$broken { . . . }
```

С `unless`:

```raku
unless $broken { . . . }
```

Значит, у вас есть выбор. В каждой ситуации выбирайте то, что вам больше нравится.

После `unless` нельзя поставить блок `else` или `elsif`. Для этого нужно использовать `if`.

{% assign human=1 %}
{% include nav.html %}
