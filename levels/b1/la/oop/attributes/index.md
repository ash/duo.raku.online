---
title: Attributa
translations_gpt:
---

{% include menu.html %}

Classis vacua non valde utilis est. Ut obiectum propria data servet, classi _attributa_ da. Attributum intra classem per verbum `has` declaras:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Quodque obiectum classis propriam copiam horum attributorum habet. Valores eorum ponis cum obiectum creas. Ad hoc, trade eos ad `new` ut argumenta nominata:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

`$.` in `has $.name` duas res simul agit. Attributum declarat, et methodum eiusdem nominis creat. Haec methodus _accessor_ appellatur, et valorem attributi reddit:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Diversa obiecta proprios valores servant, qui alii ab aliis non pendent:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

Argumenta sequentia ostendunt quomodo attributa mutabilia facias. Ostendunt etiam quomodo attributis valores praedefinitos des. Est etiam modus attributa _privata_ declarandi, quae extra obiectum abscondita sunt. Ad ea redibimus postquam methodos introduxerimus.

{% include nav.html %}
