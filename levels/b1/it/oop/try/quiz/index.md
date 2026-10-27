---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

Cosa stampa il programma seguente?

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

Qui succedono due cose. Primo, `die` ferma subito il resto del blocco `try`. Quindi la riga `say 'inside'` non viene mai eseguita, e dal blocco non viene stampato niente. Secondo, `try` intercetta l'eccezione, quindi il programma stesso non si ferma. Continua dopo il blocco, e `say 'outside'` gira come al solito. Quindi l'unica riga stampata è `outside`. Se guardassi, vedresti che `$r` non è definito. Il messaggio `Boom!` starebbe aspettando in `$!`.

</div>

{% include nav.html %}
