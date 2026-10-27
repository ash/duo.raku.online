---
title: Exitum capere
translations_gpt:
---

{% include menu.html %}

Interdum programma tuum legere debet quod programma externum imprimit, non id in screen ostendere. Ad hoc `:out` trade cum programma incipis. `Proc` redditum tum tractabulum `.out` habet, ex quo legere potes:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` exitum vulgarem programmatis in `Proc` mittit. Tractabulum `.out` sicut tractabula archivorum ex sectione superiore operatur. `.slurp` omnia ex eo simul legit. Adverbium `:close` compendium utile est: post lectionem tractabulum pro te claudit. Eandem purgationem ipse per `.close` in tractabulo archivi fecisti. Sic nihil apertum manet. Denique `.chomp` novam lineam removet quam `echo` in fine addit.

Idem cum `shell` operatur. Hoc utile est cum effectum fistulae capere vis:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Etiam fluentum errorum capere potes, per `:err` et tractabulum conveniens `.err`. Si et `:out` et `:err` tradis, duo fluenta separata manent. Utrumque suum tractabulum habet, itaque ea separatim legere potes:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Hic imperatum interpretis unam lineam ad exitum vulgarem et unam ad errorem vulgarem imprimit. Pars `>&2` secundam lineam illuc redirigit. Utrumque fluentum petivimus, itaque `.out` et `.err` ea separatim tenent. Exitus ordinarius programmatis numquam cum nuntiis errorum eius miscetur.

Exitum capere tibi permittit programmate externo ut lapide aedificandi uti. Id curris, effectum eius legis, et cum illis datis in programmate tuo pergis.

{% include nav.html %}
