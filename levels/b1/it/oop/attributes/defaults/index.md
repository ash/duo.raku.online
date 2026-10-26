---
title: Valori predefiniti
translations_gpt:
---

{% include menu.html %}

Puoi dare a un attributo un _valore predefinito_. Viene usato quando crei un oggetto senza un valore per quell'attributo. Scrivi il valore predefinito dopo l'attributo, con `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Nota che puoi dare un tipo agli attributi, proprio come fai con le variabili.

Quando non passi `weight` a `new`, l'attributo prende il suo valore predefinito:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Puoi comunque sostituire il valore predefinito se passi un valore:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Un attributo senza valore predefinito e senza un valore da `new` è semplicemente non definito. È proprio come una nuova variabile scalare.

{% include nav.html %}
