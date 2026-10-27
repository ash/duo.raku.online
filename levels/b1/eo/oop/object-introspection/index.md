---
title: Introspekti objektojn
translations_gpt:
---

{% include menu.html %}

En la [sekcio pri ujoj](/eo/advanced/containers), vi uzis `.^name` por demandi al valoro ĝian tipon. Per la samaj metavokoj `.^`, vi povas rigardi en klason kaj ĝiajn objektojn. Vi povas vidi iliajn nomojn, iliajn atributojn kaj ilian lokon en hierarkio de klasoj.

La metametodo `.^name` redonas la nomon de la klaso:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

La metametodo `.^attributes` listigas la atributojn de la klaso. Vi vidas ĉiun kun ĝia tipo kaj ĝia interna privata nomo. Tio estas la formo `$!`, kiun vi renkontis ĉe [privataj atributoj](/eo/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

Introspekto estas utila por iloj, kiuj laboras kun ĉiu speco de objekto. Ekzemple, tia ilo povas presi ĉiun atributon de objekto. Ĝi ne bezonas scii la klason antaŭe. La sekva temo montras, kiel vidi la heredan ĉenon de klaso.

{% include nav.html %}
