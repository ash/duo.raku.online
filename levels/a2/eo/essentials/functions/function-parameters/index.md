---
title: Funkciaj parametroj
---

{% include menu.html %}

Nun ni transdonas iom da datumoj al funkcio. Funkcio povas preni parametrojn. Skribu ilin en krampoj tuj post la nomo de la funkcio.

```raku
sub greet($name) {
    say "Saluton, $name!";
}
```

Nun vi povas uzi la funkcion. Vi povas transdoni malsamajn argumentojn al ĝi:

```raku
greet('Alla');
greet('Karl');
```

Ni vokas la saman funkcion du fojojn. Nun la rezultoj estas malsamaj:

```console
$ raku t.raku
Saluton, Alla!
Saluton, Karl!
```

%%tipblock

## Parametro aŭ argumento

Homoj ofte uzas ĉi tiujn du vortojn laŭ la sama maniero. Ambaŭ vortoj temas pri ‘la sama afero’. Sed ili rigardas ĝin el malsamaj flankoj.

* Parametro estas tio, kion la funkcio atendas ricevi.
* Argumento estas tio, kion vi transdonas al la funkcio.

En la supra ekzemplo, `$name` estas la parametro de la funkcio. `'Alla'` kaj `'Karl'` estas ĝiaj argumentoj.

%%/tipblock

## Pli da parametroj

Funkcio povas preni pli ol unu parametron. Tiam metu komojn inter ili:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Sen parametroj

Funkcio ankaŭ povas tute ne havi parametrojn. Tiam vi povas skribi malplenan paron de krampoj. Aŭ vi povas preterlasi la krampojn. Ni faris tion ĉe [la komenco de ĉi tiu sekcio](../).

```raku
sub greet() {
    say 'Saluton, Mondo!';
}

greet();
```

## Subskribo

La listo de parametroj de funkcio estas ĝia _subskribo_.

{% include nav.html %}
