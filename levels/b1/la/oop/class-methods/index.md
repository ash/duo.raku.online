---
title: Methodi classis
translations_gpt:
---

{% include menu.html %}

Pleraeque methodi in obiecto vocantur, quod exemplar classis est. Sed methodum etiam in ipsa classe vocare potes. Aliis verbis, eam in obiecto generis vocas. Homines talem methodum saepe _methodum classis_ appellant. Utilis est pro valoribus et operationibus quae ad totam classem pertinent. Ad nullum certum obiectum pertinent.

Methodum classis eodem prorsus modo definis ac quamlibet aliam methodum:

```raku
class Road {
    method speed-limit { 120 }
}
```

Sed eam in nomine classis loco exemplaris vocas:

```raku
say Road.speed-limit; # 120
```

Re vera iam methodo classis usus es, quamquam eam sic non appellavisti. `new` est methodus quam in classe vocas ut novum obiectum crees.

Methodus classis attributis exemplaris uti non potest, quia nullum certum obiectum post eam est. Itaque solum cum informatione operatur quam omnia obiecta classis communicant. Si opus a datis unius obiecti pendet, methodo ordinaria utere. Eam in exemplari voca. Si non pendet, methodus classis naturalis electio est.

Methodi classis exemplar non requirunt. Tamen, cum obiectum habes, datis eius in eis uti potes:

```raku
class Road {
    has $.name;
    method speed-limit { 120 }

    method info {
        "The maximum speed on $.name is " ~ self.speed-limit
    }
}

my $R404 = Road.new(name => 'Road 404');
say $R404.info;
```

Hoc programma effectum imprimit quem exspectares:

```
The maximum speed on Road 404 is 120
```

Sine obiecto classis, vocatio qualis `say Road.info` errorem faceret.

{% include nav.html %}
