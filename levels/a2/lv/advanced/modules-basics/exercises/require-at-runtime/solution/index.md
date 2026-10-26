---
title: 'Risinājums: Ielādēt izpildes laikā'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

Programma `require-import.raku`:

```raku
sub MAIN(Bool :$quiet) {
    if $quiet {
        say 'Silence.';
    }
    else {
        require Greeting <&hello>;
        say hello('Sam');
    }
}
```

🦋 Abus pirmkoda failus atrodiet direktorijā [exercises/advanced/modules-basics/require-at-runtime](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/require-at-runtime).

## Izvade

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Komentāri

1. `require` ielādē moduli izpildes laikā, nevis kompilēšanas laikā. Pats par sevi tas neko neimportē. Tāpēc Raku nepazīst nosaukumu `hello`.

1. Saraksts `<&hello>` liek `require` importēt šo vienu nosaukumu. Pēc šī teikuma jūs varat tieši izsaukt `hello('Sam')`. Tas dod `Hello, Sam!`.

1. Tieši *tāpēc* mums ir `require`. Tas darbojas izpildes laikā. Tāpēc tas var būt `if` iekšpusē. Ar `--quiet` programma izlaiž šo zaru. Tātad tā nekad neielādē moduli. `use` vienmēr ielādē moduli. Tas darbojas kompilēšanas laikā.

{% include nav.html %}
