---
title: Standardwerte
translations_gpt:
---

{% include menu.html %}

Sie können einem Attribut einen _Standardwert_ geben. Er wird verwendet, wenn Sie ein Objekt ohne Wert für dieses Attribut erzeugen. Schreiben Sie den Standardwert mit `=` hinter das Attribut:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Beachten Sie, dass Sie Attributen einen Typ geben können, genau wie bei Variablen.

Wenn Sie `weight` nicht an `new` übergeben, bekommt das Attribut seinen Standardwert:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Sie können den Standardwert trotzdem ersetzen, wenn Sie einen Wert übergeben:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Ein Attribut ohne Standardwert und ohne Wert von `new` ist einfach undefiniert. Es ist genau wie eine neue skalare Variable.

{% include nav.html %}
