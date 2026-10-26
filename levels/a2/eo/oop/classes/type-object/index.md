---
title: Tipobjektoj kaj ekzempleroj
translations_gpt:
---

{% include menu.html %}

Vi povas skribi nomon de klaso, ekzemple `Dog`. Ĉi tiu nomo signifas la _tipobjekton_ de la klaso. La tipobjekto reprezentas la tipon mem. Ĝi ne estas unu el la objektoj de ĉi tiu tipo. La _ekzemplero_ estas alia afero. Vi faras ĝin per `new`. Ĝi estas vera objekto.

Raku vidas la diferencon inter ili. La metodo `defined` redonas `False` por tipobjekto. Ĝi redonas `True` por ekzemplero:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Tipobjekto ne havas verajn datumojn. Ĝi nur priskribas tipon. Do Raku diras, ke ĝi estas _nedifinita_. Ekzemplero estas vera objekto. Do ĝi estas _difinita_.

`WHAT` montras la saman tipon por ambaŭ. Vi vidis `WHAT` en la [sekcio pri ujoj](/eo/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku montras tipon en rondaj krampoj, kiel `(Dog)`. Do `Dog` kaj `Dog.new` havas la saman tipon, `Dog`. Sed ili estas malsamaj aferoj. `Dog` estas la tipo mem. `Dog.new` estas objekto de ĉi tiu tipo.

{% include nav.html %}
