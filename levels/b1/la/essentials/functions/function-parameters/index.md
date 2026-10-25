---
title: Parametra functionum
---

{% include menu.html %}

Nunc tempus est aliqua data ad functionem transmittere. Functio parametra accipere potest, quae in parenthesibus statim post nomen eius enumeras.

```raku
sub greet($name) {
    say "Hello, $name!";
}
```

Nunc functione uti potes et ei diversa argumenta transmittere:

```raku
greet('Alla');
greet('Karl');
```

Nunc duae vocationes eiusdem functionis diversos eventus dant:

```console
$ raku t.raku
Hello, Alla!
Hello, Karl!
```

%%tipblock

## Parametrum vel argumentum

Homines hos duos terminos saepe adhibent quasi idem significent. Ambo ad ‘eandem rem’ spectant, sed ex diversis prospectibus.

* Parametrum est quod functio expectat.
* Argumentum est quod ei transmittis.

In exemplo supra `$name` est parametrum functionis. Eius argumenta sunt `'Alla'` et `'Karl'`.

%%/tipblock

## Plura parametra

Functio plus quam unum parametrum accipere potest. In hoc casu omnia enumera, cum commatibus inter ea:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Nulla parametra

Bene est si functio omnino nulla parametra accipit. Tum vel par parenthesium vacuum addere potes vel eas omnino omittere. Eas in [initio huius sectionis](../) omisimus.

```raku
sub greet() {
    say 'Hello, World!';
}

greet();
```

## Signatura

Index parametrorum functionis vocatur _signatura_.

{% include nav.html %}
