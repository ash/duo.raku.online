---
title: Definire un enum
---

{% include menu.html %}

Per dichiarare un enum, scrivi la parola chiave `enum`. Poi scrivi un nome e la lista dei nomi delle costanti:

```raku
enum Colour <red green blue>;
```

Questo crea un nuovo tipo, `Colour`. Crea anche tre costanti: `red`, `green` e `blue`. Puoi usare una costante solo con il suo nome:

```raku
say red;   # red
say green; # green
```

Dietro ogni nome c'è un numero. Raku sceglie i numeri per te. Parte da zero e segue l'ordine della tua lista. Quindi `red` è `0`, `green` è `1` e `blue` è `2`. I valori hanno un ordine. Così puoi confrontare le costanti:

```raku
say red < blue; # True
```

Una variabile può avere l'enum come tipo. Allora la variabile accetta solo queste costanti:

```raku
my Colour $c = green;
say $c; # green
```

Una costante e un'altra cosa possono avere lo stesso nome. Allora scrivi il nome dell'enum e `::` prima della costante. Questo funziona sempre:

```raku
say Colour::red; # red
```

Un enum mette insieme costanti collegate tra loro. Dà loro un nome e un tipo. Il codice con queste costanti è molto più chiaro del codice con solo numeri. Il prossimo argomento parla dei [numeri dietro i nomi](/it/advanced/enumerations/values-and-keys).

{% include nav.html %}
