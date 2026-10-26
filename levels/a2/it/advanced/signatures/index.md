---
title: Firme
---

{% include menu.html %}

Nella parte Essentials, hai [scritto delle subroutine](/it/essentials/functions). Avevano parametri posizionali e nominati. I parametri avevano valori predefiniti. La lista dei parametri è la _signature_. Questa sezione mostra altre due cose che una signature può fare. Può rendere opzionale un parametro. E può raccogliere un numero qualsiasi di argomenti in più.

## Parametri opzionali

Un parametro con un punto interrogativo dopo è _opzionale_. Il chiamante può non passarlo. Allora il parametro è indefinito. Così puoi dare un valore da usare al suo posto. Usa per questo l'operatore defined-or `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Qui chiamiamo `greet` con un solo argomento. Allora `$greeting` è indefinito. Così `//` dà invece `'Hello'`.

## Parametri slurpy

Un parametro con un `*` è _slurpy_. Prende tutti gli argomenti che restano. Scrivi un array slurpy con `*@`. Raccoglie un numero qualsiasi di argomenti posizionali in un array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Puoi usare parametri normali insieme a uno slurpy. Prima i parametri fissi ricevono i loro valori. Tutto il resto va nell'array slurpy:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Un hash slurpy funziona allo stesso modo. Lo scrivi con `*%`. Raccoglie tutti gli argomenti nominati in più in un hash:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

I due argomenti nominati diventano chiavi di `%options`. Così il programma stampa:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
