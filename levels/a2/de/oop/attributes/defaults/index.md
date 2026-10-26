---
title: Standardwerte
translations_gpt:
---

{% include menu.html %}

Ein Attribut kann einen _Standardwert_ haben. Manchmal erstellen Sie ein Objekt ohne Wert für das Attribut. Dann nimmt Raku den Standardwert. Schreiben Sie den Standardwert mit `=` hinter das Attribut:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Beachten Sie noch eine Sache. Sie können einem Attribut einen Typ geben, wie einer Variablen. Der Wert muss dann diesen Typ haben.

Hier bekommt `new` kein `weight`. Also bekommt das Attribut den Standardwert:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Aber Sie können trotzdem einen eigenen Wert angeben. Er ersetzt den Standardwert:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Manchmal hat ein Attribut keinen Standardwert. Sie übergeben auch keinen Wert dafür an `new`. Dann ist das Attribut einfach undefiniert. Es ist wie eine neue skalare Variable.

{% include nav.html %}
