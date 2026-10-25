---
title: Defaŭltaj valoroj
---

{% include menu.html %}

Poziciaj kaj nomitaj parametroj povas havi defaŭltajn valorojn. Parametro kun defaŭlta valoro ne estas deviga. Vi povas preterlasi ĝin, kiam vi vokas la funkcion. Tiam la parametro ricevas sian defaŭltan valoron.

## Poziciaj parametroj

Jen ekzemplo. La funkcio havas pozician parametron kun defaŭlta valoro:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

La unua voko pasas nomon kiel sian solan argumenton. Do ĝi presas `Hello, Merinda!`. La dua voko uzas la defaŭltan valoron. Ĝi presas `Hello, World!`.

Kelkfoje funkcio havas pli ol unu parametron. Tiam la defaŭltaj valoroj devas esti ĉe la fino de la listo:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # ĝuste
# sub f($a = 10, $b = 20, $c, $d) { . . . } # MALĜUSTE
```

## Nomitaj parametroj

Nomitaj parametroj ricevas defaŭltajn valorojn laŭ la sama maniero:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

La ordo de nomitaj parametroj ne gravas. Do ĉiu el ili povas havi defaŭltan valoron. Eĉ la unua en la listo povas havi ĝin:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
