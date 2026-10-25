---
title: Defaŭltaj valoroj
---

{% include menu.html %}

Kaj poziciaj kaj nomitaj parametroj povas havi defaŭltajn valorojn. Se parametro havas defaŭltan valoron, vi povas preterlasi ĝin en funkcia voko.

## Poziciaj parametroj

Jen ekzemplo de defaŭlta valoro por pozicia parametro:

```raku
sub greet($name = 'World') {
    say "Hello, $name!";
}

greet('Merinda');
greet();
```

En la unua voko, la nomo estas la sola argumento, do la rezulto estas `Hello, Merinda!`. La dua voko uzas la defaŭltan valoron kaj presas `Hello, World!`.

Se funkcio havas plurajn parametrojn, nur la lastaj povas havi defaŭltajn valorojn:

```raku
sub f($a, $b, $c = 42, $d = 50) { . . . } # ĝuste
# sub f($a = 10, $b = 20, $c, $d) { . . . } # MALĜUSTE
```

## Nomitaj parametroj

Vi donas defaŭltajn valorojn al nomitaj parametroj per la sama sintakso:

```raku
sub greet(:$name = 'World') {
    say "Hello, $name!";
}

greet(name => 'Merinda'); # Hello, Merinda!
greet(); # Hello, World!
```

La ordo de nomitaj parametroj ne gravas. Do iu ajn el ili povas havi defaŭltan valoron, eĉ la unua:

```raku
sub greet(:$greeting = 'Hello', :$name) {
    say "$greeting, $name!";
}

greet(name => 'Alla'); # Hello, Alla!
```

{% include nav.html %}
