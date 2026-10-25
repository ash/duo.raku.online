---
title: Parametra functionum
---

{% include menu.html %}

Nunc aliqua data ad functionem transmittimus. Functio parametra accipere potest. Ea in parenthesibus statim post nomen functionis scribe.

```raku
sub greet($name) {
    say "Hello, $name!";
}
```

Nunc functione uti potes. Diversa argumenta ei transmittere potes:

```raku
greet('Alla');
greet('Karl');
```

Eandem functionem bis vocamus. Nunc eventus diversi sunt:

```console
$ raku t.raku
Hello, Alla!
Hello, Karl!
```

%%tipblock

## Parametrum vel argumentum

Homines haec duo verba saepe eodem modo adhibent. Ambo verba ‘eandem rem’ significant. Sed eam ex diversis partibus spectant.

* Parametrum est quod functio accipere exspectat.
* Argumentum est quod functioni transmittis.

In exemplo supra `$name` est parametrum functionis. `'Alla'` et `'Karl'` sunt eius argumenta.

%%/tipblock

## Plura parametra

Functio plus quam unum parametrum accipere potest. Tum commata inter ea pone:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Nulla parametra

Functio etiam omnino nulla parametra habere potest. Tum par parenthesium vacuum scribere potes. Aut parentheses omittere potes. Hoc fecimus in [initio huius sectionis](../).

```raku
sub greet() {
    say 'Hello, World!';
}

greet();
```

## Signatura

Index parametrorum functionis est eius _signatura_.

{% include nav.html %}
