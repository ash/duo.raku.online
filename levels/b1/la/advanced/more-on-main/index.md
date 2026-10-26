---
title: Plus de MAIN subprogrammatibus
translations_gpt: true
---

{% include menu.html %}

In parte Essentialium `MAIN` [ad argumenta lineae mandati accipienda](/la/essentials/the-main-function/reading-command-line-arguments) adhibuisti. Sed Raku plura tibi cum `MAIN` facit quam valores tantum tradere.

## Nuntius de usu

Interdum argumenta lineae mandati signaturae `MAIN` non conveniunt. Tum Raku corpus non exsequitur. Pro eo _nuntium de usu_ imprimit, quem Raku sua sponte creat. Nuntius explicat quomodo programma vocandum sit.

Inspice hoc programma:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Si id recte vocas, personam salutat:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Si id sine argumento vocas, signatura non congruit. Itaque Raku nuntium de usu pro salutatione imprimit:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku nuntium ex nominibus parametrorum construit. Itaque eis nomina clara da, et textum auxilii utilem gratis accipis.

## Argumenta nominata

Parametri `MAIN` tam nominati quam positionarii esse possunt. Parametrus nominatus fit optio lineae mandati ut `--option=value`. Si valorem praefinitum habet, optio non necessaria est:

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
