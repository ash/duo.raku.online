---
title: Methodi classis
translations_gpt:
---

{% include menu.html %}

Plerasque methodos in obiecto vocas. Obiectum est exemplar classis. Sed methodum etiam in ipsa classe vocare potes. Hoc significat: eam in obiecto generis vocas. Talem methodum saepe _methodum classis_ appellamus. Utilis est pro valoribus et actionibus totius classis. Non ad unum tantum obiectum pertinent.

Methodum classis scribis sicut ceteras methodos:

```raku
class Road {
    method speed-limit { 120 }
}
```

Sed eam in nomine classis vocas. Eam in exemplari non vocas:

```raku
say Road.speed-limit; # 120
```

Iam unam methodum classis nosti. Sed eam sic non appellavisti. Haec est `new`. `new` in classe vocas, et ea novum obiectum facit.

Methodus classis attributis exemplaris uti non potest. Nullum obiectum post eam est. Itaque solum cum informatione communi operari potest. Haec informatio eadem est pro omni obiecto classis. Interdum opus data unius obiecti requirit. Tum methodo ordinaria utere, et eam in exemplari voca. Interdum opus talia data non requirit. Tum methodus classis bona electio est.

Methodi classis exemplar non requirunt. Sed interdum obiectum habes. Tum tamen datis eius in eis uti potes:

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

Hoc programma effectum imprimit quem exspectas:

```
The maximum speed on Road 404 is 120
```

Hic exemplar classis habere debes. Sine eo, vocatio sicut `say Road.info` errorem dat.

{% include nav.html %}
