---
title: 'Kvizo: `if`'
---

{% include menu.html %}

Kompletigu ĉi tiujn programojn.

## 1

Ĉi tiu programo kontrolas la aĝon. Ĉu ĝi estas 21 jaroj aŭ pli?

{:.quiz-code}
. | my $age = 24;
>= { | if $age ␣␣ 21 ␣ | Ambaŭ `>=` kaj `≥` povas esti uzataj ĉi tie.
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Ni povas vendi ĝin al vi.&apos;;
} | ␣

## 2

Ĉi tie, vi devas kontroli, ĉu `$x` estas inter 10 kaj 15. Ne enkalkulu la nombrojn 10 kaj 15 mem.

{:.quiz-code}
. | my $x = 12.3;
&lt; &lt; | if 10 ␣ $x ␣ 15 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;La valoro de $x estas akceptebla.&apos;;
. | }

{% include quiz.html %}
<script>
    replacements = [['≥', '>=']];
</script>

{% include nav.html %}
