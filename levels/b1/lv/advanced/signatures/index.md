---
title: Paraksti
translations_gpt:
---

{% include menu.html %}

Pamatu daļā jūs [definējāt apakšprogrammas ar pozicionāliem un nosauktiem parametriem](/lv/essentials/functions). Jūs arī devāt parametriem noklusējuma vērtības. Parametru sarakstu sauc par _signatūru_. Šī sadaļa parāda vēl divas lietas, ko signatūra var darīt. Tā var padarīt parametru neobligātu, un tā var savākt jebkuru skaitu papildu argumentu.

## Neobligatie parametri

Parametrs ar jautājuma zīmi aiz tā ir _neobligāts_. Tas nozīmē, ka izsaucējs var to izlaist. Tādā gadījumā parametrs ir nedefinēts. Tāpēc jūs varat tam dot rezerves vērtību ar definēts-vai operatoru `//`:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Kad `greet` izsauc ar vienu argumentu, `$greeting` ir nedefinēts. Tāpēc `//` tā vietā izmanto `'Hello'`.

## Uzsucosie parametri

Parametrs, kas atzīmēts ar `*`, ir _uzsūcošs_ (slurpy). Tas paņem visus atlikušos argumentus. Uzsūcošs masīvs, ko raksta kā `*@`, savāc jebkuru skaitu pozicionālo argumentu masīvā:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Jūs varat jaukt parastus parametrus ar uzsūcošu. Fiksētie parametri saņem vērtības pirmie. Viss, kas paliek pāri, nonāk uzsūcošajā masīvā:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Uzsūcošs hešs darbojas tāpat. To raksta kā `*%`, un tas savāc visus papildu nosauktos argumentus hešā:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

Abi nosauktie argumenti kļūst par atslēgām hešā `%options`, tāpēc programma izdrukā:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
