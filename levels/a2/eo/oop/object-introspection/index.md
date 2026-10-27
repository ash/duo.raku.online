---
title: Introspekti objektojn
translations_gpt:
---

{% include menu.html %}

En la [sekcio pri ujoj](/eo/advanced/containers), vi uzis `.^name`. Per ĝi, vi demandis al valoro ĝian tipon. La samaj metavokoj `.^` ankaŭ funkcias kun klasoj kaj objektoj. Per ili, vi povas vidi iliajn nomojn kaj iliajn atributojn. Vi ankaŭ povas vidi ilian lokon en la arbo de klasoj.

Metametodo estas metodo, kiun vi vokas per `.^`. La metametodo `.^name` redonas la nomon de la klaso:

```raku
class Dog {
    has Str $.name;
    method bark { 'Woof' }
}

say Dog.^name; # Dog
```

La metametodo `.^attributes` listigas la atributojn de la klaso. Por ĉiu atributo, vi vidas ĝian tipon. Vi ankaŭ vidas ĝian internan privatan nomon. Tio estas la formo `$!`. Vi vidis ĝin ĉe [privataj atributoj](/eo/oop/methods/private-attributes):

```raku
say Dog.^attributes; # (Str $!name)
```

Introspekto signifas, ke vi demandas objekton pri ĝi mem. Ĝi estas utila por iloj, kiuj laboras kun ĉiu speco de objekto. Ekzemple, ilo povas presi ĉiun atributon de objekto. Ĝi ne bezonas scii la klason de la objekto antaŭe. La sekva temo estas pri la hereda ĉeno de klaso. Ĝi estas la linio de ĝiaj patraj klasoj.

{% include nav.html %}
