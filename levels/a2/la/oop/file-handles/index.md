---
title: Ansae plicarum
translations_gpt:
---

{% include menu.html %}

Facile est totum archivum simul legere aut scribere. Sed interdum per archivum linea post lineam ire vis. Aut saepe in archivum scribere vis. Archivum toto illo tempore apertum manere debet. Ad hoc _tractabulo archivi_ uteris. Tractabulum archivi est obiectum pro archivo aperto. Per id ex archivo legis aut in id scribis.

Ecce modus facillimus ut archivum linea post lineam legas. Ne tractabulum quidem ipse facere debes. Methodum `lines` in obiecto semitae voca. Lineas tibi unam post alteram dat. Paratae sunt ad anulum `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Quaeque `$line` una linea est. In fine eius nulla nova linea est. Programma imprimit:

```
ONE
TWO
THREE
```

Etiam per tractabulum in archivum scribere potes. Primum archivum per `open` cum vexillo `:w` aperi. Hoc vexillum scribendi est. Deinde methodis `say` aut `print` tractabuli utere. Ad finem id per `close` claude:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Ad finem tractabulum claude. Tum omnia data tua vere in discum eunt. Quaedam archiva nimis magna sunt pro memoria. Ea tota simul legere non potes. Talia archiva plerumque linea post lineam legis, ut supra.

{% include nav.html %}
