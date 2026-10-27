---
title: Partes
translations_gpt:
---

{% include menu.html %}

_Pars_ (_role_) est portio agendi rationis, et interdum datorum, quam plures classes communicare possunt. Hereditas dicit classem genus quoddam alterius classis _esse_. Pars autem describit aliquid quod classis _facere potest_.

Partem verbo `role` definis, eodem modo ac classem. Ut eam classi des, proprietate `does` uteris:

```raku
role Greet {
    method hello {
        'Hello from ' ~ self.name;
    }
}

class Person does Greet {
    has $.name;
}
```

Classis `Person` nunc methodum `hello` ex parte habet. Operatur ac si eam in ipsa classe scripsisses:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Si classis partem facit, Raku videre potest eam hanc partem habere:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Nota methodum `hello` partis `self.name` adhibere. Sed ipsa pars nullum attributum `name` habet. Hoc bene est. Methodus ut portio cuiuscumque classis currit quae partem componit. Et illa classis `name` praebet. Argumentum sequens ostendit classem plures partes simul habere posse.

{% include nav.html %}
