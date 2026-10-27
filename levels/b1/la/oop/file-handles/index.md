---
title: Ansae plicarum
translations_gpt:
---

{% include menu.html %}

Totum archivum simul legere aut scribere facile est. Sed interdum per archivum una linea post aliam ire vis. Aut fortasse archivum apertum servare et saepe in id scribere vis. Ad hoc _tractabulo archivi_ uteris.

Ecce modus simplicissimus ut archivum linea post lineam legas. Ne tractabulum quidem ad hoc creare debes. Methodus `lines` obiecti semitae lineas tibi unam post alteram dat. Paratae sunt ad anulum `for`:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Quaeque `$line` una linea est, sine nova linea in fine. Programma imprimit:

```
ONE
TWO
THREE
```

Ut per tractabulum scribas, archivum per `open` cum vexillo `:w` (scribendi) aperi. Deinde methodis `say` aut `print` tractabuli utere. Cum finivisti, id per `close` claude:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Tractabulum claudere curat ut omnia quae scripsisti vere in disco serventur. Quaedam archiva nimis magna sunt ut tota simul in memoriam veniant. Ea plerumque linea post lineam legis, ut supra.

{% include nav.html %}
