---
title: Meer over MAIN-subroutines
translations_gpt: true
---

{% include menu.html %}

In het onderdeel Essentials heb je `MAIN` gebruikt [om commandoregelargumenten te krijgen](/nl/essentials/the-main-function/reading-command-line-arguments). Raku doet meer voor je met `MAIN`. Het geeft niet alleen de waarden door.

## Het gebruiksbericht

Soms passen de commandoregelargumenten niet bij de signatuur van `MAIN`. De signatuur is de lijst van parameters. Dan voert Raku de body niet uit. In plaats daarvan drukt het een _gebruiksbericht_ af. Raku maakt dit bericht zelf. Het bericht laat zien hoe je het programma start.

Kijk naar dit programma:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Start het op de goede manier. Dan zegt het hallo tegen de persoon:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Start het nu zonder argument. De signatuur past niet. Dus drukt Raku het gebruiksbericht af. Het zegt geen hallo:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku maakt het bericht uit de namen van de parameters. Geef de parameters dus goede namen. Dan is de helptekst nuttig, en je doet geen extra werk.

## Benoemde argumenten

`MAIN` kan positionele parameters hebben. Het kan ook benoemde parameters hebben. Op de commandoregel wordt een benoemde parameter een optie zoals `--optie=waarde`. Je kunt hem een standaardwaarde geven. Dan is de optie niet verplicht:

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
