\version "2.18.2"
\pointAndClickOff
\paper
{
  #(set-paper-size "a4")
  min-systems-per-page = #6
  ragged-last-bottom = ##f
  ragged-right = ##f
}

TUTTI = \set fontSize = #-2
SOLO = \unset fontSize
TREB = \clef treble
BASS = \clef bass
LEFT = \change Staff = "lower"
RIGHT = \change Staff = "upper"
U = { \ottava #1 \set Staff.ottavation = #"8" }
D = { \ottava #-1 \set Staff.ottavation = #"8" }
N = \ottava #0
CRESC = _\markup \italic "cresc."
DIM = _\markup \italic "dim."
FREE = \override Staff.TimeSignature #'stencil = ##f
NOFREE = \revert Staff.TimeSignature #'stencil

\header
{
  title = "Piano Concerto No. 5"
  tubtitle = "Emperor"
  composer = "Beethoven, Op. 73"
  tagline = ##f
}

\score
{
  \new PianoStaff
  <<
    % Right Hand
    \new Staff = "upper" \relative c'
    {
      #(define afterGraceFraction (cons 15 16))
      \tempo "Allegro."
      \time 4/4 \key ees \major \TREB
      % 1
      \TUTTI
      < ees g ees' >1 \ff |
      % 2
      \SOLO \time 30/4 \FREE \stemUp
      s4 \tuplet 3/2 { g,16 \( [ bes ees ] } \tuplet 5/4 { g ^( [ g, bes ees g ] ) \) } s4 \tuplet 3/2 { g16 [ bes ees ] } \tuplet 5/4 { g ( [ g, bes ees g ] ) } s4 \stemNeutral \U \tuplet 7/4 { g16 ( [ bes ees g bes, ees g ] ) } bes [ a bes a ] bes [ a bes a ] bes [ a bes a ] \bar "" bes [ a bes a ] bes [ d, f ees ] g [ a, c bes ] \N ees [ fis, aes g ] bes [ d, f ees ] g [ a, c bes ] ees [ fis, aes g ] bes [ d, f ees ] ees1 \trill d16 [ ees f g aes bes c d ees f g aes bes aes g aes ] \bar "" c8 _\markup \italic "espressivo" ( [ bes ] ) aes-. ( [ g-. ] ) g ( [ f ] ) ees-. ( [ d-. ] )
      \time 4/4 \SOLO
      < c, ees aes c >4 \ff r r2 |
      % 4
      \time 143/16 \stemUp
      \LEFT r8 r16 \tuplet 3/2 { c,16 ^( [ ees aes ] ) } \tuplet 5/4 { c ^( [ c, ees aes c ] ) } r8 r16 \RIGHT \tuplet 3/2 { c ( [ ees aes ] ) } \tuplet 5/4 { c ( [ c, ees aes c ] ) } r8 r16 \tuplet 3/2 { c ^( [ ees aes ] ) } c [ c, ees aes ] \stemDown \bar "" \stemNeutral \U \tuplet 3/2 { c ( [ ees aes ] ) } c [ b c b ] c [ g aes g ] aes [ \N b, c b ] c [ g aes g ] aes [ b, c b ] c [ g aes g ] aes [ b, c b ] c1 \trill b16 [ c d ees ] f [ g aes bes ] c1 \trill \bar "" b16 [ c d ees f g aes bes c \U d ees f g aes bes c bes aes g f ees d ] \N c [ bes aes g f ees d c ] < ees aes >4-. _\markup \italic "espressivo" ( < d g >-. )
      <<
        {
          s4 \stemDown bes |
        } \\
        {
          < c f >4 ^( \stemUp g'8 [ ees ] ) |
        }
      >>
      < aes, bes d f aes >4 \ff r r2 |
      % 6
      \time 12/4 \stemUp
      \LEFT bes,,16 [ bes' c, c' ] d, [ \RIGHT d' \LEFT ees, \RIGHT ees' ] \LEFT f, [ \RIGHT f' \LEFT g, \RIGHT g' ] \LEFT aes, [ \RIGHT aes' \LEFT bes, \RIGHT bes' ] c, [ c' d, d' ] \stemNeutral ees, [ ees' f, f' ] g, [ g' aes, aes' ] bes, [ bes' c, c' ] d, [ d' ees, ees' ] f, [ f' g, g' ] \tuplet 3/2 { < aes aes, >4 ( < aes bes, > < aes c, > ) } |
      \time 4/4
      < aes d, > ( < g g, > < f b, >4. ) < ees ees, >8 ( |
      < des g, > [ < c c, > ] < bes e, > [ < aes aes, > ] < g bes, > [ < f c > ] < ees ges, > [ < d f, > ] |
      \time 89/16
      < c g > [ < bes f > ] ) < aes f > [ < aes f > ] aes1~ \startTrillSpan aes2. \grace { g16 \stopTrillSpan [ aes ] } bes16 [ aes g f ] ees' [ d c bes ] g' [ f ees d ] bes' [ aes g f ] ees' [ d c bes ] \U g' [ f ees d ] bes' [ aes g f ] \bar "" c' [ bes aes g f ees d c \N bes aes g f ees d c bes a ] \tempo "a tempo" < aes d, bes >2 \p |
      \time 4/4
      < g ees bes > d \NOFREE |
      <<
        {
          % 11
          ees4 \f s2.
        } \\
        {
          % 11
          \TUTTI \once \override NoteColumn #'force-hshift = #1
          ees2~ \stemNeutral ees8 \tuplet 3/2 { f16 ( ees d ) } ees8-. f-.
        }
      >> |
      \TUTTI
      g4 ( ees c ) < bes g >8. < bes g >16 |
      <<
        {
          \TUTTI
          ees2 \sf ( ees8 ) \tuplet 3/2 { f16 ( ees d ) } ees8 f |
        } \\
        {
          \TUTTI
          < bes, g >8
        }
      >>
      g'4 ( ees c ) < g bes >8. < g bes >16 \BASS |
      <<
        {
          \TUTTI
          d'2 \sf ees8 r f r
        } \\
        {
          \TUTTI
          \repeat tremolo 4 { < aes, bes >16 f } < g bes > ees < g bes > ees < c' ees > f, < c' ees > f,
        }
      >> \TREB |
      % 16
      < g' ees bes >2 \sf < d aes' >4. \sf < d f >8 |
      <<
        {
          \TUTTI
          ees'2~ _\markup { \dynamic "p" \italic "dolce" } ees8 \tuplet 3/2 { f16 ( ees d } ees8 f ) |
          \stemNeutral < g, bes g' >4 ( < g bes ees > < g bes c > )
        } \\
        {
          \TUTTI
          ees2~ ees8 < g bes >4 < g bes >8 |
        }
      >>
      < bes g' bes >8. \f < g' bes >16 |
      < ees g ees' >2~ \f \> < ees g ees' >8 \p \tuplet 3/2 { f16 ( ees d } ees8 f ) |
      g4 ( ees c ) < bes g' bes >8. \f < g' bes >16 |
      % 21
      < d aes' d >2 \sf < ees g ees' >8 r < f c' f > r |
      < g bes ees g >2 \sf < aes d f aes >4. \sf < f aes d f >8 |
      <<
        {
          \TUTTI
          ees'2. ees,8 ( g16 bes ) |
          ees4 ( c aes ees ) |
          < ees g, ees >2. ees8 ( g16 bes ) |
          % 26
          ees4 ( c aes ees ) |
          < ees g, ees >2. ees8 ( ges16 bes ) |
          ees4 ( c a c8. bes16 ) |
          bes4
        } \\
        {
          \TUTTI
          < ees, g >4 bes g ees8 r |
          ees'1 |
          ees4 bes g ees8 r |
          % 26
          ees'1 |
          ees4 bes g ees8 r |
          < ees' a >2. < ees a >8. ( < d bes' >16 ) |
          d4
        }
      >>
      bes2 \sf c8-. bes-. |
      aes r < aes bes f' aes >2 \sf bes'8-. aes-. |
      % 31
      g4 < g ees bes g >2 \sf < aes ees bes >8-. < g ees bes >-. |
      <<
        {
          \TUTTI
          f4 g8-. f-. ees4 f8-. ees-.
        } \\
        {
          \TUTTI
          bes aes bes aes aes g aes g
        }
      >> |
      < f d' > bes,16 [ bes' ] bes, bes' bes, bes' bes, bes' bes, bes' c, c' bes, bes' |
      aes, [ aes' ] < aes f' > aes' < aes, f' > aes' < aes, f' > aes' < aes, f' > aes' < aes, f' > aes' < bes, f' > bes' < aes, f' > aes' |
      < ees g, > g < g bes > g' < g, bes > g' < g, bes > g' < g, bes > g' < g, bes > g' < aes, c > aes' < g, bes > g'
      % 36
      < aes, bes > f' < aes, bes > f' < aes, bes > g' < aes, bes > f' < g, bes > ees' < g, bes > ees' < aes, bes > f' < g, bes > ees' |
      < d bes f >8 bes,, [ ces bes ] ees d < ges bes, > \sf < f bes, > |
      ces' bes ees d ges f < d f ces' > \sf < d f bes > |
      ges f < d f ces' > \sf < d f bes > ges f < d f ces' > \sf < d f bes > |
      ges \DIM f < d f bes > < d f aes > ges f < d f bes > < d f aes > |
      % 41
      < ees ges >-. \pp r < d f >-. r ees-. r < d f >-. r |
      < ees ges >-. r < d f >-. r < ees ges >-. r < ees ges >-. < d f >-. |
      < ees ges >-. r < d f >-. r < ees ges >-. r < f aes >-. r |
      < f aes >2 < f aes >4 < ges bes >8-. < f aes >-. |
      < ges bes >-. r < f aes >-. r < ges bes >-. r < f aes >-. < ees ges >-. |
      % 46
      < f aes >-. r < ees ges >-. r < f aes >-. r < ees ges >-. < d f >-. |
      < ees ges >-. r < d f >-. r < ees ges >-. r < d f >-. r |
      < d f >2 < d f >4 f, |
      <<
        {
          \TUTTI
          g8 \p bes ( g' f ees bes ees f ) |
          g, bes ( g' f g bes, g' f ) |
          % 51
          g bes, ( g' f g bes, g' aes ) |
          r bes, ( aes' g aes bes, bes' aes )
        } \\
        {
          \TUTTI
          g,4 s2. |
          g4 s2. |
          % 51
          g4 s2. |
          s1
        }
      >> |
      bes'8 bes, ( bes' aes bes bes, aes' g ) |
      r bes, ( aes' g aes bes, g' f ) |
      r bes, ( g' f g bes, g' f ) |
      % 56
      f4 r r2 |
      <<
        {
          \TUTTI
          r8 \pp \tuplet 3/2 { ces'16 ( bes a ) } bes8-. bes-. bes \tuplet 3/2 { ces16 ( bes a ) } bes8-. bes-.
        } \\
        {
          \TUTTI
          bes,2 bes
        }
      >> |
      < bes bes' >4 \repeat tremolo 6 { bes,16 bes' } |
      <<
        {
          \TUTTI
          r8 \tuplet 3/2 { c'16 ( bes a ) } bes8-. bes-. bes \tuplet 3/2 { c16 ( bes a ) } bes8-. bes-.
        } \\
        {
          \TUTTI
          bes,2 bes
        }
      >>
      < bes bes' >4 \CRESC \repeat tremolo 6 { bes,16 bes' } |
      % 61
      bes,8 < bes' bes' >4 < bes bes' > < bes bes' >8 < bes bes' >16 ( aes' g f ) |
      < ees bes g >2~ \f < ees bes g >8 \tuplet 3/2 { f16 ( ees d ) } ees8-. f-. |
      < g ees bes >4 ( < ees bes g ees > < c aes ees > < bes g ees > ) |
      < ees~ bes g ees >2 ees8-. \tuplet 3/2 { f16 ( ees d } ees8-. ) f-. |
      < g ees bes >4 ( < ees g, ees > < c ees, c > < b ees, b > ) |
      % 66
      < c ees, c >2~ < c ees, c >8 \tuplet 3/2 { d16 ( c b ) } c8-. < d d, >-. |
      < ees ees, >2~ < ees ees, >8 \tuplet 3/2 { f16 ( ees d ) } ees8-. < f f, >-. |
      < d d, >2~ < d d, >8 \tuplet 3/2 { ees16 ( d c ) } d8-. < ees ees, >-. |
      < f f, >2~ < f f, >8 \tuplet 3/2 { g16 ( f e ) } f8-. < g g, >-. |
      < ees ees, >-. \tuplet 3/2 { f16 ( ees d ) } ees8-. < f f, >-. < g g, >-. \tuplet 3/2 { aes16 ( g f ) } g8-. < aes aes, >-. |
      % 71
      < f f, >-. \tuplet 3/2 { g16 ( f e ) } f8-. < g g, >-. < aes aes, >-. \tuplet 3/2 { bes16 ( aes g ) } aes8-. < bes bes, >-. |
      < c c, >-. \tuplet 3/2 { d16 ( c b ) } c8-. < d d, >-. < ees ees, >-. \tuplet 3/2 { f16 ( ees d ) } ees8-. < d d, >-. |
      < ees ees, >-. \tuplet 3/2 { f16 ( ees d ) } ees8-. < d d, >-. < ees ees, >-. \tuplet 3/2 { f16 ( ees d ) } ees8-. < d d, >-. |
      \repeat tremolo 4 { ees,16 \ff ees' } \repeat tremolo 4 { ees,16 ees' }
      ees, ees' ees, ees' c, c' c, c' aes, aes' aes, aes' f, f' f, f' |
      <<
        {
          % 76
          \TUTTI
          ees4 bes g ees
        } \\
        {
          % 76
          \TUTTI
          g16 ees g ees g ees g ees ees bes ees bes bes g bes g
        }
      >> |
      bes4 r < bes' d f bes > r |
      ees8 _\markup { \dynamic "p" \italic "dolce" } ( d c bes ) aes' ( g f ees ) |
      < aes c > ( < g bes > < f aes > < ees g > < d' f > < c ees > < bes d > < aes c > ) |
      <<
        {
          \TUTTI
          \stemNeutral < g bes >2. ( < f aes >4 |
          % 81
          < ees g >2 \stemUp < d f > )
        } \\
        {
          \TUTTI s1 |
          % 81
          s2 bes4-. bes-.
        }
      >> |
      ees8 ( d c bes ) aes' ( g f ees ) |
      < aes c > ( < g bes > < f aes > < ees g > < d' f > < c ees > < bes d > < aes c > ) |
      < g bes >2. \CRESC ( < f aes >4 |
      < ees g >2 )
      <<
        {
          \TUTTI bes' |
          % 86
          bes2. \f aes4 |
          g f e bes'
        } \\
        {
          \TUTTI < f des bes >2 |
          % 86
          e8-. bes-. c-. des-. e-. bes-. f'-. bes,-. |
          g'-. bes,-. bes-. g-. bes-. g-. < e' g >-. bes-.
        }
      >> |
      < bes e g bes >4. < bes g' bes >8 < aes f' aes >4. < aes f' aes >8 |
      <<
        {
          \TUTTI
          < f' aes >4 < ees g > < d f > < bes' d >
        } \\
        {
          \TUTTI
          f8 aes, ees' g, d' f, f' d
        }
      >> |
      \repeat tremolo 4 { < ees g bes >16 \ff ees' } \repeat tremolo 4 { < ees, g bes >16 ees' } |
      % 91
      < ees ees, >4 < bes ees, bes > ( < aes ees aes, > < g ees g, > ) |
      \repeat tremolo 4 { < aes f ees c >16 c } \repeat tremolo 4 { < aes f ees c >16 c }
      < c aes c, >4 < aes ees c > ( < g ees c > < f ees c > ) |
      \repeat tremolo 4 { < f d bes >16 aes } \repeat tremolo 4 { < f d bes > aes }
      < aes d, aes >4 ( f ees < d aes f > \sf )
      % 96
      < f aes, f > ( d c < bes aes f > \sf )
      c \DIM ( aes g < f d aes > |
      < aes d, aes > \p f < aes c > bes ) |
      <<
        {
          \TUTTI
          < g bes >2. _\markup \italic "legato" g4 ( |
          aes8 f e f aes f c' bes ) |
          % 101
          < g bes >2. g4 ( |
          aes8 f e f aes [ f ] )
        } \\
        {
          \TUTTI
          \tuplet 3/2 4 { ees8 bes ees bes ees bes ees8 bes ees bes ees bes } |
          s1 |
          % 101
          \omit TupletNumber \tuplet 3/2 4 { ees8 ( bes ees bes ees bes ees8 bes ees bes ees bes ) } |
          s2.
        }
      >>
      < d' f aes d >8. \f < d f aes d >16 |
      < d f aes d >4 r r < f aes d f >8. < f aes d f >16 |
      < f aes d f >4 r r < d aes' >8. \p < d aes' >16 |
      < d aes' >4 < d aes' >8. < d aes' >16 < d aes' >4 < d f aes >8. < d f aes >16 |
      % 106
      < d f aes >4 < d f aes d >8. < d f aes d >16 < d f aes d >4 < d f aes d >8. < d f aes d >16 |
      \SOLO
      d, \p ees e f fis g aes a bes b c cis d ees e f |
      fis g aes a bes b c cis d ees e f fis g aes d, |
      \stemUp ees1~ \startTrillSpan |
      \afterGrace ees { d16 \stopTrillSpan } |
      % 111
      \stemNeutral < ees bes g ees >2~ _\markup \italic "dolce" < ees bes g ees >8 \tuplet 3/2 { f16 ( ees d } ees8 f |
      < g ees bes g >4 < ees bes g ees > < c aes ees c > < bes g ees bes > ) |
      <<
        {
          bes2~ bes4 ( aes ) |
          aes8 ( g fis g bes aes c c, ) |
          < ees ees, >4..
        } \\
        {
          < f d bes >2 < d aes > |
          < ees g, > c4 s |
        }
      >>
      d16 ( < f f, >8. ) ees16 ( < g g, >8. ) f16 ( |
      % 116
      < aes aes, >8. ) g16 ( < bes bes, >8. ) aes16 ( < c c, >8. ) bes16 ( < d d, >8. ) c16 ( |
      \tuplet 3/2 4 { < ees ees, >8-. ) d-. f-. \omit TupletNumber ees-. < g g, >-. f-. \U < aes aes, >-. g-. bes-. aes-. < c c, >-. < c c, >-. } |
      \tuplet 3/2 4 { < c c, >-. < bes bes, >-. < aes aes, >-. < g d >-. < f c >-. < ees bes >-. \N < d aes >-. < c g >-. < bes f >-. < aes ees >-. < g d >-. < f c >-. } |
      \tuplet 3/2 4 { < ees bes > < d aes > < c g > < bes f > < aes ees > < g d > < f c > < ees bes > < d aes > \LEFT \stemUp < c g > < bes f > < a ees > } \undo \omit TupletNumber |
      aes16 bes aes g aes f \RIGHT d' cis \stemNeutral d aes f' e f d aes' g |
      % 121
      aes f d' cis d aes f' e f d aes' g aes f g aes |
      bes c bes aes \U \tuplet 7/8 { g32 ( [ aes bes c d ees f ] ) } g16 [ aes bes aes ] \tuplet 6/4 { g16 ( [ f ees d c b ] ) } |
      c d c bes \tuplet 7/8 { aes32 ( [ bes c d ees f g ] ) } \tuplet 5/4 4 { aes16 ( [ bes c bes aes ] ) g ( f ees d c ) } \N |
      bes \CRESC a aes g f ees d c \tuplet 3/2 8 { bes c bes a bes b c cis d ees f g } |
      \tuplet 3/2 8 { aes a bes b c cis d ees e f fis g } < aes aes, >8-. \f < g g, >-. < aes aes, >-. < d, bes aes d, >-. |
      % 126
      < ees bes g ees >4
      <<
        {
          r4 r2
        } \\
        {
          \TUTTI
          bes,4 \f g ees'8 ( g16 bes )
        }
      >> |
      \TUTTI
      < ees aes, ees >4 ( < c c, > < aes aes, > < ees ees, > ) |
      <<
        {
          \TUTTI
          ees2. ees8 ( g16 bes )
        } \\
        {
          \TUTTI
          < ees, g, ees >4 < bes bes, > < g g, > ees8 r
        }
      >> |
      < ees' c' ees >4 ( < c c' > < aes aes' > < ees ees' > ) |
      \SOLO r8 \p ees''4 bes ges ees8~ |
      % 131
      ees ees'4 ces aes ees8~ |
      ees ees'4 bes ges ees8~ |
      ees ees'4 ces aes ees8 |
      fes \CRESC fes'4 ces aes fes8 |
      f f'4 ces aes f8 |
      % 136
      ges16 _\markup \italic "sforzato" < bes des > ges < bes des > ges'4~ ges16 < des, bes > ges, < des' bes > ges4~ |
      ges16 \LEFT < des, bes > ges, < bes des > \RIGHT ges'4^~ ges16 \LEFT \stemUp < des, bes > ges, < bes des > ges'4^~ |
      ges16 < ees ces > ges, < ces ees > ges'4^~ ges16 < ces ees > ges < ces ees > \RIGHT \stemNeutral ges'4~ |
      ges16 < des' fes > ges, < des' fes > ges4~ ges16 < ces ees > ges < ces ees > ges'4~ |
      ges8 < des bes >16 ( [ ges ] ) < des bes > ( ges ) r8 r < des, bes >16 ( ges ) < des bes > ( ges ) r8 |
      % 141
      r < des, bes >16 ( ges ) < des bes > ( ges ) r8 \BASS r < des, bes >16 ( ges ) < des bes > ( ges ) r8 |
      r ges,16 ( ges' ) ges, ( ges' ) r8 \TREB r ges16 ( ges' ) ges, ( ges' ) r8 |
      r ges16 ( ges' ) ges, ( ges' ) r8 r ges16 ( ges' ) ges, ( ges' ) r8 |
      < fis fis, >8-. \ff \LEFT \stemUp g,,,16 [ fis ] g fis g fis b ais b ais \RIGHT \stemNeutral d cis d cis |
      g' fis g fis b ais b ais d cis d cis g' fis g fis |
      % 146
      b ais b ais d cis d cis g' \sf fis g fis d cis d cis |
      g' \sf fis g fis d cis d cis g' \sf fis g fis d cis d cis |
      fis \sf e fis e d cis d cis fis \sf e fis e d cis d cis |
      fis \sf e d cis fis \sf e d cis fis \sf e d cis fis \sf e d cis |
      fis \DIM e d cis fis e d cis fis e d cis fis e d cis |
      % 151
      \tuplet 3/2 4 { < b d >8 _\markup { \dynamic "pp" \italic "leggiermente" } fis < b d > fis < ais cis > fis \omit TupletNumber b fis b fis < ais cis > fis } |
      \tuplet 3/2 4 { < b d >8 fis < b d > fis < ais cis > fis < b d > fis < b d > fis < b d > < ais cis > } |
      \tuplet 3/2 4 { < b d > fis < b d > fis < ais cis > fis < b d > fis < b d > a < cis e > a } |
      \tuplet 3/2 4 { < cis e > a < cis e > a < cis e > a < cis e > a < cis e > a < d fis > < cis e > } |
      \tuplet 3/2 4 { < d fis > fis, < d' fis > fis, < cis' e > fis, < d' fis > fis, < d' fis > fis, < cis' e > < b d > } |
      % 156
      \tuplet 3/2 4 { < cis e > fis, < cis' e > fis, < b d > fis < cis' e > fis, < cis' e > fis, < b d > < ais cis > } |
      \tuplet 3/2 4 { < b d > fis < b d > fis < ais cis > fis < b d > fis < b d > fis < ais cis > fis } \undo \omit TupletNumber |
      < bes des > ges-. ( f-. ges-. aes-. bes-. ces-. des-. ) |
      ees-. \p ( ces-. ges-. ces-. ) ees,-. ( ces'-. ges-. ces-. ) |
      ees8-. ( ces-. ges-. ces-. ) ges-. ( ees'-. ces-. ees-. ) |
      % 161
      \U ges ( ees ) ces'-. ( bes-. ) aes-. ( ges-. fes-. ees-. ) |
      ges \p ( fes ees fes ) fes-. ( des-. ees-. fes-. ) |
      ges ( ces ) ees-. ( des-. ) ces-. ( bes-. aes-. ges-. ) |
      fes ( bes ) des-. ( ces-. ) bes-. ( aes-. ges-. fes-. ) |
      ees ( ces' ges ces ees-. ) ces-. ges-. ees-. |
      % 166
      \N des-. \CRESC ges,-. des-. ges,-. \LEFT \stemUp des-. [ ges,-. ] \RIGHT \stemNeutral \TUTTI < d' f bes d >8 \f r |
      < d f bes d >8 r < c f a c > r < bes d f bes > r < c f a c > r |
      < d f bes d > r < c f a c > r < d f bes d > r < d f bes d > < c f a c > |
      < d f bes d > r < c f a c > r < d f bes d > r < d f bes d > < ees a c ees > |
      < f a c ees >2 < f a c ees >8 r < f d' f > < f c' ees > |
      % 171
      < f d' f > r < f c' ees > r \grace { < d' f >16 ( [ g ] } < d f >4 \sf ) < ees c f, >8-. < d bes f >-. |
      < ees c a f > r < d bes f d > r \grace { < ees c f, >16 ( [ f ] } < ees c f, >4 \sf ) < d bes f d >8-. < c a f c >-. |
      < d bes f d > r < c a f c > r < d bes f d > r < c a f c > r |
      < c a f c >2 < c f, c >8 \SOLO \LEFT \stemUp a,16 ^\markup { \dynamic "p" \italic "dolce" } [ f ] c' a \RIGHT f' c \stemNeutral |
      a' f c' a f' c a' f c' a \U f' c f c a' f |
      % 176
      c'4 \N r r8 \LEFT \stemUp a,,,16 [ f ] c' a \RIGHT f' c \stemNeutral |
      a' f c' a f' c a' f c' a \U f' c a' f c' a |
      d4 \N r r8 \LEFT \stemUp bes,,,16 [ f ] \RIGHT \stemNeutral d' bes f' d |
      bes' f d' bes f' d bes' f \U d' bes f' d bes' f d' bes |
      < ees ees, >4 \N < ees, ees, >2 \sf < d d, >8-. < c c, >-. |
      % 181
      < bes bes, > ( < a a, > ) < g g, >-. < f f, >-. f-. e-. ees-. d-. |
      c-. bes-. a-. g-. f-. e-. ees-. d-. |
      \LEFT \stemUp c16 bes a g f g f e \tuplet 5/4 { f ^( g a bes c ) } \RIGHT \stemNeutral \tuplet 5/4 { d ( ees f g a ) } |
      bes8-. \f \tuplet 3/2 { c16 ( bes a ) } bes8-. < a c >-. < bes d >2 \sf |
      < bes d >8-. \tuplet 3/2 { < c ees >16 ( < bes d > < a c > ) } < bes d >8-. < c ees >-. < d f >2 \sf |
      % 186
      bes'8 ( \tuplet 3/2 { c16 bes a } bes8-. ) c-. < bes d > ( \tuplet 3/2 { < c ees >16 < bes d > < a c > } < bes d >8-. ) < c ees >-. |
      < ees g > ( < d f > ) < c ees >-. < bes d >-. < bes d > ( < aes c > ) < g bes >-. < f aes >-. |
      < ees g >-. \tuplet 3/2 { f16 ( ees d ) } < ees g, >8-. < f bes, >-. < ees g >2 \sf |
      < ees g >8-. \tuplet 3/2 { < f aes >16 ( < ees g > < d f > ) } < ees g >8-. < f aes >-. < g bes >2 \sf |
      ees8 ( \tuplet 3/2 { f16 ees d } ees8-. ) f-. < ees g > ( \tuplet 3/2 { < f aes >16 < ees g > < d f > } < ees g >8-. ) < f aes >-. |
      % 191
      < g bes > ( \tuplet 3/2 { < aes c >16 < g bes > < f aes > } < g bes >8-. ) < f d' >-. < g ees' >-. < g ees' >-. < g ees' >-. < g ees' >-. |
      < ees ees' >-. \tuplet 3/2 { d'16 ( c b ) } < c ees, >8-. < b d >-. < c ees >2 \sf |
      r8 \tuplet 3/2 { d16 ( c b } c8-. ) < b d >-. < c ees >-. \tuplet 3/2 { d,16 ( c b } c8-. ) d-. |
      ees-. \tuplet 3/2 { d'16 ( c b } < c c, >8-. ) < d d, >-. < ees ees, >-. < f f, >-. < g g, >-. < a a, >-. |
      < bes bes, > < bes bes, >4 < a a, > < aes aes, > < g g, >8~ |
      % 196
      < g g, > < fis fis, >4 < f f, >8~ < f f, > < e e, >-. < ees ees, >-. < d d, >-. |
      < g g, > < g g, >4 < fis fis, > < f f, > < e e, >8~ |
      < e e, > ees4 d8 f ( ees ) d-. c-. |
      r f16 d f d bes d bes d f, bes f bes d, f |
      d f bes, d bes d f, bes f bes d, f d f bes, d |
      % 201
      r8 f''16 des f des bes des bes des f, bes f bes des, f |
      des f bes, des bes des f, bes f bes des, f des f bes, des |
      \LEFT \stemUp ges, ^\DIM des' bes des \stemNeutral \RIGHT ges des bes des bes ges' des ges bes ges des ges |
      des bes' ges bes des bes ges bes ges des' bes ges' bes, ges' des bes' |
      ces, \pp ces' bes, bes' aes, aes' ges, ges' fes fes' ees, ees' des, des' ces, ces' |
      % 206
      \U aes aes' ges, ges' fes, fes' ees, ees' des des' ces, ces' bes, bes' aes, aes' \N |
      \tuplet 3/2 4 { g,8 g' e des bes g e des bes g e des } |
      \LEFT \stemUp bes16 g e des r4 r \tuplet 5/4 { ges16 ( a \RIGHT c ees ges ) } |
      r4 \LEFT f,16 bes \RIGHT d f r4 \LEFT f,16 a \RIGHT ees' f |
      r4 \LEFT f,16 bes \RIGHT d f r4 \LEFT g,16 bes \RIGHT ees g |
      % 211
      \LEFT f,8-. ^\CRESC f-. g-. a-. bes-. f-. c'-. f,-. |
      \RIGHT d' \LEFT f, \RIGHT ees' \LEFT f, \RIGHT f' \LEFT f, \RIGHT g' \LEFT g, \stemNeutral |
      \RIGHT a' a, bes' bes, c' c, d' d, |
      ees' ees, f' f, g' g, a' a, |
      bes'16 bes, c' c, d' d, ees' ees, \U f' f, g' g, a' a, bes' bes, |
      % 216
      c' c, d' d, ees' ees, e' e, f' f, f' f, d' d, bes' bes, |
      r _\markup \italic "piano leggiermente" ees' d c bes a g f \N ees d c bes a g f ees |
      \U r c'' bes a g f ees d \N c bes a g f ees d c |
      r a'' g f ees d c bes a g f ees d c bes a |
      g f ees d \LEFT \stemUp c bes a g f ees d c bes a g f |
      % 221
      ges ^\pp ges' a c \RIGHT \stemNeutral ees a, c ees ges c, ees ges a ees ges a |
      c ges a c ees a, c ees ges c, ees ges a ees ges a |
      r c,, ees ges a ees ges a c ges a c ees a, c ees |
      ges c, ees ges a ees ges a c ges a c ees a, c ees |
      a,, \CRESC bes b c cis d ees e f fis g gis a bes b c |
      % 226
      \U cis \f d ees e f fis g gis a bes b c \tuplet 5/4 { cis ( d ees e f ) } |
      bes,4 \N r
      <<
        {
          \TUTTI
          r8 \tuplet 3/2 { c,16 ( bes a ) } bes8-. c-.
        } \\
        {
          r2
        }
      >> |
      \TUTTI
      < d bes d, >4 ( < bes d, bes > < g ees bes g > < f d bes f > ) |
      < bes f d bes >2~ < bes f d bes >8-. \tuplet 3/2 { c16 ( bes a ) } bes8 < c c, > |
      < d d, >4 < bes d, bes > < g bes, g > < fis bes, fis > |
      % 231
      < g bes, g >2~ < g bes, g >8 \tuplet 3/2 { a16 ( g fis ) } g8-. < a a, >-. |
      < bes bes, >2~ < bes bes, >8 \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c, >-. |
      < a a, >2~ < a a, >8 \tuplet 3/2 { bes16 ( a g ) } a8-. < bes bes, >-. |
      < c c, >2~ < c c, >8 \tuplet 3/2 { d16 ( c b ) } c8-. < d d, >-. |
      < bes bes, >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c, >-. < d d, >-. \tuplet 3/2 { ees,16 ( d c ) } d8-. < ees ees, >-. |
      % 236
      < f f, >-. \tuplet 3/2 { g16 ( f e ) } f8-. < fis fis, >-. < g g, >-. \tuplet 3/2 { a16 ( g fis ) } g8-. < a a, >-. |
      < bes bes, >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < a a, >-. < bes bes, >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < a a, >-. |
      \repeat tremolo 4 { bes16 \ff bes,} \repeat tremolo 4 { bes' bes,}
      bes' bes, bes' bes,
      <<
        {
          \TUTTI
          g'4 ees c |
          bes f' d bes
        } \\
        {
          \TUTTI
          bes16 g bes g bes16 g bes g bes16 g bes g |
          bes f bes f bes f bes f bes f bes f f d f d
        }
      >> |
      % 241
      f4 r < f' a c f > r |
      \TUTTI bes,8 _\markup { \dynamic "p" \italic "dolce" } ( a g f ) ees' ( d c bes ) |
      < ees g > ( < d f > < c ees > < bes d > < a' c > < g bes > < f a > < ees g > ) |
      < d f >2. ( < c ees >4 |
      < bes d >2 < a c > ) |
      % 246
      bes8 \CRESC ( a g f ) ees' ( d c bes ) |
      \stemUp < ees g > ( < d f > < c ees > < bes d > \stemNeutral < a' c > < g bes > < f a > < ees g > |
      < d f >2. ) ( < c ees >4 ) |
      <<
        {
          \TUTTI
          f1 |
          f2. \f ees4 |
          % 251
          d ees f f |
          f8
        } \\
        {
          \TUTTI
          < d bes >2 ( < c aes > ) |
          b8 f g aes b f c' f, |
          % 251
          d' f, c' f, b f < b d > f |
          < f b d >8 \ff
        }
      >>
      f'-. g-. aes-. b-. f-. c'-. f,-. |
      d' f, ees' f, f' f, fis' fis, |
      < g g' >4
      <<
        {
          \TUTTI
          r4 r b, \p ( |
          c a e' d ) |
          % 256
          < b d >2. b4 ( |
          c8 a gis a c a e' d ) |
          d2. b4 ( |
          c8 \CRESC a gis a c [ a ] )
        } \\
        {
          \TUTTI
          \tuplet 3/2 4 { g d g d g d \omit TupletNumber g d g } |
          \tuplet 3/2 4 { fis a fis a fis a fis a fis a fis a } |
          % 256
          \tuplet 3/2 4 { g d g d g d g d g d g d } |
          s2. \tuplet 3/2 { c'8 fis, c' } |
          \tuplet 3/2 4 { g d g d g d g d g d g d } |
        }
      >>
      < a' c fis >8. \f < a c fis >16 |
      < a c fis >4 r r < a c fis a >8. < a c fis a >16 |
      % 261
      < a c fis a >4 r r < fis' c' >8. \p < fis c' >16 |
      < fis c' >4 < fis c' >8. < fis c' >16 < fis c' >4 < c fis c' >8. < c fis c' >16 |
      < c fis c' >4 < c fis c' >8. < c fis c' >16 < c fis c' >4 < c fis c' >8. < c fis c' >16 |
      \SOLO
      fis, \p g gis a bes \CRESC b c cis d ees e f fis g gis a |
      bes b c cis d ees e f fis g aes a bes b c fis, |
      % 266
      g1~ \startTrillSpan |
      \afterGrace g { fis16 ( \DIM \stopTrillSpan } |
      g8 d b d g, b d, g |
      b, d g, b \tuplet 3/2 { d g b } d g ) |
      b1~ \startTrillSpan |
      % 271
      \afterGrace b { a16 ( \stopTrillSpan } |
      b8 g d g b, d g, b |
      d, g b, d \tuplet 3/2 { g b d } g b ) |
      c2 \trill c,~ \startTrillSpan |
      \afterGrace c1 { b16 \stopTrillSpan } |
      % 276
      c16 c, ees g c8 r r16 c, ees g c8 r |
      r16 ees, g c ees8 r r16 ees, g c ees8 r |
      r16 f, b d f8 r r16 f, b d f8 r |
      r16 b, d f b8 r r16 b, d f b8 r |
      \LEFT \stemUp \tuplet 3/2 { c,,,,8 ees g } \RIGHT \stemNeutral \tuplet 3/2 4 { c ees g c, ees g } c16 ees g c |
      % 281
      ees _\markup \italic "leggiermente" ees, ees' ees, c' c, c' c, a'' a, a' a, g' g, g' g, |
      fis' fis, fis' fis, ees' ees, ees' ees, d' d, d' d, cis' cis, cis' cis, |
      c' c, c' c, a' a, a' a, fis' fis, fis' fis, d' d, d' d, |
      r g bes d g8 r r16 g, bes d g8 r |
      r16 bes, d g bes8 r r16 bes, d g bes8 r |
      % 286
      r16 c, fis a c8 r r16 c, fis a c8 r |
      r16 fis, a c fis8 r r16 fis, a c fis8 r |
      \LEFT \stemUp \tuplet 3/2 4 { g,,,, bes d g bes d g, bes d } \RIGHT \stemNeutral g16 bes d g |
      bes bes, bes' bes, g' g, g' g, e'' e, e' e, des' des, des' des, |
      c' c, c' c, b' b, b' b, bes' bes, bes' bes, g' g, g' g, |
      % 291
      e' e, e' e, c' c, c' c, bes' bes, bes' bes, g' \LEFT \stemUp g, \RIGHT g' \LEFT g, |
      f ^\f c' aes c \RIGHT \stemNeutral f c aes c aes f' c f aes f c f |
      c aes' f aes c aes f aes f c' aes c f c aes c |
      \LEFT \stemUp f,, c' aes c \RIGHT \stemNeutral f c aes c aes f' c f aes f c f |
      c aes' f aes c aes f aes f c' aes c f c aes c |
      % 296
      b, f' d f b f d f d b' f b d b f b |
      f d' b d f d b d b f' d f b f d f |
      b,, f' d f b f d f d b' f b d b f b |
      f d' b d f d b d b f' d f b f d f |
      c, aes' ees aes c aes ees aes ees c' aes c ees c aes c |
      % 301
      ees, c' ges c ees c ges c ges ees' c ees ges ees c ees |
      g, ees' bes ees g ees bes ees bes g' ees g bes g ees g |
      ees bes' ges bes ees bes ges bes \U ees bes' ges bes ees bes ges bes |
      ees4 \ff \N r
      <<
        {
          \TUTTI
          r4 < ees, ges, ees >8. \f < ees ges, ees >16
          < ees ges, ees >4 < ees ges, ees >8. < ees ges, ees >16 < ees ges, ees >4 < ees ges, ees >8. < ees ges, ees >16 |
          % 306
          < ees ges, ees >4 \SOLO \stemNeutral < ees ces ges ees >8. \ff < ees ces ges ees >16 < ees ces ges ees >4 \TUTTI \stemUp < ees ges, ees >8. \f < ees ges, ees >16 |
          < ees ges, ees >4 < ees ges, ees >8. < ees ges, ees >16 < ees ges, ees >4 < ees ges, ees >8. < ees ges, ees >16 |
          < ees ges, ees >4 \SOLO \stemNeutral < ees ces ges ees >8. \ff < ees ces ges ees >16 < ees ces ges ees >4 \TUTTI \stemUp < ees ges, ees >8. \f < ees ges, ees >16 |
          < ees ges, ees >4 \SOLO \stemNeutral < ees bes ges ees >8. \ff < ees bes ges ees >16 < ees bes ges ees >4 \TUTTI \stemUp < ees ges, ees >8. \f < ees ges, ees >16 |
          < ees ges, ees >4
        } \\
        {
          r2 |
          R1 |
          % 306
          r4 s2 r4 |
          R1 |
          r4 s2 r4 |
          R1 |
          r4
        }
      >>
      < ees c a ges ees >8. \ff < ees c a ges ees >16 < ees c a ges ees >4 < ees, ees, >8. \ff < ees ees, >16 |
      % 311
      < ges ges, >4. \sf < f f, >8-. < ees ees, >^. < des des, >^. < c c, >^. < bes bes, >^. |
      \stemUp a^. ges^. f^. ees^. des^. c^. \LEFT < bes bes, >^. < a a, >^. |
      < bes bes, > ^\markup \italic "sempre stacc." < c c, > < d d, > < ees ees, > \RIGHT f g aes a |
      \stemNeutral < bes bes, > < c c, > < cis cis, > < d d, > < ees ees, > < e e, > < f f, > < g g, > |
      < aes aes, >4. \sf < g g, >8 < f f, > < ees ees, > < d d, > < c c, > |
      % 316
      b aes g f ees d c b |
      c d e f g a b c |
      < d d, > < e e, > < f f, > < fis fis, > < g g, > < a a, > < bes bes, > < bes bes, > |
      < bes bes, >4. \sf < a a, >8 < g g, > < f f, > < e e, > < d d, > |
      cis8 bes a g f e d cis |
      % 321
      \stemUp d e f g a b c cis |
      \stemNeutral < d d, > < e e, > < f f, > < g g, > < a a, > < b b, > < c c, > < cis cis, > |
      < d d, > \DIM < c c, > < bes bes, > < a a, > < g g, > < fis fis, > < ees ees, > < d d, > |
      c bes a g fis ees d cis |
      c bes c d e fis g a |
      % 326
      < bes bes, > < c c, > < d d, > < ees ees, > < fis fis, > < g g, > < aes aes, > < a a, > |
      < bes bes, > _\markup { \dynamic "p" \italic "sempre più piano" } < a a, > < g g, > < fis fis, > < ees ees, > < d d, > < c c, > < bes bes, > |
      a g fis ees \LEFT \stemUp < d d, > < c c, > < bes bes, > < a a, > |
      < g g, > < a a, > < b b, > < c c, > \RIGHT \stemNeutral d ees f fis |
      g a b c < d d, > < ees ees, > < f f, > < fis fis, > |
      % 331
      < g g, > < a a, > < b b, > < c c, > < d d, > < ees ees, > < f f, > < fis fis, > |
      \U < g g, > < a a, > < b b, > < c c, > < d d, > < ees ees, > < f f, > fis, \N |
      <<
        {
          g2. _\markup \italic "espressivo" b,4 ( |
          c \CRESC a e' \> d ) \! |
          d2. b4 \trill ( |
          % 336
          c8 \CRESC a gis a c \> a e' d ) \! |
          d4 r r2 |
          \TUTTI r2 r4 f, \p ( |
          ges \< ees \! \> bes' aes \! ) |
          < aes des, >2~ < aes des, >8 r \SOLO
          \once \override TextScript #'outside-staff-priority = ##f
          \once \override TextScript #'padding = #4.5
          f4 \p \trill ^\markup { \halign #-7 \teeny \flat } ( |
          % 341
          ges8 \CRESC ees d ees ges ees bes' \> aes \! ) |
          aes4 r r2 |
          \TUTTI r2 r4 g \p ( |
          aes \< f c' \! \> bes \! ) |
          < bes ees, >2~ < bes ees, >8 r \SOLO g4 \p \trill ( |
          % 346
          aes8 \CRESC f e f aes f c' \> bes \! ) |
          bes ( g fis g bes g des'-> c )
        } \\
        {
          g1 |
          fis |
          g1 |
          % 336
          fis |
          g4 s \TUTTI \stemNeutral r8 \tuplet 3/2 { bes,,16 ( aes g } aes8 bes ) |
          aes2. \stemDown des'4 ( |
          c1 ) |
          \SOLO r2 r4 des |
          % 341
          c1 |
          des4 s \TUTTI \stemNeutral r8 \tuplet 3/2 { c,16 ( bes a } bes8 c ) |
          bes2. \stemDown ees'4 ( |
          d1 ) |
          \SOLO r2 r4 ees |
          % 346
          d1 |
          e
        }
      >> |
      c'8 ( a ees'-> d ) d ( aes f'-> e ) |
      \U e ( bes g' f ) f ( ces g'-> aes ) |
      ces,16 \DIM d f aes ces, d f aes ces, d f aes ces, d f aes |
      % 351
      ces, d f aes d, f aes ces d, f aes ces d, f aes ces |
      d, _\markup \italic "più piano" f aes ces d, f aes ces d, f aes ces d, f aes ces |
      d, f aes ces f, aes ces d f, aes ces d f, aes ces d |
      f, aes ces d aes \pp ces d f aes, ces d f aes, ces d f |
      aes, ces d f aes, ces d f aes, ces d f \tuplet 3/2 { aes,8 ces d } |
      % 356
      f4 \N r r2 |
      \TUTTI
      r2 r8 \tuplet 3/2 { c,,,16 ( bes a } bes8-. ) c-. |
      bes-. \tuplet 3/2 { c16 ( bes a ) } bes8-. c-. bes-. \tuplet 3/2 { c16 ( bes a ) } bes8-. c-. |
      bes-. \tuplet 3/2 { c16 ( bes a ) } bes8-. c-. bes-. \tuplet 3/2 { c''16 \f ( [ bes a ] ) } bes8-. < c c, >-. |
      < bes bes, >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c, >-. < bes bes, >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c, >-. |
      % 361
      < bes bes, >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c, >-. < bes bes, >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < bes bes, >-. |
      <<
        {
          \TUTTI
          < ees g, ees >1~ \ff |
          < ees g, ees >4
        } \\
        {
          s1 |
          r8 \stemUp \LEFT g,,,32 bes \RIGHT ees g
        }
      >>
      \SOLO \stemUp
      r8 g32 bes ees g r8 \stemNeutral g32 bes ees g r8 bes,32 ees g bes |
      r16 < bes bes, > [ r < g g, > ] r < g g, > [ r < ees ees, > ] r < ees ees, > [ r < bes bes, > ] r < bes bes, > [ r < g g, > ] |
      r < g g, > [ r < ees ees, > ] r < ees ees, > [ r < bes bes, > ] r < bes bes, > [ r g ] r g [ r ees ] |
      % 366
      < c ees aes c >4 \ff r r2 |
      r8 \LEFT \stemUp c,32 ees aes c \RIGHT \stemNeutral r8 c32 ees aes c r8 c32 ees aes c r8 c32 ees aes c |
      r16 < c c, > [ r < aes aes, > ] r < aes aes, > [ r < ees ees, > ] r < ees ees, > [ r < c c, > ] r < c c, > [ r < aes aes, > ] |
      r < aes aes, > [ r < ees ees, > ] r < ees ees, > [ r < c c, > ] r < c c, > [ r < aes aes, > ] r ees [ r c ] |
      < aes' bes d f aes >4 \ff r r2 |
      % 371
      \FREE \time 327/32 \tempo "senza tempo"
      bes,16^. \ff [ c^. d^. ees^. ] f^. [ g^. aes^. bes^. ] < c c, > [ < d d, > < ees ees, > < f f, > ] < g g, > [ < aes aes, > < bes bes, > < c c, > ] < d d, > [ < ees ees, > < f f, > < g g, > ] \tuplet 3/2 { < aes aes, >8-. [ < aes bes, >-. < aes c, >-. ] } \bar "" < aes d, > ( < g g, >4 ) \autoBeamOff < f b, >8 < f b, > ( < ees ees, >4 ) < des g, >8 \autoBeamOn < des g, > ( [ < c c, > < bes e, > < aes aes, > ] < g bes, > [ < f c > < ees ges, > < d f, > ] \bar "" < c g > < bes f > < aes f > ) < aes f > \grace g16 aes1~ \startTrillSpan aes2 \fermata \appoggiatura { g16 \stopTrillSpan [ aes ] } bes16 [ aes g f ] ees' [ d c bes ] g' [ f ees d ] bes' [ aes g f ] ees' [ d c bes ] \U g' [ f ees d ] bes' [ aes g f ] c' [ bes aes g ] \bar "" \N \stemDown f32 [ ees d c bes aes g f ees d c bes aes g f ees d \LEFT c bes aes g f ees d c ] \stemNeutral \bar "" \stemUp bes16 [ a bes b c cis d ees e f fis g aes a bes b \RIGHT c cis d ees e f fis g aes a bes b c cis d ] |
      \time 4/4
      \stemNeutral ees4 \f r \TUTTI r8 \tuplet 3/2 { f,16 \f ^( ees d ) } ees8-. f-. |
      \TUTTI g4 ( ees c ) < bes g >8. < bes g >16 \NOFREE |
      < ees g, >2~ < ees g, >8 \tuplet 3/2 { f16 ( ees d ) } ees8-. f-. |
      g4 ( ees c ) bes8. < g' bes >16 |
      % 376
      < f aes bes d >2 < g bes ees >8 r < f c' ees f > r |
      < g bes ees g >2
      <<
        {
          \TUTTI
          aes'4. f8
        } \\
        {
          \TUTTI
          < d aes >2
        }
      >> |
      < d aes >2 _\markup { \dynamic "p" \italic "dolce" } ( < ees g, >4 f |
      < ees g >2 < f aes >4. < d f >8 ) |
      \SOLO d2 \p \trill ees4 \trill \CRESC f \trill |
      % 381
      g2 \trill
      <<
        {
          bes8 ( aes ) g-. f-.
        } \\
        {
          s4 < d aes >
        }
      >>
      ees2~ _\markup { \dynamic "p" \italic "cantabile" } ees8 ( \tuplet 3/2 { f16 ees d } ees8 f ) |
      fis ( [ g ] ) d ( [ ees ] ) b ( [ c ] ) r4 |
      \U ees'2~ \pp ees8 ( \tuplet 3/2 { f16 ees d } ees8 f ) |
      fis ( [ g ] ) d ( [ ees ] ) b ( [ c ] ) r4 |
      % 386
      g'2~ g8 \tuplet 3/2 { aes16 ( g f } g8 aes ) |
      a ( [ bes ] ) fis ( [ g ] ) d ( [ ees ] ) r4 |
      a8 ( [ bes ] ) fis ( [ g ] ) d ( [ ees ] ) r4 |
      b'8 ( [ c ] ) g ( [ aes ] ) d, ( [ ees ] ) r4 |
      b'8 ( [ c ] ) g ( [ aes ] ) d, ( [ ees ] ) r4 |
      % 391
      c'8 ( [ des ] ) a ( [ bes ] ) fis ( [ g ] ) d ( [ ees ] ) \N |
      c ( [ des ] ) a ( [ bes ] ) fis ( [ g ] ) c, ( [ des ] ) |
      c16 _\markup \italic "sforzato" < c' ees > aes < c ees > aes'4~ aes16 < ees, c > aes, < c ees > aes'4~ |
      aes16 < ees, c > aes, < c ees > aes'4~ aes16 \LEFT \stemUp < ees, c > aes, < c ees > aes'4~ |
      aes16 < f des > aes, < des f > aes'4~ aes16 \RIGHT < des f > aes < des f > \stemNeutral aes'4~ |
      % 396
      aes16 < ees' ges > aes, < ees' ges > aes4~ aes16 < des f > aes < des f > aes'4~ |
      aes8 < ees c >16 aes < ees c > aes r8 r < ees, c >16 ( aes ) < ees c > ( aes ) r8 |
      r < ees, c >16 ( aes ) < ees c > ( aes ) r8 r \BASS < ees, c >16 ( aes ) < ees c > ( aes ) r8 |
      r aes,16 ( aes' ) aes, ( aes' ) r8 r \TREB aes16 ( aes' ) aes, ( aes' ) r8 |
      r8 aes16 ( aes' ) aes, ( aes' ) r8 r aes16 ( aes' ) aes, ( [ aes' ] ) < aes aes, >8 |
      % 401
      < gis gis, > \ff \LEFT \stemUp a,,,16 [ gis ] a gis a gis \RIGHT \stemNeutral cis bis cis bis e dis e dis |
      a' gis a gis cis bis cis bis e dis e dis a' gis a gis |
      cis bis cis bis e dis e dis a' \sf gis a gis e dis e dis |
      a' \sf gis a gis e dis e dis a' \sf gis a gis e dis e dis |
      gis \sf fis gis fis e dis e dis gis \sf fis gis fis e dis e dis |
      % 406
      gis \sf fis e dis gis \sf fis e dis gis \sf fis e dis gis \sf fis e dis |
      gis \DIM fis e dis gis fis e dis gis fis e dis gis fis e dis |
      \tuplet 3/2 4 { < cis e >8 \pp _\markup { \halign #-1.5 \italic "leggiermente" } gis < cis e > } \tuplet 3/2 { gis < bis dis > gis } \override TupletNumber #'stencil = ##f \tuplet 3/2 4 { cis gis cis gis < bis dis > gis } |
      \tuplet 3/2 4 { < cis e >8 gis < cis e > gis < bis dis > gis < cis e > gis < cis e > gis < cis e > < bis dis > } |
      \tuplet 3/2 4 { < cis e >8 gis < cis e > gis < bis dis > gis < cis e > gis < cis e > b < dis fis > b } |
      % 411
      \tuplet 3/2 4 { < dis fis > b < dis fis > b < dis fis > b < dis fis > b < dis fis > b < e gis > < dis fis > } |
      \tuplet 3/2 4 { < e gis > gis, < e' gis > gis, < dis' fis > gis < e gis > gis, < e' gis > gis, < dis' fis > < cis e > } |
      \tuplet 3/2 4 { < dis fis > gis, < dis' fis > gis, < cis e > gis < dis' fis > gis, < dis' fis > gis, < cis e > < bis dis > } |
      \tuplet 3/2 4 { < cis e > gis < cis e > gis < bis dis > gis < cis e > gis < cis e > gis < bis dis > gis } |
      \revert TupletNumber #'stencil
      < c ees > aes-. ( g-. aes-. bes-. c-. des-. ees-. ) |
      % 416
      f-. \p ( des-. aes-. des-. ) f,-. ( des'-. aes-. des-. ) |
      f-. ( f-. des-. f-. ) aes,-. ( f'-. des-. f-. ) |
      \U aes ( f ) des'-. ( c-. ) bes-. ( aes-. ges-. f-. ) |
      aes \p ( ges f ges ) ges-. ( ees-. f-. ges-. ) |
      aes ( des ) f-. ( ees-. ) des-. ( c-. bes-. aes-. ) |
      % 421
      ges ( c ) ees-. ( des-. ) c-. ( bes-. aes-. ges-. ) |
      f ( aes des aes f'-. ) des-. aes-. f-. \N |
      ees-. \CRESC aes,-. ees-. c-. ees,-. [ c-. ] \TUTTI < g' bes ees g >8 \f r |
      < g bes ees g > r < f bes d f > r < g bes ees > r < f bes d f > r |
      < g bes ees g > r < f bes d f > r < g bes ees g > r < g bes ees g > < f bes d f > |
      % 426
      < g bes ees g > r < f bes d f > r < g bes ees g > r < g bes ees g > < aes f' aes > |
      < aes f' aes >2 < aes f' aes >4 < bes g' bes >8 < aes f' aes > |
      < bes g' bes >8 r < aes f' aes > r \appoggiatura { < g' bes >16 [ c ] } < bes g bes, >4 \sf < aes f aes, >8 < g ees g, > |
      < aes f aes, > r < g ees g, > r \appoggiatura { < f aes >16 [ bes ] } < aes f aes, >4 \sf < g ees g, >8 < f d f, > |
      < g ees g, > r < f d bes f > r < g ees bes g > r < f d bes f > r |
      % 431
      < f d bes f >2 \SOLO \LEFT \stemUp r8 bes,,16 ^\p f \RIGHT \stemNeutral d' bes f' d |
      bes' f d' bes f' d bes' f d' bes f' d bes'8 bes |
      bes4 r \LEFT \stemUp r8 bes,,,16 f \RIGHT \stemNeutral d' bes f' d |
      bes' f d' bes f' d bes' f \U d' bes f' d bes' f d' bes |
      ees4 \N r r8 bes,,,16 g ees' bes g' ees |
      % 436
      bes' g ees' bes g' ees bes' g \U ees' bes g' ees bes' g ees' g, |
      aes4 \f \N < aes aes, >2 \sf < g g, >8-. < f f, >-. |
      < f f, > ( < ees ees, > ) < d d, >-. < c c, >-. bes-. a-. aes-. g-. |
      f-. ees-. d-. c-. bes-. a-. aes-. g-. |
      f16 ees d c bes c bes a bes c d ees \tuplet 6/4 { f g aes bes c d } |
      % 441
      < ees g, >8-. \f \tuplet 3/2 { f16 ( ees d ) } < ees g, >8-. < f bes, >-. < g ees >2 \sf |
      < g ees >8-. \tuplet 3/2 { < aes f >16 ( < g ees > < f d > ) } < g ees >8-. < aes f >-. < bes g >2 \sf |
      \U < g ees' >8 ( \tuplet 3/2 { f'16 ees d } ees8-. ) f-. < g ees >8 ( \tuplet 3/2 { < aes f >16 < g ees > < f d > } < g ees >8-. ) < aes f >-. |
      < c aes > ( < bes g > ) < aes f >-. < g ees >-. < g ees > ( < f des > ) < ees c >-. < des bes >-. \N |
      < c aes >-. \tuplet 3/2 { bes16 ( aes g ) } aes8-. < bes g >-. < c aes >2 \sf |
      % 446
      < c aes >8-. \tuplet 3/2 { < des bes >16 ( < c aes > < bes g > ) } < c aes >8-. < des bes >-. < ees c >2 \sf |
      < aes, c, >8 ( \tuplet 3/2 { bes16 aes g } aes8-. ) < bes g >-. < c aes >8 ( \tuplet 3/2 { < des bes >16 < c aes > < bes g > } < c aes >8-. ) < des bes >-. |
      \U < ees c >8 ( \tuplet 3/2 { f16 ees d } ees8-. ) < g bes, >-. < aes c, >-. < bes g >-. < c aes >-. < c aes >-. |
      < c aes >-. \N \tuplet 3/2 { bes,16 ( aes g ) } aes8-. < g bes >-. < aes c >2 \sf |
      aes8-. \tuplet 3/2 { g'16 ( f e ) } f8-. g-. aes-. \tuplet 3/2 { g,16 ( f e ) } f8-. g-. |
      % 451
      aes-. \tuplet 3/2 { g16 ( f e ) } < f f, >8-. < g g, >-. < aes aes, >-. < bes bes, >-. < c c, >-. < d d, >-. |
      < ees ees, > \U < ees' ees, >4 _\markup \italic "sforzato" < d d, > < cis cis, > < c c, >8~ |
      < c c, > < b b, >4 < bes bes, > < a a, >8 < aes aes, > < g g, > |
      < c c, > < c c, >4 < b b, > < bes bes, > < a a, >8~ |
      < a a, > aes4 g8 bes ( aes ) g-. f-. \N |
      % 456
      r bes16 g bes g ees g ees g bes, ees bes ees g, bes |
      g bes ees, g ees g bes, ees bes ees g, bes g bes ees, g |
      r8 bes'16 ges bes ges ees ges ees ges bes, ees bes ees ges, bes |
      ges bes ees, ges ees ges bes, ees \stemUp bes ees \LEFT ges, bes ges bes ees, ges |
      b, ^\DIM fis' dis fis b fis dis fis dis b' fis b dis b fis b |
      % 461
      fis \RIGHT dis' b dis \stemNeutral fis dis b dis b dis fis b dis, fis b dis |
      e, \pp e' dis, dis' cis, cis' b, b' a a' gis, gis' fis, fis' e, e' |
      cis cis' b, b' a, a' gis, gis' fis fis' e, e' dis, dis' cis, cis' |
      \tuplet 3/2 4 { c,8 c' a ges ees c a ges ees } \LEFT \stemUp \tuplet 3/2 { c a ges } |
      \tuplet 3/2 { ees c a } ges16 ees r8 r4 \tuplet 5/4 { ces'16 ( d f aes ces ) } |
      % 466
      r8 \tuplet 3/2 { bes,16 ees g } bes g ees bes r8 \tuplet 3/2 { d16 aes' bes } d bes aes d, |
      r8 \tuplet 3/2 { g16 bes \RIGHT ees } g ees \LEFT bes g r8 \tuplet 3/2 { c,16 ees aes } c aes ees c |
      bes8^. ^\CRESC bes^. c^. d^. ees^. bes^. f'^. bes,^. |
      g' bes, aes' bes, bes' bes, c' c, |
      \RIGHT d' \LEFT d, \RIGHT ees' \LEFT ees, \RIGHT f' \LEFT f, \RIGHT g' \LEFT g, |
      % 471
      \RIGHT \stemNeutral aes' aes, bes' bes, c' c, d' d, |
      ees'16 ees, f' f, g' g, aes' aes, bes' bes, c' c, d' d, ees' ees, |
      f' f, g' g, aes' aes, a' a, bes' bes, bes' bes, g' g, ees' ees, |
      r aes' _\markup \italic "piano leggiermente" g f ees d c bes aes g f ees d c bes aes |
      r f'' ees d c bes aes g f ees d c bes aes g f |
      % 476
      r d'' c bes aes g f ees d c bes aes g f ees d |
      \LEFT \stemUp c bes aes g f ees d c bes aes g f r4 |
      r16 ^\pp ces' d f aes d, f aes ces f, aes ces d aes ces d |
      \RIGHT \stemNeutral f ces d f aes d, f aes ces f, aes ces d aes ces d |
      \LEFT \stemUp r16 f,, aes ces d aes ces d \RIGHT \stemNeutral f ces d f aes d, f aes |
      % 481
      ces f, aes ces d aes ces d f ces d f aes d, f aes |
      r d,, \CRESC ees e f fis g aes a bes b c cis d ees e |
      \tuplet 6/4 4 { f \f fis g aes a bes b c cis d dis e \U f fis g aes a bes } b c cis d |
      < ees bes g ees >4 \f \N \TUTTI r r8 \tuplet 3/2 { f,,16 \f ( ees d ) } ees8-. f-. |
      g4 ( < ees g, > < c aes > ) < bes g >8. < bes g >16 |
      % 486
      < ees bes g >2~ < ees bes g >8-. \tuplet 3/2 { f16 ( ees d ) } ees8 f |
      g4 < ees g, ees > < c ees, c > < b ees, b > |
      < c ees, c >2. < c ees c' >8. < c ees c' >16 |
      < c ees c' >4 < c ees c' >8. < c ees c' >16 < c ees c' >4 < c ees c' >8. < c ees c' >16 |
      \time 9/4 \FREE
      < c ees c' >2. \fermata s4.. \SOLO c,16 [ ees aes c ees aes \U c ees aes ] c8 \N r8 \fermata \TUTTI \appoggiatura { d,16 c b } c8. \f < d d, >16 |
      % 491
      \time 4/4
      < ees c ees, >2. < ees c ees, >8. < ees c ees, >16 |
      < ees c ees, >4 < ees c ees, >8. < ees c ees, >16 < ees c ees, >4 < ees c ees, >8. < ees c ees, >16 |
      \time 21/8
      < ees c ees, >2. \fermata \SOLO \LEFT s4. \stemDown ees,,,16 [ f a c \RIGHT ees f a c ees f a \U c ees f a c ] \stemNeutral ees8 \N r8 \fermata \TUTTI \appoggiatura { f,16 ees d } < ees c >8. \f < f ees c >16 |
      \time 4/4
      < g ees bes >2. < g ees bes >8. < g ees bes >16 \NOFREE |
      < g ees bes >4 < g ees bes >8. < g ees bes >16 < g ees bes >4 < g ees bes >8. < g ees bes >16 |
      % 496
      < g ees bes >2 \fermata \SOLO bes,,,8-. \f \tuplet 3/2 { c16 ( bes a ) } bes8-. b-. |
      c-. \sf \tuplet 3/2 { d16 ( c b ) } c8-. cis-. d-. \sf \tuplet 3/2 { ees16 ( d cis ) } d8-. d-. |
      ees-. \sf \tuplet 3/2 { f16 ( ees d ) } ees8-. e-. f-. \sf \tuplet 3/2 { g16 ( f e ) } f8-. fis-. |
      g16 fis aes g a gis bes a ces bes c b des c d cis |
      ees d e dis f e ges f g fis aes g a gis bes a |
      % 501
      ces bes c b des c d cis \U ees d e dis f e ges f |
      g fis aes g a gis bes a ces bes c b \tuplet 6/4 { des c d cis ees d } |
      \tuplet 6/4 { f ees d c bes aes } \N \tuplet 6/4 4 { g f ees d c bes aes g f ees d c } \tuplet 5/4 { bes aes g f ees } |
      f4 \trill \afterGrace f'2. \startTrillSpan { e16 \stopTrillSpan [ f ] } |
      \once \override TrillSpanner #'(bound-details right padding) = #2
      bes1~ \startTrillSpan |
      % 506
      \once \override TrillSpanner #'outside-staff-priority = ##f
      \once \override TrillSpanner #'padding = #3
      \once \override TextScript #'outside-staff-priority = ##f
      \once \override TextScript #'padding = #4.5
      bes~ \stopTrillSpan \DIM ^\markup { \halign #-5 \teeny \flat } \startTrillSpan |
      \afterGrace bes { a16 \stopTrillSpan [ bes ] } |
      \U < ees ges >8-. _\markup { \dynamic "pp" \italic "leggiermente" } bes-. < d f >-. bes-. ees-. bes-. < d f >-. bes-. |
      < ees ges > bes < d f > bes < ees ges > bes < ees ges > < d f > |
      < ees ges > bes < d f > bes < ees ges > bes < f' aes > des |
      % 511
      < f aes > des ces des < f aes > des < ges bes > < f aes > |
      < ges bes > bes, < f' aes > bes, < ges' bes > bes, < f' aes > < ees ges > |
      < f aes > bes, < ees ges > bes < f' aes > bes, < ees ges > < d f > |
      < ees ges > bes < d f > bes < ees ges > bes < d f > bes |
      < d f > bes a bes < d f > bes aes bes |
      % 516
      g16 ees' bes ees g ees bes ees g,2~ |
      g16 ees' bes ees g ees bes ees g,2~ |
      g16 ees' bes ees g ees bes ees g,2 |
      r16 f' d f aes f d f bes,4 r |
      r16 g' ees g bes4~ bes16 g ees g bes,4~ |
      % 521
      bes16 aes' f aes bes4~ bes16 aes f aes bes,4~ |
      bes16 g' ees g bes4~ bes16 g ees g bes,4 \N |
      r2 \U bes'16 _\markup { \dynamic "pp" \italic "leggiermente" } a aes g ges f e ees \N |
      d des c ces bes a aes g ges f e ees \tuplet 6/4 { d des c b bes a } |
      aes g ges f \tuplet 6/4 { e ees d des c b } \LEFT \stemUp \tuplet 6/4 4 { bes a aes g ges f e ees d des c ces } |
      % 526
      bes4 r \RIGHT \stemNeutral bes''''16 a aes g ges f e ees |
      d des c b bes a aes g ges f e ees d des c ces |
      bes \CRESC a aes g ges f e ees d des c ces \LEFT \stemUp \tuplet 5/4 { bes a aes g f } |
      ees4 \RIGHT \stemNeutral r \TUTTI r8 \tuplet 3/2 { f'''16 ( \f ees d ) } ees8-. < f d f, >-. |
      < g ees g, >4 ( < ees g, ees > < c aes ees c > < bes g ees bes > ) |
      % 531
      \SOLO ees,,16 \ff ees' < bes g > ees g, g' < ees bes > g bes, bes' < g ees > bes ees, ees' < bes g > ees |
      g, g' < ees bes > g ees, ees' < bes g > ees c, c' < aes ees > c bes, bes' < g ees > bes |
      \TUTTI < c g ees c >2~ \f c8 \tuplet 3/2 { d16 ( c b ) } c8-. < d b d, >-. |
      < ees c ees, >4 ( < c ees, c > < aes f c aes > < g ees c g > ) |
      \SOLO c,,16 \ff c' < g ees > c ees, ees' < c g > ees g, g' < ees c > g c, c' < g ees > c |
      % 536
      ees, ees' < c g > ees c, c' < g ees > c aes, aes' < f c > aes g, g' < ees c > g |
      <<
        {
          \TUTTI < aes f c aes >4 \p
        } \\
        {
          r
        }
      >>
      g,16 _\markup { \italic "sempre" \dynamic "f" } g' < ees c > g aes, aes' < f c > aes aes, aes' < f des > aes |
      bes, bes' < ges des > bes aes, aes' < f des > aes
      <<
        {
          \TUTTI < bes ges! des bes >4 \p
        } \\
        {
          r
        }
      >>
      aes,16 _\markup { \italic "sempre" \dynamic "f" } aes' < f des > aes |
      bes, bes' < ges des > bes aes, aes' < f des > aes bes, bes' < ges des > bes bes, bes' < g ees > bes |
      c, c' < aes ees > c c, c' < a f > c d, d' < bes f > d d, d' < b g > d |
      % 541
      ees, ees' < c g > ees ees, ees' < c aes > ees f, f' < d aes > f f, f' < d bes > f |
      r \ff g, bes ees g8 r r16 g, bes ees g8 r |
      r16 g, bes ees g8 r r16 g, bes ees g8 r |
      \U r16 c, f aes c8 r r16 c, f aes c8 r |
      r16 c, f aes c8 r r16 c, f aes c8 r |
      % 546
      r16 d, f aes d8 r r16 d, f aes d8 r |
      r16 \DIM d, f aes d8 r r16 d, f aes d8 r |
      r16 d, f aes d8 r r16 d, f aes d8 r |
      r16 \p d, f aes d8 r r16 d, f aes d8 r |
      r16 d, f aes d8 r r16 d, f aes d8 r |
      % 551
      r16 _\markup \italic "più piano" ees, g bes ees8 r r16 ees, g bes ees8 r |
      r16 d, f aes d8 r r16 d, f aes d8 r |
      r16 ees, g bes ees8 r r16 ees, g bes \once \autoBeamOff ees8 \N < g,, g, > ( |
      < aes aes, > \f < f f, > < e e, > < f f, > < aes aes, > < f f, > ) < d f aes d >8. < d f aes d >16 |
      < d f aes d >4 r r < f aes d f >8. < f aes d f >16 |
      % 556
      < f aes d f >4 bes,,16 d f aes bes, d f aes bes, \DIM d f aes |
      bes, d f aes bes, d f aes bes, d f aes d, f aes ces |
      d, \p f aes ces f, aes ces d f, aes ces d aes ces d f |
      \tuplet 3/2 4 { d8 ees e f fis g aes a bes b c cis } |
      \U \tuplet 3/2 4 { d8 ees e f fis g aes a bes } \tuplet 5/4 { b16 c cis d ees }
      % 561
      < f g, > _\markup { \italic "più piano" } < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > |
      < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > |
      < f g, > \pp < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < ees f, > < d aes > < ees f, > < d aes > < d ees, > < c g > < d ees, > < c g > |
      < c d, > < bes f > < c d, > < bes f > < bes c, > < aes ees > < bes c, > < aes ees > < aes bes, > < g d > < aes bes, > < g d > < g aes, > < f c > < g aes, > < f c > |
      < f g, > _\markup { \italic "leggiermente" } < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > \N < ees f, > < d aes > < ees f, > < d aes > < d ees, > < c g > < d ees, > < c g > |
      % 566
      < c d, > < bes f > < c d, > < bes f > < bes c, > < aes ees > < bes c, > < aes ees > < aes bes, > < g d > < aes bes, > < g d > < g aes, > < f c > < g aes, > < f c > |
      < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > < f g, > < ees bes > \N < ees f, > < d aes > < ees f, > < d aes > < d ees, > < c g > < d ees, > < c g > |
      < c d, > < bes f > < c d, > < bes f > < bes c, > < aes ees > < bes c, > < aes ees > < aes bes, > < g d > < aes bes, > < g d > < g aes, > < f c > < g aes, > < f c > |
      \LEFT \stemUp ees,-. ^\CRESC bes' g bes ees bes g bes \RIGHT \stemNeutral ees-. bes' g bes ees bes g bes |
      bes,-. f' d f bes f d f bes-. f' d f bes f d f |
      % 571
      ees,-. bes' g bes ees bes g bes \RIGHT ees-. bes' g bes ees bes g bes |
      bes,-. f' d f bes f d f \U bes-. d f bes d,-. f bes d |
      g, \f bes ees bes g bes ees bes aes bes f' bes, f bes d bes |
      g bes ees bes g bes ees bes aes bes f' bes, f bes d bes |
      g bes ees bes g bes ees bes aes bes f' bes, f bes d bes |
      % 576
      g bes ees bes g bes ees bes aes bes f' bes, f bes d bes |
      \tuplet 3/2 4 { ees8 \fff bes g \N ees bes g } ees16 bes g ees \LEFT \stemUp bes g r8 |
      \RIGHT \stemNeutral r4 g16 bes ees g bes ees g bes \U \tuplet 3/2 { ees8 g bes } |
      ees16 bes g bes ees bes g bes ees bes g bes ees bes g bes |
      ees4-. r < ees bes g ees >-. r |
      % 581
      < ees bes g ees >-. \N r r2 \bar "|." |
    }
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
 % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
 % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
    % Left Hand
    \new Staff = "lower" \relative c,
    {
      #(define afterGraceFraction (cons 15 16))
      \time 4/4
      \key ees \major \BASS
      % 1
      \TUTTI
      < ees ees' >1 |
      % 2
      \SOLO \time 30/4 \FREE \stemDown
      ees16 ^\sustainOn ^\ff [ g bes ees ] s4. ees16 [ g bes ees ] s4. \TREB ees16 [ g bes ees ] s4 s \sustainOff s4 * 22 \LEFT \BASS \stemNeutral |
      \time 4/4 < aes,,,, c ees aes >4 \sustainOn r r2 \sustainOff |
      % 4
      \time 143/16 \stemDown
      aes16 ^\sustainOn [ c ees aes ] s16 s4 aes16 [ c ees aes ] s16 s4 aes16 [ c \RIGHT ees aes ] \LEFT s s4 s16. s32 \sustainOff s4 \stemNeutral \TREB r16 b' [ c b ] c [ g aes g ] aes [ b, c b ] c [ g aes g ] aes [ b, c b ] c [ g aes g ] aes1 \trill g16 [ aes bes c ] d [ ees f g ] aes1 \trill \bar "" g16 [ aes bes c d ees f g aes \U bes c d ees f g aes g f ees d c bes ] \N aes [ g f ees d c bes aes ] c4-. ( bes-. ) aes ( g ) |
      \time 4/4 \BASS < bes,, f d bes >4 \sustainOn r r2 \sustainOff |
      % 6
      \stemDown r4 bes8_. [ c_. d_. ees_. ] f_. [ g_. aes_. bes_. ] \TREB \stemNeutral c-. [ d-. ees-. f-. ] g-. [ aes-. bes-. c-. ] d-. ees-. \tuplet 3/2 { < f f, >4 ( < f g, > < f aes, > ) } |
      < bes, f' >4 ( < ees, ees' > < g d' >4. ) < c, c' >8 ( |
      < ees bes' > [ < aes, aes' > ] < c g' > [ < f, f' > ] < g e' > [ < aes c > ] < a c > [ < bes d > ] |
      \time 89/16
      < bes ees > [ < bes d > ] ) < ces ees > < ces ees > < ces ees f >1 < bes d f > 2. r4 s4 * 6 s16 * 17 \BASS < bes, f' aes >2 |
      < bes ees g >
      <<
        \autoBeamOff \crossStaff
        {
          % 11
          < f' aes bes > |
          < g bes >4
        } \\
        {
          % 11
          < bes, bes, >2 |
          < ees, g bes ees >4
        }
      >>
      \TUTTI < g' ees >16 bes < g ees > bes \repeat tremolo 4 { < g ees > bes } \NOFREE |
      \repeat tremolo 6 { < g ees > bes } < ees, ees, >8. < ees ees, >16 |
      < ees ees, >8 < g ees >16 [ bes ] < g ees > bes < g ees > bes \repeat tremolo 4 { < g ees > bes } |
      \repeat tremolo 6 { < g ees > bes } < ees, ees, >8. < ees ees, >16 |
      < bes bes, >2 ( ees,8 ) r < aes aes, > r |
      % 16
      < bes bes, > < g' ees >16 [ bes ] < g ees > bes < g ees > bes
      <<
        {
          \TUTTI
          \repeat tremolo 4 { < f d > bes } |
          \repeat tremolo 4 { g bes } \repeat tremolo 4 { g bes } |
          \repeat tremolo 6 { g bes }
        } \\
        {
          \TUTTI
          bes,2 |
          ees1 |
          ees2.
        }
      >>
      < ees ees, >8. < ees ees, >16 |
      < ees ees, >4
      <<
        {
          \TUTTI
          \repeat tremolo 6 { g16 bes } |
          \repeat tremolo 6 { g16 bes }
        } \\
        {
          \TUTTI
          ees,2. |
          ees
        }
      >>
      < ees ees, >8. < ees ees, >16 |
      % 21
      < bes f' bes >2 < ees g bes >8 r < aes, ees' aes > r |
      < bes ees g bes >2 < bes d f bes >4. < bes d f bes >8 |
      <<
        {
          \TUTTI
          \repeat tremolo 4 { g'16 bes } \repeat tremolo 4 { g bes } |
          \repeat tremolo 4 { < aes ees > c } \repeat tremolo 4 { < aes ees > c } |
          \repeat tremolo 4 { < g ees > bes } \repeat tremolo 4 { < g ees > bes } |
          % 26
          \repeat tremolo 4 { ees, aes } \repeat tremolo 4 { ees aes } |
          \repeat tremolo 6 { ees g } ees16 ges ees ges
        } \\
        {
          \TUTTI
          ees1 |
          c |
          bes |
          % 26
          aes |
          g2. ( ges4 )
        }
      >> |
      f16 f' f, f' a, f' a, f' c f c f f, f' f, f' |
      bes,4 bes'2 c8-. bes-. |
      <<
        {
          \TUTTI
          aes-. g-. f-. g-. aes-. d,-. ees-. f-. |
          % 31
          g ees g bes ees [ bes ]
        } \\
        {
          \TUTTI
          bes,1 |
          % 31
          bes4 bes2
        }
      >>
      < bes bes' >8 < bes bes' > |
      < d bes' >4 < d bes' >8 < d bes' > < ees bes' >4 < g bes >8 < g bes > |
      < bes bes, > bes, [ bes bes ] bes bes bes bes |
      < bes bes, > < bes g' > < bes f' > < bes g' > < bes aes' > < bes d > < bes ees > < bes f' > |
      % 36
      < bes g' > < bes bes, > < bes bes, > < bes bes, > < bes bes, > < bes bes, > < bes bes, > < bes bes, > |
      < d d, > < d d, > < d d, > < d d, > < ees ees, > < ees ees, > < g g, > < g g, > |
      < bes bes, >4 r r < ges ges, >8 < f f, > |
      < bes bes, >4 r r < bes f' >8 < bes f' > |
      r4 < bes f' >8 < bes f' > r4 < bes f' >8 < bes f' > |
      % 41
      r4 < bes f' >8 < bes f' > r4 < bes f' >8-. < bes f' > \pp ( |
      < ees ges >4-. ) r8 < f bes, > ( < ees ges >4-. ) r8 < f bes, > ( |
      < ees ges >4-. ) r8 < f bes, > ( < ees ges >4-. ) r8 < f bes, > ( |
      < ees ges >4-. ) r8 < f bes, > ( < ees ges >4-. ) \TREB r8 < des aes' > |
      < des aes' >4 r8 < ges bes > ( < aes des, >4-. ) r8 < aes des, >8 ( |
      % 46
      < ges bes >4-. ) r8 < aes des, > ( < ges bes >4-. ) r8 < ges ees > ( |
      < f aes >4-. ) r8 < ees ges >8 ( < f aes >4-. ) r8 < f bes, > ( |
      < ees ges >4-. ) r8 < f bes, > ( < ees ges >4-. ) r8 < f bes, > |
      < f bes, >4 r8 < f bes, > < f bes, >4 \BASS
      <<
        {
          \TUTTI
          bes, _\markup \italic "dolce" |
          ees ( < bes f' > < g ees' > < bes f' > ) |
          % 51
          ees ( < bes f' > < ees g > ) < ees g >8 < bes f' >
        } \\
        {
          \TUTTI
          r4 |
          ees,1 |
          % 51
          ees
        }
      >> |
      < ees ees' >4 < bes' f' > \RIGHT \stemDown < ees g > < ees g >8 < f aes > |
      < bes, f' aes >2 < f' aes >4 \LEFT \TREB
      <<
        {
          \TUTTI
          < g bes >8 < f aes > |
          < g bes >4 < f aes > < g bes > < f aes >8 < ees g > |
          < f aes >4 < ees g > < f aes > < ees g >8 < f bes, >
        } \\
        {
          \TUTTI
          s4 |
          ees4 r r2 |
          bes4 r r2
        }
      >> |
      \stemNeutral < ees g >4 < f bes, > < ees g > < f bes, > |
      % 56
      < f bes, >2 < f bes, > \BASS |
      \repeat tremolo 4 { bes,,16 bes' } \repeat tremolo 4 { bes, bes' } |
      ges,2~ _\markup { \dynamic "pp" \italic "legato" } ges8 ( \tuplet 3/2 { aes16 ges f } ges8 aes ) |
      bes4 \repeat tremolo 6 { bes16 bes' } |
      g,2~ g8 \tuplet 3/2 { aes16 ( g f ) } g8-. aes-. |
      % 61
      bes8-. \tuplet 3/2 { c16 ( bes a ) } bes8-. c-. des8-. \tuplet 3/2 { ees16 ( des c ) } des8-. d-. |
      \repeat tremolo 4 { ees,16 ees' } \repeat tremolo 4 { ees, ees' } |
      \repeat tremolo 4 { ees,16 ees' } aes, ees' aes, ees' ees, ees' ees, ees' |
      \repeat tremolo 4 { ees,16 ees' } \repeat tremolo 4 { ees, ees' } |
      \repeat tremolo 4 { ees,16 ees' } aes, ees' aes, ees' g, ees' g, ees' |
      % 66
      aes,8-. \tuplet 3/2 { bes16 ( aes g ) } aes8-. < bes bes, >-. < c c, >2~ |
      < c c, >8 \tuplet 3/2 { d16 ( c b ) } c8-. < d d, >-. < ees ees, >4 ( < a, a, > ) |
      < bes bes, >8-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c, >-. < d d, >2~ |
      < d d, >8 \tuplet 3/2 { ees16 ( d c ) } d8-. < ees ees, >-. < f f, >4 ( < b, b, > ) |
      < c c, >8-. < c c, >-. < d d, >4. < ees ees, >8-. < f f, >4~ |
      % 71
      < f f, >8 < d d, >-. < ees ees, >4. < f f, >8-. < g g, >4~ |
      < g g, >8 < aes aes, >-. < b b, >4. < b b, >8-. < c c, >4~ |
      < c c, >8 < b b, >-. < c c, >4. < b b, >8-. < c c, >-. < b b, >-. |
      < c c, >4 ( < d d, > < ees ees, > < e e, > |
      < f f, > )
      <<
        {
          \TUTTI
          ees ees ees
        } \\
        {
          \TUTTI
          f,8 ( g aes4 a )
        }
      >> |
      % 76
      < bes, bes, >1~ |
      < bes bes, >8 ^( aes ) f-. < ees ees' >-. < d d' >-. < c c' >-. < bes bes' >-. < aes aes' >-. |
      < g g' >2 < g'' bes >~ |
      < g bes > ( < aes c > )
      <<
        {
          \TUTTI
          r8 bes-. ^\p c-. d-. ees-. bes-. f'-. bes,-. |
          % 81
          g'-. bes,-. aes'-. bes,-.
        } \\
        {
          \TUTTI
          bes,1~ |
          % 81
          bes2
        }
      >>
      < aes aes' > |
      < g bes ees >1~ |
      < g bes ees >2 < aes c ees > |
      bes8 bes-. c-. d-. ees-. bes-. f'-. bes,-. |
      g'-. bes,-. aes'-. bes,-. < bes bes' >4 ( < aes aes' > ) |
      % 86
      < g bes g' >2. < f bes f' >4 |
      < e bes' e > < des des' > < c c' > < c c' > |
      < c c' >8 c'-. e-. c-. < f f, >-. f-. aes-. f-. |
      d-. bes-. ees-. g-. bes bes, bes' bes, |
      <<
        {
          \TUTTI ees2 s
        } \\
        {
          \TUTTI
          ees,8-. ees-. g-. bes-. \stemNeutral ees-. g-. bes-. ees-.
        }
      >> |
      % 91
      \repeat tremolo 4 { < bes g ees >16 ees } \repeat tremolo 4 { < bes g ees >16 ees } |
      < aes,, aes, >8 aes c f aes c f aes |
      \repeat tremolo 4 { < ees c aes >16 f } \repeat tremolo 4 { < ees c aes > f }
      < bes,, bes, >8 bes d f bes d f aes |
      < bes, f d bes >4 r r < aes f bes, >8. < aes f bes, >16 |
      % 96
      < aes f bes, >4 r r < aes f bes, >8. < aes f bes, >16 |
      < aes f bes, >4 r r < bes, bes, >8. < bes bes, >16 |
      < bes bes, >4 r < bes d f bes > r |
      ees,8 ( \tuplet 3/2 { f16 ees d ) } ees8-. f-. ees4 r |
      <<
        {
          \TUTTI
          \tuplet 3/2 4 { f'8 aes f \omit TupletNumber aes f aes f aes f aes f aes }
        } \\
        {
          \TUTTI
          < d, bes >4 r < d bes >4 r
        }
      >> |
      % 101
      ees,8 ( \tuplet 3/2 { f16 ees d ) } ees8-. f-. ees4 r |
      <<
        {
          \TUTTI
          \omit TupletNumber \tuplet 3/2 4 { f'8 \CRESC aes f aes f aes f aes f }
        } \\
        {
          \TUTTI
          < d bes >4 r r
        }
      >>
      < bes bes, >8. < bes bes, >16 |
      < bes bes, >4 r r < bes bes, >8. < bes bes, >16 |
      < bes bes, >4 r r \TREB < bes' f' >8. < bes f' >16 |
      < bes f' >4 < bes f' >8. < bes f' >16 < bes f' >4 \BASS < ces bes, >8. < ces bes, >16 |
      % 106
      < ces bes, >4 < ces aes bes, >8. < ces aes bes, >16 < ces aes bes, >4 < ces aes bes, >4 |
      \repeat tremolo 2 { < ces aes f bes, >8 } \repeat tremolo 2 { < ces aes f bes, > \CRESC } \repeat tremolo 4 { < ces aes f bes, > } |
       \repeat tremolo 2 { < bes aes f bes, >8 } \repeat tremolo 2 { < bes aes f bes, > \DIM } \repeat tremolo 4 { < bes aes f bes, > } |
      < bes g ees >4 \p r \RIGHT \stemDown < ees g bes ees >4 \DIM r |
      < bes' g ees bes > r < g ees bes g > r \LEFT \stemNeutral |
      % 111
      \SOLO < ees bes g ees >1~ |
      < ees bes g ees >4 < ees bes g ees > < aes ees c aes > < ees bes g ees > |
      < bes f d bes >2 < aes f b, > |
      < c g ees c > < aes f c aes >4 ( < a f c a > ) |
      <<
        {
          < bes g >4..
        } \\
        {
          bes,
        }
      >>
      \set doubleSlurs = ##t
      < aes' f >16 ( < c aes >8. ) < bes g >16 ( < d bes >8. ) < c aes >16 ( \TREB |
      % 116
      < ees c >8. ) < d bes >16 ( < f d >8. ) < ees c >16 ( < g ees >8. ) < f d >16 ( < aes f >8. ) < g ees >16 ( |
      \tuplet 3/2 4 { < bes g >8-. ) \unset doubleSlurs < aes f >-. < c aes >-. \omit TupletNumber < bes g >-. < d bes >-. < c aes >-. < ees c >-. < d bes >-. < f d >-. < ees c >-. < g ees >-. < g ees >-. } |
      \tuplet 3/2 4 { < g ees >-. < f d >-. < ees c >-. bes'-. aes-. g-. f-. ees-. d-. c-. bes-. aes-. } |
      \tuplet 3/2 4 { g f ees } \BASS \tuplet 3/2 { d c bes aes g f } \stemDown \tuplet 3/2 { ees d c } \undo \omit TupletNumber |
      ces4 ces2 \stemNeutral ces,4~ |
      % 121
      ces bes2 aes4 |
      g bes''~ bes4. g,8 |
      aes r \TREB c''2~ c8 a, |
      bes < ees g > bes < ees g > bes < ees g > bes < ees g >
      bes < ees g > bes < ees g > < aes f bes, > [ < g e bes > < aes f bes, > ] \BASS < bes, f d bes > |
      % 126
      < ees, bes g ees >4
      <<
        {
          \TUTTI
          bes'4 g < ees g bes ees > |
          \repeat tremolo 4 { < ees aes >16 c' } \repeat tremolo 4 { < aes ees >16 c } |
          \repeat tremolo 4 { < g ees >16 bes } \repeat tremolo 4 { < g ees >16 bes } |
          \repeat tremolo 4 { < ees, c >16 aes } \repeat tremolo 4 { < ees c >16 aes }
        } \\
        {
          r4 r2 |
          \TUTTI
          c,1 | bes |
          aes
        }
      >> |
      ges4 ( bes ees ges ) |
      % 131
      ces, ( ees aes ces ) |
      bes, ( ees ges bes ) |
      aes, ( ces ees aes ) |
      aes, ( ces fes aes ) |
      aes, ( ces f aes ) |
      % 136
      < ges ges, > \TREB r8 bes'16 des ges,8 r \BASS r bes,16 des |
      ges,8 \stemDown r r bes,16 des ges,8 r r bes,16 des |
      ges,8 r r ces16 ees ges8 r \stemNeutral r ces16 ees |
      ges8 r r des'16 fes ges8 r \TREB r ces16 ees |
      ges8 r r < des bes >16 ( ges ) < des bes >16 ( ges ) r8 r < des, bes >16 ( ges ) |
      % 141
      < des bes > ( ges ) r8 \BASS r < des, bes >16 ( ges ) < des bes > ( ges ) r8 r ges,,16 ( ges' ) |
      ges, ( ges' ) r8 r ges,16 ( ges' ) ges, ( ges' ) r8 r ges16 ( ges' ) |
      ges, ( ges' ) r8 r ges16 ( ges' ) ges, ( ges' ) r8 r ges,,16 ( ges' ) |
      < fis fis, >8-. \stemDown g,16 [ fis ] g fis g fis b ais b ais \stemNeutral d cis d cis |
      g' fis g fis b ais b ais \TREB d cis d cis g' fis g fis |
      % 146
      b ais b ais d cis d cis g' fis g fis d cis d cis |
      g' fis g fis d cis d cis g' fis g fis d cis d cis |
      fis e fis e d cis d cis fis e fis e d cis d cis |
      fis e d cis fis e d cis fis e d cis fis e d cis |
      fis e d cis fis e d cis fis e d cis fis8-. < cis fis, > |
      % 151
      < b d >4 r8 \set doubleSlurs = ##t < cis fis, >8 ( < b d >4-. ) r8 < cis fis, >8 ( |
      < b d >4 ) r8 < cis fis, >8 ( < b d >4-. ) r8 < cis fis, >8 ( |
      < b d >4 ) r8 < cis fis, >8 ( < b d >4-. ) r8 < e a, >8 |
      < e a, >4 r8 < e a, > < e a, >4 r8 < d fis >8 |
      < d fis >4 r8 < cis e > ( < d fis >4-. ) r8 < b d > ( |
      % 156
      < cis e >4-. ) r8 < b d > ( < cis e >4-. ) r8 < cis fis, >8 ( |
      < b d >4-. ) r8 < cis fis, >8 ( < b d >4-. ) \unset doubleSlurs r8 < cis fis, >8 |
      < des ges, >4 r r2 \BASS |
      ces,,,4 \sustainOn ees'' ges, ees' |
      ces,4 ees' ges, ees' |
      % 161
      ces, ees' ges, ees' \sustainOff |
      ges,, \sustainOn fes'' ges, fes' |
      ges,, ees'' ges, ees' |
      ges,, des'' ges, des' |
      ges,, ces' ges ces |
      % 166
      ges, r r \TUTTI < f f, >8 \sustainOff r
      < f f' >8 r < f f, > r < bes bes, > r < f f, > r |
      < bes bes, > r < f f, > r < bes bes, > r < bes bes, > < f f, > |
      < bes bes, > r < f f, > r < bes bes, > r < bes bes, > < f f, > |
      < f f, >2 < f f' >8 r < bes bes' > < f f' > |
      % 171
      < bes bes' > r < f f' > r < bes bes, >4 < f f' >8 < bes bes' > |
      < f f' > r < bes bes' > r < f f' >4 < bes bes, >8 < f f' > |
      < bes bes' > r < f f' > r < bes bes' > r < f f' > r |
      < f f' >2 < f' a > |
      \SOLO R1 |
      % 176
      \tuplet 3/2 4 { ees8 c' a ees c a } \stemDown ees4 r \stemNeutral |
      R1 |
      \tuplet 3/2 4 { d'8 bes' f d bes f } \stemDown d4 r \stemNeutral |
      R1 \TREB |
      < c'' ees >16 f < c ees > f < c ees > f < c ees > f < c ees > f < c ees > f < c ees > f < c ees > f |
      % 181
      < c ees >16 f < c ees > f < c ees > f < c ees > f \BASS f, f' e, e' ees, ees' d, d' |
      c, c' bes, bes' a, a' g, g' f, f' e, e' ees, ees' d, d' |
      \stemDown c, c' bes, bes' a, a' g, g' f, f' ees ees' \stemNeutral d, d' c, c' |
      \tuplet 3/2 4 { < bes bes, >8-. bes'-. a-. aes-. g-. ges-. \omit TupletNumber f-. e-. ees-. d-. des-. c-. } |
      \tuplet 3/2 4 { bes-. bes'-. a-. aes-. g-. ges-. f-. e-. ees-. d-. _\markup \italic "sempre stacc." des-. c-. } |
      % 186
      \tuplet 3/2 4 { bes bes' a aes g ges f e ees d cis c } |
      bes16 d f bes bes, d f bes c, ees aes c d, f bes d |
      \tuplet 3/2 4 { ees,8-. ees'-. d-. des-. c-. ces-. bes-. a-. aes-. g-. ges-. f-. } |
      \tuplet 3/2 4 { ees8-. ees' d des c ces bes a aes g ges f } |
      \tuplet 3/2 4 { ees d des c ces bes a aes g fis f e } |
      % 191
      ees16 g bes ees g, bes ees g bes, ees g bes ees, g bes ees |
      \tuplet 3/2 4 { c,8 c' b bes a aes g fis f e ees d } |
      \tuplet 3/2 4 { c c' b bes a aes g f ees d c bes } \undo \omit TupletNumber |
      a16 c ees a g, c ees g f, a c f fis, a c fis |
      g,8 g'16 _\markup \italic "sforzato" [ fis ] a g bes a c bes d cis ees d e dis |
      % 196
      f e fis eis g fis g fis g fis g fis g d bes g |
      ees8 \TREB ees'16 [ d ] f ees g fis a g b a c b des c |
      d cis ees d ees d ees d ees d ees d ees c g ees \BASS |
      f,8 \sustainOn f'16 [ d ] f d bes d bes d f, bes f bes d, f |
      d f bes, d bes d f, bes f bes d, f d f bes, d \sustainOff |
      % 201
      f,8 \sustainOn f'''16 [ des ] f des bes des bes des f, bes f bes des, f |
      des f bes, des bes des f, bes f bes des, f des f bes, des \sustainOff |
      \stemDown fes < bes des > fes' < des bes > \stemNeutral fes < des bes > fes < des bes > des, < des' bes > fes < des bes > fes < des bes > fes < des bes >
      bes, < des' bes > fes < des bes > fes < des bes > fes < des bes > fes, < des' bes > fes < des bes > fes < des bes > fes < des bes >
      ees, ges ces ees ees, ges ces ees des, ges bes des des, ges bes des |
      % 206
      ces, ees ges ces ces, ees ges ces fes, aes ces fes fes, aes ces fes |
      e,4 \sustainOn r r2 |
      \stemDown r4 \tuplet 3/2 { bes'8 g e \sustainOff } \tuplet 5/4 { ees16 ( \sustainOn ges a c ees ) }
      <<
        {
          s8.. s32 \sustainOff
        } \\
        {
          r4
        }
      >> |
      d,16 f bes d r4 c,16 f a c r4 |
      bes,16 d f bes r4 ees,16 g bes ees r4 |
      % 211
      f,,8-. f-. g-. a-. bes-. f-. c'-. f,-. |
      d' f, ees' f, f' f, g g' |
      \stemNeutral a, a' bes, bes' c, c' d, d' |
      ees, ees' f, f' g, g' a, a' |
      bes,16 bes' c, c' d, d' ees, ees' f, f' g, g' \TREB a, a' bes, bes' |
      % 216
      c, c' d, d' ees, ees' e, e' f, f' f, f' d, d' bes, bes' |
      ees, ees' r8 r4 r2 |
      c,16 c' r8 r4 r2 |
      a,16 a' r8 r4 \BASS f,16 f' r8 r4 |
      ees,16 ees' r8 \stemDown r4 c,,8 r a r |
      % 221
      ges16 \sustainOn ges' a c \stemNeutral ees a, c ees ges c, ees ges a ees ges a |
      c ges a c ees a, c ees \TREB ges c, ees ges a ees ges a \BASS |
      f,, c' ees ges a ees ges a c ges a c ees a, c ees |
      \TREB ges c, ees ges a ees ges a c ges a c ees a, c ees \sustainOff |
      \tuplet 3/2 4 { ges,8 f e ees d cis c b bes } \BASS a16 aes g ges |
      % 226
      \tuplet 3/2 4 { f8 e ees d cis c b bes a } aes16 g ges f |
      < bes bes, >4 \sustainOn
      <<
        {
          \TUTTI
          \repeat tremolo 6 { < d f >16 ^\f bes' }
        } \\
        {
          r4 r2 \sustainOff
        } \\
        {
          \TUTTI \stemDown
          bes,2.
        }
      >> |
      <<
        {
          \TUTTI
          \repeat tremolo 4 { < d f >16 bes' } g bes g bes < f d > bes < f d > bes |
          \repeat tremolo 4 { < f d >16 bes } \repeat tremolo 4 { < f d >16 bes } |
          \repeat tremolo 4 { < f d >16 bes } g bes g bes fis bes fis bes
        } \\
        {
          \TUTTI
          bes,2 ees4 bes |
          bes1 |
          bes2 ees4 d
        }
      >> |
      % 231
      \TUTTI < ees g >8-. \tuplet 3/2 { f16 ( ees d ) } ees8-. < f f, >-. < g g, >2~ |
      < g g, >8 \tuplet 3/2 { a16 ( g fis ) } g8-. < a a, >-. < bes bes, >4 ( < e, e, > ) |
      < f f, >8-. \tuplet 3/2 { g16 ( f e ) } f8-. < g g, >-. < a a, >2~ |
      < a a, >8 \tuplet 3/2 { bes16 ( a g ) } a8-. < bes bes, >-. < c c, >4 ( < fis, fis, > ) |
      < g g, >8-. < g, g, >-. < a a, >4. < bes bes, >8-. < c c, >4~ |
      % 236
      < c c, >8 < c c, >-. < d d, >4. < ees ees, >8-. < f f, >4~ |
      < f f, >8 < fis fis, >-. < g g, >4. < fis fis, >8-. < g g, >-. < fis fis, >-. |
      < g g, >4 ( < a a, > < bes bes, > < b b, > |
      < c c, > < d d, > < ees ees, > < e e, > ) |
      < d f,~ >1 |
      % 241
      f,8 ( < ees ees' > ) < c c' >-. < bes bes' >-. < a a' >-. < g g' >-. < f f' >-. < ees ees' >-. |
      \TUTTI < d d' >2 < d' f bes >~ |
      < d f bes > < ees g bes > |
      <<
        {
          \TUTTI
          f8 f-. [ g-. a-. ] bes-. f-. c'-. f,-. |
          d'-. f,-. ees'-. f,-. f'4-. f-. |
          % 246
          bes,8 ( a g f ) ees' ( d c bes ) |
          \RIGHT \stemDown < ees g > ( < d f > < c ees > < bes d > \LEFT \stemUp < a c > < g bes > < f a > < ees g > )
        } \\
        {
          \TUTTI
          f,1~ |
          f2 ees' |
          % 246
          d1~ |
          d2 ees
        }
      >> |
      < f f, >8 < f f, >-. < g g, >-. < a a, >-. < bes bes, >-. f-. < c c' >-. f-. |
      < d d' >-. f-. < ees ees' >-. f-. < f f' >4 ( < ees ees' > ) |
      < d f aes b d >2. < c' ees >4 |
      % 251
      < b d > < aes c > < g b > < g g, > |
      < f d g, >2.
      <<
        {
          \TUTTI
          < c' ees >4 |
          s4 < c ees, >
        } \\
        {
          \TUTTI
          g8. g16 |
          < f g d' >4 g8. g16
        }
      >>
      < b g d >4 < c ees, g, > |
      < b d, g, >8 _\markup \italic "legato" ( \tuplet 3/2 { a,16 g fis ) } g8-. a-. g4 r |
      r2 r4 d'8. d16 |
      % 256
      g,8 ( \tuplet 3/2 { a16 g fis ) } g8-. a-. g4 r |
      <<
        {
          \TUTTI
          \tuplet 3/2 4 { a'8 c a c a c a c a }
        } \\
        {
          \TUTTI fis2.
        }
      >>
      d8. d16 |
      g,8 ( \tuplet 3/2 { a16 g fis ) } g8-. a-. g4 r |
      <<
        {
          \TUTTI
          \tuplet 3/2 4 { a'8 c a c a c a c a }
        } \\
        {
          \TUTTI fis2.
        }
      >>
      < d a' c >8. < d a' c >16 |
      < d a' c >4 r r < d a' c >8. < d a' c >16 |
      % 261
      < d a' c >4 r r < d a' >8. < d a' >16 |
      < d a' > 4 < d a' >8. < d a' >16 < d a' >4 < d a' ees' >8. < d a' ees' >16 |
      < d a' ees' > 4 < d a' ees' >8. < d a' ees' >16 < d a' ees' >4 < d a' ees' > |
      \SOLO
      fis16 g gis a bes b c cis d ees e f \TREB fis g gis a |
      bes b c cis d ees e f fis g aes a bes b c fis, |
      % 266
      g1~ \startTrillSpan |
      \afterGrace g { fis16 ( \stopTrillSpan } |
      g8 d b d g, b d, g |
      b, d g, b \tuplet 3/2 { d g b } d g ) |
      b1~ \startTrillSpan |
      % 271
      \afterGrace b { a16 ( \stopTrillSpan } |
      b8 g d g b, d g, b |
      d, g b, d \tuplet 3/2 { g b d } g b ) |
      c2 \trill c,~ \startTrillSpan |
      \afterGrace c1 { b16 \stopTrillSpan } |
      % 276
      c,16 ees g ees g ees g ees c ees g ees g ees g ees |
      c ees g ees g ees g ees c ees g ees g ees g ees |
      \BASS d, d' d, d' g, < b d > f' < d b > g, < b d > f' < d b > f < d b > f < d b > |
      g, < b d > f' < d b > f < d b > f < d b > g, < b d > f' < d b > f < d b > f < d b > |
      \stemDown \tuplet 3/2 { c,,8 ^\sustainOn ees g } \stemNeutral \tuplet 3/2 4 { c ees g c, ees g } \TREB c16 ees g c \sustainOff \BASS |
      % 281
      ees,, ees' ees, ees' c, c' c, c' a a' a, a' g, g' g, g' |
      fis, fis' fis, fis' ees, ees' ees, ees' d, d' d, d' cis, cis' cis, cis' |
      c, c' c, c' a, a' a, a' fis, fis' fis, fis' d, d' d, d' |
      g bes d bes d bes d bes g bes d bes d bes d bes |
      g bes d bes d bes d bes g bes d bes d bes d bes |
      % 286
      a, a' a, a' d, < fis a > c' < a fis > d, < fis a > c' < a fis > c < a fis > c < a fis > |
      d, < fis a > c' < a fis > c < a fis > c < a fis > d, < fis a > c' < a fis > c < a fis > c < a fis > |
      \stemDown \tuplet 3/2 4 { g,,8 \sustainOn bes d g bes d g, bes d } \stemNeutral g16 bes d g \sustainOff \BASS |
      bes,,16 bes' bes, bes' g, g' g, g' e e' e, e' des, des' des, des' |
      c, c' c, c' b, b' b, b' bes, bes' bes, bes' g, g' g, g' |
      % 291
      e, e' e, e' c, c' c, c' bes, bes' bes, bes' \stemDown c, c' c, c' |
      f, c' aes c \stemNeutral f c aes c aes f' c f aes f c f |
      c aes' f aes c aes f aes f c' aes c f c aes c |
      \stemDown f,, c' aes c \stemNeutral f c aes c aes f' c f aes f c f |
      c aes' f aes c aes f aes f c' aes c f c aes c |
      % 296
      b, f' d f b f d f d b' f b d b f b |
      f d' b d f d b d \TREB b f' d f b f d f \BASS |
      b,, f' d f b f d f d b' f b d b f b |
      f d' b d f d b d \TREB b f' d f b f d f \BASS |
      c, aes' ees aes c aes ees aes ees c' aes c ees c aes c |
      % 301
      ees, c' ges c ees c ges c ges ees' c ees ges ees c ees |
      \TREB g, ees' bes ees g ees bes ees bes g' ees g bes g ees g |
      ees bes' ges bes ees bes ges bes ees bes' ges bes ees bes ges bes |
      ees4 r
      <<
        {
          \TUTTI
          r4 < ges,, ees ces >8. < ges ees ces >16
          < ges ees ces >4 < ges ees ces >8. < ges ees ces >16 < ges ees ces >4 < ges ees ces >8. < ges ees ces >16 |
          % 306
          < ges ees ces >4 \sustainOn \SOLO \BASS \stemNeutral < ces,, ges ees ces >8. < ces ges ees ces >16 < ces ges ees ces >4 \TUTTI \TREB \stemUp < ces' ees ges >8. < ces ees ges >16 \sustainOff |
          < ces ees ges >4 < ces ees ges >8. < ces ees ges >16 < ces ees ges >4 < ces ees ges >8. < ces ees ges >16 |
          < ces ees ges >4 \sustainOn \SOLO \BASS \stemNeutral < ces, ges ees ces >8. < ces ges ees ces >16 < ces ges ees ces >4 \TUTTI \TREB \stemUp < ces' ees ges >8. < ces ees ges >16 \sustainOff |
          < bes ees ges >4 \sustainOn \SOLO \BASS \stemNeutral < bes, ges ees bes >8. < bes ges ees bes >16 < bes ges ees bes >4 \TUTTI \TREB \stemUp < bes' ees ges >8. < bes ees ges >16 \sustainOff |
          < a ees' ges >4 \sustainOn
        } \\
        {
          r2 |
          R1 |
          % 306
          r4 s2 r4 |
          R1 |
          r4 s2 r4 |
          R1 |
          r4
        }
      >>
      \BASS \stemNeutral < a, ges ees c a >8. < a ges ees c a >16 < a ges ees c a >4 \sustainOff < ees' ees, >8. < ees ees, >16 |
      % 311
      < ges ges, >4. < f f, >8-. < ees ees, >-. < des des, >-. < c c, >-. < bes bes, >-. |
      <<
        \autoBeamOff \crossStaff
        {
          a' ges f ees des c
        } \\
        {
          < a a, >-. ges-. f-. ees-. des-. c-. bes-. a-.
        }
      >> |
      \stemDown bes c d ees
      <<
        \autoBeamOff \crossStaff
        {
          f' g aes a
        } \\
        {
          f, g aes a
        }
      >> |
      bes c cis d ees e f g |
      aes4. g8 f ees d c |
      <<
        \autoBeamOff \crossStaff
        {
          % 316
          b' aes g f ees d c b |
          c d e f g a b c
        } \\
        {
          % 316
          b, aes g f ees d c b |
          c d e f g a b c
        }
      >> |
      d e f fis g a bes bes |
      bes4. a8 g f e d |
      <<
        \autoBeamOff \crossStaff
        {
          cis'8 bes a g f e d cis |
          % 321
          d e f g a b c cis
        } \\
        {
          cis, bes a g f e d cis |
          % 321
          d e f g a b c cis
        }
      >> |
      d e f g a b c cis |
      d c bes a g fis ees d |
      <<
        \autoBeamOff \crossStaff
        {
          c' bes a g fis ees d cis |
          c bes c d e fis g a
        } \\
        {
          c, bes a g fis ees d cis |
          c bes c d e fis g a
        }
      >> |
      % 326
      bes c d ees fis g aes a |
      bes a g fis ees d c bes |
      <<
        \autoBeamOff \crossStaff
        {
          a' g fis ees
        } \\
        {
          a, g fis ees
        }
      >>
      \stemDown d c bes a |
      g a b c
      <<
        \autoBeamOff \crossStaff
        {
          d' ees f fis |
          g a b c
        } \\
        {
          d,, ees f fis |
          g a b c
        }
      >>
      \stemNeutral d ees f fis |
      % 331
      g a b c \TREB d ees f fis |
      g a b c d ees f fis |
      \tuplet 3/2 4 { g, b d g, b d \omit TupletNumber g, b d g, b d } |
      \tuplet 3/2 4 { g, a c g a c g a c g a c } |
      \tuplet 3/2 4 { g b d g, b d g, b d g, b d } |
      % 336
      \tuplet 3/2 4 { g, a c g a c g a c g a c } \undo \omit TupletNumber |
      <<
        {
          < g b >4 \BASS r r2 |
          \TUTTI \set doubleSlurs = ##t
          r2 r4 \stemNeutral < f des > ( |
          \stemUp < ges ees >1 )
        } \\
        {
          \TUTTI
          r8 \BASS \tuplet 3/2 { a,,16 ^\markup { \dynamic "pp" \italic "legato" } ( g fis } g8 a ) g ( \tuplet 3/2 { bes16 aes g } aes8 bes ) |
          aes1 |
          aes' |
        }
      >> |
      \TREB \tuplet 3/2 4 { aes8 des f aes,8 des f \omit TupletNumber aes,8 des f aes,8 des f } |
      % 341
      \tuplet 3/2 4 { aes, ees' ges aes, ees' ges aes, ees' ges aes, ees' ges } \undo \omit TupletNumber |
      <<
        {
          < f aes, >4 \BASS r r2 |
          \TUTTI
          r2 r4 < bes, ees g > |
          < f' aes >1
        } \\
        {
          \TUTTI
          r8 \BASS \tuplet 3/2 { bes,,16 ^\pp ( aes g } aes8 bes ) a ( \tuplet 3/2 { c16 bes a } bes8 c ) |
          bes1 |
          bes' |
        }
      >>
      \TREB \tuplet 3/2 4 { bes8 ees g bes, ees g \omit TupletNumber bes, ees g bes, ees g } |
      % 346
      \tuplet 3/2 4 { bes, f' aes bes, f' aes f aes bes f aes bes } |
      \tuplet 3/2 4 { g bes des g, bes des g, bes des g, bes des } |
      \tuplet 3/2 4 { a c ees a, c ees b d f b, d f } |
      \tuplet 3/2 4 { des e g d f aes d, f aes } \undo \omit TupletNumber ces,16 d f aes |
      ces,16 d f aes ces, d f aes ces, d f aes ces, d f aes |
      % 351
      ces, d f aes d, f aes ces d, f aes ces d, f aes ces |
      d, f aes ces d, f aes ces d, f aes ces d, f aes ces |
      d, f aes ces f, aes ces d f, aes ces d f, aes ces d |
      f, aes ces d aes ces d f aes, ces d f aes, ces d f |
      aes, ces d f aes, ces d f aes, ces d f \tuplet 3/2 { aes,8 ces d } |
      <<
        {
          % 356
          \stemNeutral f4 r r2
        } \\
        {
          % 356
          \TUTTI
          r8 \BASS \tuplet 3/2 { ees,,,16 ( ^\markup { \dynamic "pp" \italic "cresc." } d cis ) } d8-. ees-. d-. \tuplet 3/2 { ees16 ( d cis ) } d8-. ees-. |
        }
      >> |
      \TUTTI
      d-. \tuplet 3/2 { ees16 ( d cis ) } d8-. ees-. d-. \tuplet 3/2 { ees16 ( d cis ) } d8-. ees-. |
      d-. \tuplet 3/2 { ees16 ( d cis ) } d8-. ees-. d-. \tuplet 3/2 { ees16 ( d cis ) } d8-. ees-. |
      d-. \tuplet 3/2 { ees16 ( d cis ) } d8-. ees-. d-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c' >-. |
      < bes bes' >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c' >-. < bes bes' >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c' >-. |
      % 361
      < bes bes' >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < c c' >-. < bes bes' >-. \tuplet 3/2 { c16 ( bes a ) } bes8-. < bes bes' >-. |
      < ees ees, >1 |
      \SOLO
      \stemDown ees,32 ^\ff \sustainOn g bes ees r8 \stemNeutral ees32 g bes ees r8 \TREB ees32 g bes ees r8 g,32 bes ees g r8 |
      < g g, >16 [ r < ees ees, > ] r < ees ees, > [ r < bes bes, > ] r < bes bes, > [ r < g g, > ] r < g g, > [ r < ees ees, > ] r \BASS |
      < ees ees, > [ r < bes bes, > ] r < bes bes, > [ r < g g, > ] r \stemDown < g g, > [ r < ees ees, > ]
      <<
        \autoBeamOff \crossStaff
        {
          \stemUp g s g s ees \sustainOff
        } \\
        {
          \stemDown r < ees ees, > [ r ees, ] r
        }
      >> |
      % 366
      \stemNeutral < aes ees c aes >4 \sustainOn r r2 |
      \stemDown aes,32 c ees aes r8 \stemNeutral aes32 c ees aes r8 \TREB aes32 c ees aes r8 aes32 c ees aes r8 |
      < aes aes, >16 [ r < ees ees, > ] r < ees ees, > [ r < c c, > ] r < c c, > [ r < aes aes, > ] r < aes aes, > [ r < ees ees, > ] r \BASS |
      < ees ees, > [ r < c c, > ] r < c c, > [ r < aes aes, > ] r < aes aes, > [ r < ees ees, > ] r
      <<
        \autoBeamOff \crossStaff
        {
          s ees s c \sustainOff |
          \TUTTI
          r4 < bes' f' >2. ^\f
        } \\
        {
          < c, c, >16 [ r < aes aes, > ] r |
          < bes f d bes >4 \sustainOn r r2 |
        }
      >> |
      % 371
      \FREE \time 327/32
      <<
        \autoBeamOff \crossStaff
        {
          \SOLO bes16 \sustainOff c d ees f g aes bes
        } \\
        {
          r8 bes,16-. [ c-. ] d-. [ ees-. f-. g-. ]
        }
      >>
      aes [ bes c d ] \TREB ees [ f g aes ] < bes bes, > [ < c c, > < d d, > < ees ees, > ] \tuplet 3/2 { < f f, >8-. < f g, >-. < f aes, >-. } < f bes, > ( < ees ees, >4 ) \autoBeamOff < d g, >8 < d g, > ( \autoBeamOn < c c, >4 ) < bes ees, >8 < bes ees, > ( [ < aes aes, > < g c, > < f f, > ] < e g, > [ < c aes > < c a > < d bes > ] < ees bes > [ < d bes > < ees ces > ) < ees ces > ] < f ees ces >1 < f d bes >2 \fermata s1*2 \BASS s1*2 s2 s8.. |
      \time 4/4 \TUTTI
      < g, ees bes ees, >4 < g ees >16 bes < g ees > bes < g ees > bes < g ees > bes < g ees > bes < g ees > bes \NOFREE |
      < g ees > bes < g ees > bes < g ees > bes < g ees > bes < g ees > bes < g ees > bes < ees, ees, >8. < ees ees, >16 |
      < ees ees, >8 < g ees >16 [ bes ] < g ees > bes < g ees > bes < g ees > bes < g ees > bes < g ees > bes < g ees > bes |
      < g ees > bes < g ees > bes < g ees > bes < g ees > bes < g ees > bes < g ees > bes < g ees >8. < ees ees, >16 |
      % 376
      < bes bes, >2 < ees ees, >8 r < aes, aes, > r |
      < bes bes, >2 < bes bes, >4. bes'8 \TREB |
      < bes f' >2 ( ees4 < f ees c aes > |
      < g ees bes >2 ) < aes f bes, >4. < f bes, >8 |
      <<
        {
          < aes f bes, >2 ( < g ees >4 f |
          % 381
          g2 f4 )
        } \\
        {
          s2. < ees c a >8 < d bes aes > |
          % 381
          < ees bes g >4 < ees c > < c aes >
        }
      >>
      \SOLO \BASS < bes bes, >4 |
      ees,16 g bes ees ees, g bes ees ees, g bes ees ees, g bes ees |
      ees, g bes ees ees, g bes ees ees, g bes ees ees, g bes ees |
      ees, g bes ees ees, g bes ees ees, g bes ees ees, g bes ees |
      ees, g bes ees ees, g bes ees ees, g bes ees ees, g bes ees |
      % 386
      \tuplet 5/4 4 { des, ees g bes ees des, ees g bes ees des, ees g bes ees des, ees g bes ees } |
      \omit TupletNumber \tuplet 5/4 4 { des, ees g bes ees des, ees g bes ees des, ees g bes ees des, ees g bes ees } |
      \tuplet 5/4 4 { des, ees g bes ees des, ees g bes ees des, ees g bes ees des, ees g bes ees } \undo \omit TupletNumber |
      c, ees aes ees' c, ees aes ees' c, ees aes ees' c, ees aes ees' |
      c, ees aes ees' c, ees aes ees' c, ees aes ees' c, ees aes ees' |
      % 391
      bes, ees g des' bes, ees g des' bes, ees g des' bes, ees g des' |
      ees, g bes des ees, g bes des ees, g bes des ees, g bes des |
      aes,4 \TREB r8 c''16 ees aes,4 r8 c,16 ees |
      aes,4 \BASS r8 c,16 ees \stemDown aes,4 r8 c,16 ees |
      aes,4 r8 des16 f aes4 \stemNeutral r8 des16 f |
      % 396
      aes4 \TREB r8 ees'16 ges aes4 r8 des16 f |
      aes8 r r < ees c >16 ( aes ) < ees c > ( aes ) r8 r < ees, c >16 ( aes ) |
      < ees c > ( aes ) r8 r \BASS < ees, c >16 ( aes ) < ees c > ( aes ) r8 r aes,,16 ( aes' ) |
      aes, ( aes' ) r8 r aes,16 ( aes' ) aes, ( aes' ) r8 r aes16 ( aes' ) |
      aes,16 ( aes' ) r8 r \stemDown aes16 ( \RIGHT aes' ) \LEFT aes, ( \RIGHT aes' ) \stemNeutral \LEFT r8 r aes,,16 ( aes' ) |
      % 401
      < gis gis, >8 \stemDown a,16 [ gis ] a gis a gis \stemNeutral cis bis cis bis e dis e dis |
      a' gis a gis \TREB cis bis cis bis e dis e dis a' gis a gis |
      cis bis cis bis e dis e dis a' gis a gis e dis e dis |
      a' gis a gis e dis e dis a' gis a gis e dis e dis |
      gis fis gis fis e dis e dis gis fis gis fis e dis e dis |
      % 406
      gis fis e dis gis fis e dis gis fis e dis gis fis e dis |
      gis fis e dis gis fis e dis gis fis e dis gis8 < dis gis, > |
      \set doubleSlurs = ##t
      < cis e >4 r8 < dis gis, > ( cis4-. ) r8 < dis gis, >8 ( |
      < cis e >4-. ) r8 < dis gis, > ( < cis e >4-. ) r8 < dis gis, > ( |
      < cis e >4-. ) r8 < dis gis, > ( < cis e >4-. ) r8 < b fis' > |
      % 411
      < b fis' >4 r8 < b fis' >8 < b fis' >4 r8 < b fis' > ( |
      < e gis >4-. ) r8 < dis fis > ( < e gis >4-. ) r8 < cis e > ( |
      < dis fis >4-. ) r8 < cis e > ( < dis fis >4-. ) r8 < dis gis, > ( |
      < cis e >4-. ) r8 < dis gis, > ( < cis e >4-. ) r8 < dis gis, > |
      \unset doubleSlurs
      < ees aes, >4 r4 r2 \BASS |
      % 416
      des,,,4 \sustainOn f'' aes, f' |
      des, f' aes, f' |
      des, f' aes, f' \sustainOff |
      aes,, \sustainOn ges'' aes, ges' |
      aes,, f'' aes, f' |
      % 421
      aes,, ees'' aes, ees' |
      aes,, des' aes des |
      aes,8 r r4 \sustainOff a8 r \TUTTI < bes bes, > r |
      < bes bes, > r < bes bes, > r < ees ees, > r < bes bes, > r |
      < ees ees, > r < bes bes, > r < ees ees, > r < ees ees, > < bes bes, > |
      % 426
      < ees ees, > r < bes bes, > r < ees ees, > r < ees ees, > < bes bes, > |
      < bes bes, >2 < bes bes, >4 < ees ees, >8 < bes bes, > |
      < ees ees, > r < bes bes, > r < ees ees, >4 < bes bes, >8 < ees ees, > |
      < bes bes, > r < ees ees, > r < bes bes, >4 < ees ees, >8 < bes bes, > |
      < ees ees, > r < bes bes, > r < ees ees, > r < bes bes, > r |
      % 431
      < bes bes, >2 \RIGHT \TUTTI \stemDown < bes' d f > |
      \LEFT \SOLO R1 |
      \tuplet 3/2 { f'8 d bes } aes16 f d bes aes4 r |
      R1 |
      \stemNeutral \tuplet 3/2 4 { g''8 ees bes g ees bes } g4 r |
      % 436
      R1 |
      f'16 aes bes d f, aes bes d f, aes bes d f, aes bes d |
      f, aes bes d f, aes bes d \TREB bes bes' a, a' aes, aes' g, g' \BASS |
      f, f' ees, ees' d, d' c, c' bes, bes' a, a' aes, aes' g, g' |
      f, f' ees, ees' d, d' c, c' bes, bes' aes aes' g, g' f, f' |
      % 441
      \tuplet 3/2 4 { < ees ees, >8-. ees'-. d-. des-. c-. ces-. \omit TupletNumber bes-. a-. aes-. g-. ges-. f-. } |
      \tuplet 3/2 4 { ees-. ees' _\markup \italic "staccato" d des c ces bes a aes g ges f } |
      \tuplet 3/2 4 { ees ees' d des c ces bes a aes g ges f } |
      ees16 g bes ees ees,16 g bes ees f, aes des f g, bes ees g \TREB |
      \tuplet 3/2 4 { aes,8-. aes'-. g-. ges _\markup \italic "stacc." f fes ees d des c b bes } |
      % 446
      \tuplet 3/2 4 { aes8 aes' g ges f fes ees d des c ces bes } \BASS |
      \tuplet 3/2 4 { aes g ges f e ees d des c b bes a } |
      aes16 c ees aes c, ees aes c ees, aes c ees aes, c ees aes |
      \tuplet 3/2 4 { f,8 f' e ees d des c b bes a aes g } |
      \tuplet 3/2 4 { f f' e ees d des c bes aes g f ees } \undo \omit TupletNumber |
      % 451
      d16 f aes d c, f aes c bes, d f bes b, d f b |
      c,8 \TREB c'16 [ b ] d c ees d f ees g fis aes g a gis |
      bes a b ais c b d c ees d ees d ees c g ees |
      aes,8 aes'16 [ g ] bes aes b bes c b des c d cis ees d |
      e dis f e ges f g fis aes f c aes aes' f c aes |
      % 456
      bes8 \sustainOn bes'16 [ g ] bes g ees g ees g bes, ees bes ees g, bes |
      g bes ees, g ees g bes, ees bes ees g, bes \BASS g bes ees, g \sustainOff |
      bes,8 \sustainOn \TREB bes''16 [ ges ] bes ges ees ges ees ges bes, ees \BASS bes ees ges, bes |
      ges bes ees, ges ees ges bes, ees bes ees \stemDown ges, bes ges bes ees, ges \sustainOff |
      a, < dis fis > a' < fis dis > a < fis dis > a < fis dis > fis, < dis' fis > a' < fis dis > a < fis dis > a < fis dis > |
      % 461
      a, < dis fis > a' < fis dis > \stemNeutral a < fis dis > a < fis dis > a, dis fis a a, dis fis a |
      gis, b e gis gis, b e gis fis, a dis fis fis, a dis fis |
      e gis b e e, gis b e a,, cis e a a, cis e a |
      a,4 \sustainOn r r2 |
      r4 r8 \stemDown c16 a \sustainOff \tuplet 5/4 { aes ( \sustainOn ces d f aes ) } r4 |
      % 466
      g,16 \sustainOff bes ees g r4 \tuplet 5/4 { f,16 aes bes d f } r4 |
      ees16 g bes ees r4 aes,,16 c ees aes r4 |
      bes,8_. bes_. c_. d_. ees_. b_. f'_. bes,_. |
      g' bes, aes' bes, bes' bes, c' c, |
      d' d, ees' ees, f, f' g, g' |
      % 471
      \stemNeutral aes, aes' bes, bes' c, c' d, d' |
      ees,16 ees' f, f' g, g' aes, aes' bes, bes' c, c' d, d' ees, ees' |
      f, f' g, g' \TREB aes, aes' a, a' bes, bes' bes, bes' g, g' ees, ees' |
      aes, aes' r8 r4 r2 |
      \BASS f,16 f' r8 r4 r2 |
      % 476
      d,16 d' r8 r4 bes,16 bes' r8 r4 |
      aes,16 aes' r8 r4 r \stemDown \tuplet 3/2 { ees,8 d c } |
      bes4 \sustainOn r16 d f aes ces f, aes ces d aes ces d |
      f ces d f aes d, f aes ces f, aes ces d aes ces d |
      \stemDown bes,,4 r16 aes'16 ces \stemNeutral d f ces d f aes d, f aes |
      % 481
      ces f, aes ces d aes ces d f ces d f aes d, f aes |
      bes,, \sustainOff bes' a aes \tuplet 3/2 4 { g8 ges f e ees d cis c b } |
      \tuplet 3/2 4 { bes a aes g fis f e ees d c ces bes } |
      ees4 \sustainOn \TUTTI < ees' g bes >16 ees' < bes g ees > ees < bes g ees > \sustainOff ees < bes g ees > ees < bes g ees > ees < bes g ees > ees |
      < bes g ees > ees < bes g ees > ees < bes g ees > ees < bes g ees > ees < c aes > ees < c aes > ees < bes g ees > ees < bes g ees > ees |
      % 486
      < bes g ees > ees < bes g ees > ees < bes g ees > ees < bes g ees > ees < bes g ees > ees < bes g ees > ees < bes g ees > ees < bes g ees > ees |
      < bes g ees > ees < bes g ees > ees ees,, ees' ees, ees' aes, ees' aes, ees' g, ees' g, ees' |
      aes,2. < aes ees aes, >8. < aes ees aes, >16 |
      < aes ees aes, >4 < aes ees aes, >8. < aes ees aes, >16 < aes ees aes, >4 < aes ees aes, >8. < aes ees aes, >16 |
      \time 9/4 \FREE
      <<
        {
          r2 r4
        } \\
        {
          \TUTTI < aes ees aes, >2. \fermata
        }
      >>
      \SOLO aes,16 ^\ff \sustainOn [ c ees aes c ees aes ] s2 s16 s8 s \sustainOff \TUTTI < aes, ees' aes >8. < aes ees' aes >16 |
      % 491
      \time 4/4
      < a ees' a >2. < a ees' f a >8. < a ees' f a >16 |
      < a ees' a >4 < a ees' f a >8. < a ees' f a >16 < a ees' a >4 < a ees' f a >8. < a ees' f a >16 |
      \time 21/8 \FREE
      <<
        {
          r2 r4
        } \\
        {
          \TUTTI < a ees' f a >2.
        }
      >>
      \SOLO a,16 ^\ff \sustainOn [ c ees f a c ] s1 s8 s \sustainOff \TUTTI < a ees' f a >8. < a ees' f a >16 |
      \time 4/4
      < bes ees bes' >2. < bes ees g bes >8. < bes ees g bes >16 \NOFREE |
      < bes ees bes' >4 < bes ees g bes >8. < bes ees g bes >16< bes ees bes' >4 < bes ees g bes >8. < bes ees g bes >16 |
      % 496
      < bes ees g bes >2 \SOLO bes8-. \tuplet 3/2 { c16 ( bes a ) } bes8-. b-. |
      c-. \tuplet 3/2 { d16 ( c b ) } c8-. cis-. d-. \tuplet 3/2 { ees16 ( d cis ) } d8-. d-. |
      ees-. \tuplet 3/2 { f16 ( ees d ) } ees8-. e-. f-. \tuplet 3/2 { g16 ( f e ) } f8-. fis-. |
      g-. aes-. a-. bes-. ces-. c-. des-. d-. \TREB
      ees-. e-. f-. ges-. g-. aes-. a-. bes-. |
      % 501
      ces c des d ees e f ges |
      g aes a bes ces c des d |
      ees bes g ees bes g \BASS ees16 bes g ees |
      < aes f d bes >4 r r2 |
      R1 |
      % 506
      R |
      R \TREB |
      < ees'' ges >8 r < f bes, > r ees r < f bes, > r |
      < ges ees > r < f bes, > r < ges ees > r < ges ees > < f bes, > |
      < ges ees > r < f bes, > r < ges ees > r < aes des, > r |
      % 511
      < aes des, > r r4 < aes des, >8 r < bes ges > < aes f > |
      < bes ges > r < aes f > r < bes ges > r < aes f > < ges ees > |
      < aes f > r < ges ees > r < aes f > r < ges ees > < f bes, > |
      < ges ees > r < f bes, > r < ges ees > r < f bes, > r |
      < f bes, > r r4 < f bes, >8 r \TUTTI < f, bes, >4 \p |
      % 516
      < g ees >4 \SOLO r r16 ees' \pp bes ees g ees bes ees |
      g,4 r r16 ees' bes ees g ees bes ees |
      g,4 r r16 ees' bes ees g ees bes g |
      aes4 r r16 f' d f aes f d f |
      bes,4~ bes16 g' ees g bes4~ bes16 g ees g |
      % 521
      bes,4~ bes16 aes' f aes bes4~ bes16 aes f aes |
      bes,4~ bes16 g' ees g bes4~ bes16 g ees g |
      bes,4 r r2 |
      R1 \BASS |
      R1 |
      % 526
      \RIGHT r2 \LEFT r2 |
      R1 |
      R1 |
      r2 \TUTTI r8 < ees,, g bes ees >4 \f < bes bes' >8 |
      < ees g bes ees >4 < ees g bes ees > ( < aes c ees > < ees g bes ees > ) |
      % 531
      \SOLO ees,16 \sustainOn ees' < bes g > ees g, g' < ees bes > g bes, bes' < g ees > bes ees, ees' < bes g > ees |
      ees, ees' < bes g > ees ees, ees' < bes g > ees \sustainOff aes, aes' < ees c > aes ees, ees' < bes g > ees |
      \TUTTI < c g ees c >2~ < c g ees c >8 < c g ees c >4 < g g, >8 |
      < c c, >4 < c g ees c > ( < c aes f > < c g ees c > ) |
      \SOLO c,,16 \sustainOn c' < g ees > c ees, ees' < c g > ees g, g' < ees c > g c, c' < g ees > c |
      % 536
      c, c' < g ees > c c, c' < g ees > c \sustainOff f, f' < c aes > f c, c' < g ees > c |
      <<
        {
          \TUTTI < c aes f >4
        } \\
        {
          r
        }
      >>
      c,16 c' < g ees > c f, f' < c aes > f des, des' < aes f > des |
      ges, ges' < des bes > ges des, des' < aes f > des
      <<
        {
          \TUTTI < des bes ges! >4
        } \\
        {
          r
        }
      >>
      des,16 des' < aes f > des |
      ges, ges' < des bes > ges des, des' < aes f > des ges, ges' < des bes > ges ees, ees' < bes g > ees |
      aes, aes' < ees c > aes f, f' < c a > f \TREB bes, bes' < f d > bes g, g' < d b > g |
      % 541
      c, c' < g ees > c aes, aes' < ees c > aes d, d' < aes f > d bes, bes' < f d > bes \BASS |
      ees,,8 \sustainOn r r16 bes' ees g ees,8 r r16 bes' ees g |
      ees,8 r r16 bes' ees g ees,8 r r16 bes' ees g \sustainOff |
      aes,,8 \sustainOn r r16 aes' c f aes,,8 r r16 aes' c f |
      aes,,8 r r16 aes' c f aes,,8 r r16 aes' c f \sustainOff |
      % 546
      bes,,8 \sustainOn r \tuplet 5/4 { r16 ( f' aes bes d ) } bes,8 r \tuplet 5/4 { r16 ( f' aes bes d ) } |
      bes,8 r \tuplet 5/4 { r16 ( f' aes bes d ) } bes,8 r \tuplet 5/4 { r16 ( f' aes bes d ) } |
      bes,8 r \tuplet 5/4 { r16 ( f' aes bes d ) } bes,8 r \tuplet 5/4 { r16 ( f' aes bes d ) } |
      bes,8 r \tuplet 5/4 { r16 ( f' aes bes d ) } bes,8 r \tuplet 5/4 { r16 ( f' aes bes d ) } |
      bes,8 r \tuplet 5/4 { r16 ( f' aes bes d ) } bes,8 r \tuplet 5/4 { r16 ( f' aes bes d \sustainOff ) } |
      % 551
      ees,8 \sustainOn r r16 g bes ees ees,8 r r16 g bes ees \sustainOff |
      bes,8 \sustainOn r \tuplet 5/4 { r16 ( f' aes bes d ) } bes,8 r \tuplet 5/4 { r16 ( f' aes bes d \sustainOff ) } |
      ees,8 \sustainOn r r16 g bes ees ees,8 r r16 g bes ees \sustainOff |
      bes, d f aes bes, d f aes bes, d f aes bes, d f aes |
      bes, d f aes bes, d f aes bes, d f aes bes, d f aes |
      % 556
      bes, d f aes bes, d f aes bes, d f aes bes, d f aes |
      bes, d f aes bes, d f aes bes, d f aes d, f aes ces |
      d, f aes ces f, aes ces d f, aes ces d aes ces d f \TREB |
      \tuplet 3/2 4 { d8 ees e f fis g aes a bes b c cis } |
      \tuplet 3/2 4 { d8 ees e f fis g aes a bes } \tuplet 5/4 { b16 c cis d ees }
      % 561
      < bes g > ees < bes g > ees < bes g > ees < bes g > ees < bes g > ees < bes g > ees < bes g > ees < bes g > ees |
      < bes g > ees < bes g > ees < bes g > ees < bes g > ees < bes g > ees < bes g > ees < bes g > ees < bes g > ees |
      < bes g > ees < bes g > ees < bes g > ees < bes g > ees < aes, f > d < aes f > d < g, ees > c < g ees > c |
      < f, d > bes < f d > bes < ees, c > aes < ees c > aes < d, bes > g < d bes > g < c, aes > f < c aes > f |
      < bes, g > ees < bes g > ees < bes g > ees < bes g > ees < aes, f > d < aes f > d < g, ees > c < g ees > c |
      % 566
      < f, d > bes < f d > bes < ees, c > aes < ees c > aes < d, bes > g < d bes > g < c, aes > f < c aes > f \BASS |
      < bes, g > ees < bes g > ees < bes g > ees < bes g > ees < aes, f > d < aes f > d < g, ees > c < g ees > c |
      < f, d > bes < f d > bes < ees, c > aes < ees c > aes < d, bes > g < d bes > g < c, aes > f < c aes > f |
      \stemDown ees,-. bes' g bes ees bes g bes \stemNeutral ees-. bes' g bes ees bes g bes |
      bes,-. f' d f bes f d f \TREB bes-. f' d f bes f d f \BASS |
      % 571
      ees,-. bes' g bes ees bes g bes \TREB ees-. bes' g bes ees bes g bes |
      bes,-. f' d f bes f d f bes-. d f bes d,-. f bes d |
      g, \sustainOn bes ees bes g bes ees bes aes bes f' bes, f bes d bes |
      g bes ees bes g bes ees bes aes bes f' bes, f bes d bes |
      g bes ees bes g bes ees bes aes bes f' bes, f bes d bes |
      % 576
      g bes ees bes g bes ees bes aes bes f' bes, f bes d bes \sustainOff |
      < bes g ees >4 _\markup { \italic "sempre Ped." } r r \BASS r8 \stemDown \tuplet 3/2 { ees,,,16 bes g } |
      \stemNeutral ees g bes ees r4 r2 \TREB |
      < ees'' g bes >4-. _\markup { \italic "sempre Ped." } r < ees g bes >-. < ees g bes >-. |
      < ees g bes >-. r < ees bes g ees >-. r |
      % 581
      < ees bes g ees >-. r r2 \bar "|." |
    }
  >>
  \layout
  {
    \context
    {
      \Score
      \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8)
      \override TupletBracket.bracket-visibility = ##f
      \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 0) (padding . 1))
      \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 0) (padding . 1))
    }
    \context
    {
      \PianoStaff
      \consists #Span_stem_engraver
    }
  }
  % \midi {}
}
