---
title: Tipobjektoj kaj ekzempleroj
translations_gpt:
---

{% include menu.html %}

Nomo de klaso, ekzemple `Dog`, signifas la _tipobjekton_ de la klaso. La tipobjekto reprezentas la tipon mem. Ĝi ne estas iu aparta objekto de tiu tipo. La _ekzemplero_, kiun vi kreas per `new`, estas vera objekto.

Raku povas vidi la diferencon inter la du. La metodo `defined` redonas `False` por tipobjekto kaj `True` por ekzemplero:

```raku
class Dog {
}

say Dog.defined;     # False
say Dog.new.defined; # True
```

Tipobjekto validas kiel _nedifinita_, ĉar ĝi tenas neniujn verajn datumojn. Ĝi nur priskribas tipon. Ekzemplero estas _difinita_, ĉar ĝi estas vera objekto.

Per `WHAT`, ambaŭ montras la saman tipon. Vi jam renkontis `WHAT` en la [sekcio pri ujoj](/eo/advanced/containers):

```raku
class Dog {
}

say Dog.WHAT;     # (Dog)
say Dog.new.WHAT; # (Dog)
```

Raku montras tipon en krampoj, kiel en `(Dog)`. Do `Dog` kaj `Dog.new` havas la saman tipon, `Dog`. Sed estas diferenco. `Dog` estas la tipo mem, kaj `Dog.new` estas objekto de tiu tipo.

{% include nav.html %}
