---
title: Obiecta introspicere
translations_gpt:
---

{% include menu.html %}

In [sectione de receptaculis](/la/advanced/containers) `.^name` adhibuisti ut valorem de genere suo interrogares. Eisdem metavocationibus `.^` classem eiusque obiecta intus inspicere potes. Nomina eorum, attributa eorum et locum eorum in hierarchia classium videre potes.

Metamethodus `.^name` nomen classis reddit:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

Metamethodus `.^attributes` attributa classis enumerat. Unumquodque cum genere suo et nomine privato interno vides. Haec est forma `$!` quam apud [attributa privata](/la/oop/methods/private-attributes) invenisti:

```raku
say Dog.^attributes; # (Str $!name)
```

Introspectio utilis est instrumentis quae cum quolibet genere obiecti operantur. Exempli gratia, tale instrumentum omne attributum obiecti imprimere potest. Classem prius scire non debet. Argumentum sequens ostendit quomodo catenam hereditatis classis videas.

{% include nav.html %}
