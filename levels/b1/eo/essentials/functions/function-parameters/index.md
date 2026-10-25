---
title: Funkciaj parametroj
---

{% include menu.html %}

Nun estas tempo transdoni iom da datumoj al funkcio. Funkcio povas preni parametrojn, kiujn vi listigas en krampoj tuj post ĝia nomo.

```raku
sub greet($name) {
    say "Saluton, $name!";
}
```

Nun vi povas uzi la funkcion kaj transdoni al ĝi malsamajn argumentojn:

```raku
greet('Alla');
greet('Karl');
```

Nun la du vokoj de la sama funkcio donas malsamajn rezultojn:

```console
$ raku t.raku
Saluton, Alla!
Saluton, Karl!
```

%%tipblock

## Parametro aŭ argumento

Homoj ofte uzas ĉi tiujn du terminojn, kvazaŭ ili signifus la samon. Ambaŭ rilatas al ‘la sama afero’, sed el malsamaj vidpunktoj.

* Parametro estas tio, kion la funkcio atendas.
* Argumento estas tio, kion vi transdonas al ĝi.

En la supra ekzemplo, `$name` estas la parametro de la funkcio. Ĝiaj argumentoj estas `'Alla'` kaj `'Karl'`.

%%/tipblock

## Pli da parametroj

Funkcio povas preni pli ol unu parametron. En ĉi tiu kazo, listigu ĉiujn, kun komoj inter ili:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Sen parametroj

Estas en ordo, se funkcio tute ne prenas parametrojn. Tiam vi povas aŭ aldoni malplenan paron de krampoj, aŭ tute preterlasi ilin. Ni preterlasis ilin ĉe [la komenco de ĉi tiu sekcio](../).

```raku
sub greet() {
    say 'Saluton, Mondo!';
}

greet();
```

## Subskribo

La listo de parametroj de funkcio nomiĝas _subskribo_.

{% include nav.html %}
