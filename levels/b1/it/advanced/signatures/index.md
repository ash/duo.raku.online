---
title: Firme
---

{% include menu.html %}

Nella parte Essentials hai [definito subroutine con parametri posizionali e nominati](/it/essentials/functions). Hai anche dato ai parametri valori predefiniti. La lista dei parametri si chiama _signature_. Questa sezione mostra altre due cose che una signature può fare. Può rendere opzionale un parametro, e può raccogliere un numero qualsiasi di argomenti in più.

## Parametri opzionali

Un parametro seguito da un punto interrogativo è _opzionale_. Questo vuol dire che il chiamante può ometterlo. In quel caso, il parametro è indefinito. Così puoi dargli un valore di riserva con l'operatore defined-or `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Quando `greet` viene chiamata con un solo argomento, `$greeting` è indefinito. Quindi `//` usa invece `'Hello'`.

## Parametri slurpy

Un parametro segnato con un `*` è _slurpy_. Prende tutti gli argomenti rimanenti. Un array slurpy, scritto `*@`, raccoglie un numero qualsiasi di argomenti posizionali in un array:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Puoi mescolare parametri normali con uno slurpy. I parametri fissi ricevono per primi i loro valori. Quello che resta va nell'array slurpy:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Un hash slurpy funziona allo stesso modo. Lo scrivi come `*%`, e raccoglie in un hash tutti gli argomenti nominati in più:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

I due argomenti nominati diventano chiavi in `%options`, quindi il programma stampa:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
