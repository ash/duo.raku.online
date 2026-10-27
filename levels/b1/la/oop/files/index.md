---
title: Cum plicis laborare
translations_gpt:
---

{% include menu.html %}

In casu simplicissimo totum archivum simul legis aut scribis.

Procedura `spurt` chordam in archivum scribit. Archivum creat, aut contenta eius substituit si archivum iam exsistit:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

Procedura `slurp` totum archivum retro in chordam legit:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Simul `spurt` et `slurp` data servant et iterum onerant, duabus tantum brevibus vocationibus. Hic `print` loco `say` adhibemus, quia textus iam nova linea desinit.

Hae procedurae cum toto archivo simul laborant. Optimae sunt pro archivis quae satis parva sunt ut facile in memoriam intrent. Pro maioribus archivis [tractabulo archivi](/la/oop/file-handles) uteris. Eo etiam eges ut cum archivo linea post lineam labores. De tractabulis archivorum in fine huius sectionis agimus. Argumentum sequens ostendit quomodo archivo aliquid addas, neque id substituas.

{% include nav.html %}
