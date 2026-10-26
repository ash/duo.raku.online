---
title: 'Risinājums: Ielādēt izpildes laikā'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `require` ielādē moduli izpildes laikā, nevis kompilēšanas laikā. Pats par sevi tas neko neimportē. Tāpēc Raku nepazītu vienkāršu `hello`.

1. Saraksts `<&hello>` liek `require` importēt šo vienu simbolu. Tāpēc pēc šī teikuma jūs varat tieši izsaukt `hello('Sam')`, un tas dod `Hello, Sam!`.

1. Tieši *tam* ir domāts `require`. Tā kā tas darbojas izpildes laikā, tas var būt `if` iekšpusē. Kad jūs dodat `--quiet`, šis zars tiek izlaists un modulis netiek ielādēts nekad. `use` kompilēšanas laikā nevarētu izvairīties no tā ielādes.

{% include nav.html %}
