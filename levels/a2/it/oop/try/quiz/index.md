---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside e poi outside
0 | Boom!
0 | un errore

{% include quiz.html %}

<div class="extended-explanation">

Qui succedono due cose. Primo, `die` ferma subito il resto del blocco `try`. Quindi il programma non arriva mai alla riga `say 'inside'`. Non viene stampato niente dall'interno del blocco. Secondo, `try` intercetta l'eccezione, l'errore di `die`. Quindi il programma stesso non si ferma. Va avanti dopo il blocco. `say 'outside'` gira come al solito. Quindi il programma stampa una sola riga: `outside`. Puoi anche guardare `$r` e `$!`. `$r` non è definito. Il messaggio `Boom!` aspetta in `$!`.

</div>

{% include nav.html %}
