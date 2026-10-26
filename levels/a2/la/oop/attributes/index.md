---
title: Attributa
translations_gpt:
---

{% include menu.html %}

Classis vacua non valde utilis est. Obiectum propria data habere debet. Ideo classi _attributa_ das. Attributum est pars datorum in obiecto. Ut attributum facias, scribe verbum `has` intra classem:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Quodque obiectum propriam copiam horum attributorum accipit. Valores eis das cum obiectum facis. Trade valores ad `new` ut argumenta nominata:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Specta `$.` in `has $.name`. Duas res agit. Primo attributum creat. Secundo methodum eiusdem nominis creat. Haec methodus valorem attributi reddit. Talem methodum _accessorem_ appellamus:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Diversa obiecta proprios valores servant. Eos non communicant:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

Argumenta sequentia duas res ostendunt. Primo attributa facis quae mutare potes. Deinde attributis valores praedefinitos das. Attributa etiam _privata_ facere potes. Codex extra obiectum ea videre non potest. Post methodos ad ea redimus.

{% include nav.html %}
