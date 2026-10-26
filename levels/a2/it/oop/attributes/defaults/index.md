---
title: Valori predefiniti
translations_gpt:
---

{% include menu.html %}

Un attributo può avere un _valore predefinito_. A volte crei un oggetto senza un valore per l'attributo. Allora Raku usa il valore predefinito. Scrivi il valore predefinito dopo l'attributo, con `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Nota ancora una cosa. Puoi dare un tipo a un attributo, come a una variabile. Allora il valore deve essere di questo tipo.

Qui `new` non riceve `weight`. Così l'attributo prende il valore predefinito:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Ma puoi sempre dare un tuo valore. Sostituisce il valore predefinito:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

A volte un attributo non ha un valore predefinito. E non passi a `new` nessun valore per l'attributo. Allora l'attributo è semplicemente non definito. È come una nuova variabile scalare.

{% include nav.html %}
