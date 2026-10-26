---
title: Plus de MAIN subprogrammatibus
translations_gpt: true
---

{% include menu.html %}

In parte Essentialium `MAIN` [ad argumenta lineae mandati accipienda](/la/essentials/the-main-function/reading-command-line-arguments) adhibuisti. Raku plura tibi cum `MAIN` facit. Non solum valores tradit.

## Nuntius de usu

Interdum argumenta lineae mandati cum signatura `MAIN` non congruunt. Signatura est index parametrorum eius. Tum Raku corpus non exsequitur. Pro eo _nuntium de usu_ imprimit. Raku hunc nuntium ipse facit. Nuntius ostendit quomodo programma curras.

Specta hoc programma:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Recte id curre. Tum personam salutat:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Nunc id sine argumento curre. Signatura non congruit. Itaque Raku nuntium de usu imprimit. Non salutat:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku nuntium ex nominibus parametrorum facit. Itaque parametris bona nomina da. Tum textus auxilii utilis est, et nihil amplius laboras.

## Argumenta nominata

`MAIN` parametros positionarios habere potest. Etiam parametros nominatos habere potest. In linea mandati parametrus nominatus fit optio ut `--option=value`. Ei valorem praefinitum dare potes. Tum optio non necessaria est:

```raku
sub MAIN(:$name = 'World') {
    say "Hello, $name!";
}
```

```console
$ raku hello.raku
Hello, World!

$ raku hello.raku --name=Raku
Hello, Raku!
```

{% include nav.html %}
