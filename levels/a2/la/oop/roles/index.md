---
title: Partes
translations_gpt:
---

{% include menu.html %}

_Pars_ (_role_) est collectio methodorum. Interdum etiam data habet. Plures classes unam partem communicare possunt. Hereditas dicit classem genus alterius classis _esse_. Pars alia res est. Describit aliquid quod classis _facere potest_.

Partem verbo `role` facis. Classi valde similis videtur. Ut partem classi des, proprietate `does` utere:

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

Nunc classis `Person` methodum `hello` ex parte habet. Operatur sicut methodus in ipsa classe:

```raku
say Person.new(name => 'Anna').hello; # Hello from Anna
```

Classis partem facere potest. Tum Raku scit classem hanc partem habere:

```raku
say Person.new(name => 'Anna') ~~ Greet; # True
```

Specta methodum `hello` in parte. `self.name` adhibet. Sed ipsa pars nullum attributum `name` habet. Hoc non est problema. Methodus ut portio classis currit quae partem componit. Partem componere significat: eam in classem accipere. Et illa classis attributum `name` habet. Argumentum sequens plus ostendit. Classis plus quam unam partem simul habere potest.

{% include nav.html %}
