# site.raku — everything about this build that is not code.
#
# Read by build.raku with EVALFILE, the same arrangement the tour and the spec
# generators in raku.online use.

{
    # Where the course sources live. The generator only ever reads from here.
    course => %*ENV<RAKU_COURSE> // (%*ENV<HOME> ~ '/raku-course'),

    # Where the assembled site goes.
    out => 'www',

    # The shared stylesheet and scripts, copied into out/theme.
    theme-dir => 'theme',

    # The site is mounted at the root of its own domain.
    base => '',

    title => 'Raku Course Duo',

    # Every language the course is translated into, in the order the pickers
    # show them. `code` is the directory under the course root ('' is the
    # English original at the root); `speech` is the BCP-47 tag handed to the
    # browser's speech synthesiser; `name` is endonymic on purpose — you pick a
    # language in that language.
    languages => [
        { id => 'en', dir => '',   name => 'English',    en-name => 'English',    speech => 'en-GB' },
        { id => 'de', dir => 'de', name => 'Deutsch',    en-name => 'German',     speech => 'de-DE' },
        { id => 'nl', dir => 'nl', name => 'Nederlands', en-name => 'Dutch',      speech => 'nl-NL' },
        { id => 'es', dir => 'es', name => 'Español',    en-name => 'Spanish',    speech => 'es-ES' },
        { id => 'it', dir => 'it', name => 'Italiano',   en-name => 'Italian',    speech => 'it-IT' },
        { id => 'lv', dir => 'lv', name => 'Latviešu',   en-name => 'Latvian',    speech => 'lv-LV' },
        { id => 'ru', dir => 'ru', name => 'Русский',    en-name => 'Russian',    speech => 'ru-RU' },
        { id => 'uk', dir => 'uk', name => 'Українська', en-name => 'Ukrainian',  speech => 'uk-UA' },
        { id => 'bg', dir => 'bg', name => 'Български',  en-name => 'Bulgarian',  speech => 'bg-BG' },
        { id => 'eo', dir => 'eo', name => 'Esperanto',  en-name => 'Esperanto',  speech => 'eo' },
        { id => 'la', dir => 'la', name => 'Latina',     en-name => 'Latin',      speech => 'la' },
    ],

    # What a first-time visitor gets before touching the pickers.
    default-pair => { base => 'en', target => 'de' },

    # Sentence-splitting: strings after which a full stop does NOT end a
    # sentence. Latin-script abbreviations and the Cyrillic ones the Russian,
    # Ukrainian and Bulgarian translations actually use.
    abbreviations => <
        z.B d.h u.a u.U bzw usw etc ca vgl bspw ggf inkl evtl Nr Abb Bd Hrsg
        e.g i.e cf vs Mr Mrs Ms Dr Prof St approx fig no vol pp
        p.ej p.e ej etc.º núm págs pág
        cioè ecc pag es
        bijv o.a bijv.b zgn nl
        piem u.c t.i
        напр т.е т.к см рис табл гл стр др пр
        зокрема напр т.д
    >,

    # Words too common to be worth a vocabulary card. Clicking one still works;
    # it is only kept out of the "new words on this page" list.
    #
    # Deliberately short: the frequency ranking already does most of this job,
    # and a stop-list that guesses at eleven languages would be worse than the
    # corpus's own statistics.
    stopword-rank => 120,
}
