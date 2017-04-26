\version "2.18.2"
\pointAndClickOff
\paper
{
  #(set-paper-size "a4")
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
N = \ottava #0
CRESC = _\markup \italic "cresc."
DIM = _\markup \italic "dim."
LSHIFT = \once \override NoteColumn.force-hshift = #-0.5

\header
{
  % title = "Concert V - III"
  tagline = ##f
  piece = \markup { \hspace #14.4 "RONDO." }
}

\score
{
  \new PianoStaff
  <<
    % Right Hand
    \new Staff = "upper" \relative c''
    {
      \time 6/8
      \key ees \major \TREB
      \tempo "Allegro."
      <<
        {
          % 1
          bes8 \ff ( [ ees ] ) ees ( [ g ] ) b,\rest g'16 ( bes ) |
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 \p b,,\rest d'16 ( [ f ] ) ees8 b,\rest g'16 ( bes ) |
          bes4~ \trill bes16 a bes4 bes,8
          bes8 \ff ( [ ees ] ) ees ( [ g ] ) b,\rest g'16 ( bes ) |
          % 6
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 \p b,,\rest d'16 ( [ f ] ) ees8 b,\rest g'16 ( bes ) |
          bes4~ \trill bes16 a bes4
        } \\
        {
          % 1
          < g, ees >8~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes > |
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s ees, |
          < f d >4.~ < f d >4 s8
          < g, ees >8~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes > |
          % 6
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s ees, |
          < f d >4.~ < f d >4
        }
      >>
      < bes bes, >16 _\markup \italic espressivo ( < a a, > ) |
      < a a, >8 r < aes aes, >16 ( < g g, > ) < g g, >8 r < ges ges, >16 ( < f f, > ) |
      < f f, >8 r < fes fes, >16 ( < ees ees, > ) < ees ees, >8 r
      <<
        {
          < ees ees, >16 ( < d d, > ) |
          % 11
          d4 \f d8 d8. ees16 f8 |
          f ( g ) ees-. ees4
        } \\
        {
          < bes aes >8 |
          % 11
          < bes aes d, >4 < bes aes d, >8 < bes aes d, >8. < bes aes ees >16 < bes aes f >8 |
          < bes aes f > < bes g > < bes g ees > < bes g ees >4
        }
      >>
      < bes bes' >16 ( < a a' > ) |
      < a' a, >8 r < aes aes, >16 ( < g g, > ) < g g, >8 r < ges ges, >16 ( < f f, > ) |
      < f f, >8 r < fes fes, >16 ( < ees ees, > ) < d d, >8 r \TUTTI d,16 \p ( des ) |
      des8 \CRESC r c16 ( b ) b8 r bes16 ( a ) |
      % 16
      a8 r aes16 ( g ) g8 r
      <<
        {
          \TUTTI bes' \f |
          bes ( [ ees ] ) ees ( [ g ] ) r g16 ( bes ) |
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 r d16 ( f ) ees8 r bes8 |
          bes4~ \trill bes16 a bes8 r bes, |
          % 21
          bes ( [ ees ] ) ees ( [ g ] ) r g16 ( bes ) |
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 r d16 ( f ) ees8 r bes8 |
          bes4~ \trill bes16 a bes8
        } \\
        {
          \TUTTI g,8 |
          < g ees >~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes >8 |
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s < g ees > |
          < f d >4.~ < f d >8 s g, |
          % 21
          < g ees >~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes > |
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s < g ees > |
          < f d >4.~ < f d >8
        }
      >>
      r < bes bes, >16 ( < a a, > ) |
      < a a, >8 r < aes aes, >16 ( < g g, > ) < g g, >8 r < ges ges, >16 ( < f f, > ) |
      % 26
      < f f, >8 r < fes fes, >16 ( < ees ees, > ) < ees ees, >8 r < ees ees, >16 ( < d d, > ) |
      <<
        {
          \TUTTI
          d4 d8 d8. ees16-. f8-. |
          f ( g ) ees-. ees4 ees16 ( d ) |
          d4 d8 d8. ees16-. f8-. |
          f16 \sf ( [ g ] )
        } \\
        {
          \TUTTI
          < bes, aes d, >4 < bes aes f >8 < bes aes f >8. < bes g >16 < bes aes >8 |
          < bes g >4 < bes g >8 < bes g >4 < aes f >8 |
          < aes f >4 < aes f >8 < aes f >8. < bes g >16 < bes aes >8 |
          < bes g >
        }
      >>
      r < ees ees, > < ees ees, >8.-. < f f, >16-. < g g, >8-. |
      <<
        {
          % 31
          \TUTTI
          g16 \sf ( [ aes ] )
        } \\
        {
          % 31
          \TUTTI
          bes,8
        }
      >>
      r < f f' > < f f' >8.-. < g g' >16-. < aes aes' >8-. |
      <<
        {
          \TUTTI
          aes'16 \sf ( [ bes ] )
        } \\
        {
          \TUTTI
          < ees, bes >8
        }
      >>
      r < g g, > < g g, >8. < aes aes, >16-. < bes bes, >8-. |
      < c f, ees c >8.-. < bes ees, c >16-. < aes ees c >8-. < g c, g >8.-. < f c f, >16-. < ees c f, >8-. |
      < d bes d, >8.-. < c f, ees >16-. < bes f d >8-. < g' ees bes g >8.-. < aes f bes, >16-. < bes g bes, >8-. |
      < c f, ees c >4 r8 < d aes f d >4 r8 |
      % 36
      < ees g, ees >4 r8 r4 r8 |
      <<
        {
          \TUTTI
          \stemNeutral < ees aes, ees >4. \sf ( \stemUp c16 b c d ees c ) |
          < bes ees, >4 r8 r4 r8 |
          < f aes >4. \sf s
        } \\
        {
          \TUTTI
          s4. ees |
          r8. bes16 bes8 bes bes bes |
          r8 bes16 ( c d ees f e f g aes f )
        }
      >> |
      < ees g, >4 r8 r4 r8 |
      % 41
      < g bes ees g >4 r8 r4 r8 |
      < ees g, >4 \SOLO r8 \tuplet 3/2 8 { ees,16 \f [ d c ] bes [ c d ] } ees f |
      \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes \tuplet 3/2 8 { bes [ aes g ] } aes bes c d |
      ees4 \sf r8 \tuplet 3/2 8 { ees16 [ d c ] bes [ c d ] } ees f |
      \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes \tuplet 3/2 8 { bes [ aes g ] } aes bes c d |
      % 46
      \U \tuplet 3/2 8 { ees [ d c ] bes [ c d ] } ees f \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes |
      bes \DIM ( aes g c bes aes g f ees d c b ) \N |
      bes ( aes g c bes aes g f ees d c b ) |
      <<
        {
          bes4. _\markup \italic dolce ( g'4 ees8 ) |
          d4. ( c4 ces8 ) |
          % 51
          ces4 ( bes8 ) bes4 bes8 |
          #(define afterGraceFraction (cons 15 16))
          \afterGrace bes4. \trill ( { a16 bes } ees4 ) bes8 |
          \tieDown \slashedGrace bes8~ < bes f' >4 \< bes8 \slashedGrace bes~ \! < bes g' >4 bes8 |
          \slashedGrace bes8~ \once \tieUp < bes aes' >4.~ \p < bes aes' >4 bes8 |
          \slashedGrace bes8~ < bes aes' >4 \< bes8 \slashedGrace ees8~ < ees bes' >4 \! ees8 |
          % 56
          \slashedGrace ees8~ \once \tieUp < ees c' >4.~ \p < ees c' >4 c8 |
          \slashedGrace f8~ \CRESC < f c' >4 f8 \slashedGrace f8~ < f d' >4 f8 \tieNeutral
        } \\
        {
          g,2. |
          aes4.~ aes4 aes8 |
          % 51
          < aes f >4. < aes f >4 < aes f >8 |
          g4.~ g4 s8 |
          f4. g |
          aes~ aes4 s8 |
          aes4. bes |
          % 56
          c~ c4 s8 |
          c4. d
        } \\
        {
          s4
          \once \set suggestAccidentals = ##t
          \once \override AccidentalSuggestion.outside-staff-priority = ##f
          \once \override AccidentalSuggestion.avoid-slur = #'inside
          \once \override AccidentalSuggestion.font-size = #-3
          \once \override AccidentalSuggestion.script-priority = #-1
          \single \hideNotes
          a8-\turn \noBeam
        }
      >> |
      < ees' f a c ees >4 \arpeggio \f r8 r4 r8 |
      R2. |
      < f aes b d f >4 \arpeggio \f r8 \TUTTI f8-. \p ees-. d-. |
      % 61
      c ( b ) aes-. g4 g8 |
      < g c ees g >4. \f < g' g' >8-. < f f' >-. < ees ees' >-. |
      < d d' > ( < c c' > ) < b b' >-. < c c' >4 \( < d d' >8 |
      < ees ees' >-. \) < g g, > ( < a a, > < bes d, bes >4 < c f, c >8 ) |
      < c f, c >4 r8 \SOLO < ees ees, >-. _\markup { \dynamic p \italic "poco rit." } < d d, >-. < c c, >-. |
      % 66
      < bes bes, > ( < a a, > ) < g g, >-. < f f, >4 < f f, >8 |
      \TUTTI < d f aes b d >4 \f r8 \SOLO < f f' >-. _\markup { \dynamic p \italic "poco rit." } < ees ees' >-. < d d' >-. |
      < c c' > ( < b b' > ) < aes aes' >-. < g g' >4 < g g' >8 |
      \LEFT ees,,16 ^\ff [ g c ees ] \RIGHT \tuplet 9/4 8 { g32 c ees g c ees g c ees } < g g, >8-. \ff < f f, >-. < ees ees, >-. |
      < d d, >-. < c c, >-. < b b, >-. \afterGrace < c c, >4 \trill ( { b16 c } < d d, >8 ) |
      % 71
      < ees ees, >-. ( < g, g, >-. < a a, >-. ) < bes bes, >4-> ( < c c, >8 ) |
      \once \slurUp \acciaccatura c, c'4.~ _\markup \italic dolce c8 bes-. a-. |
      g ( a ) f-. g ( a ) f-. |
      <<
        {
          f ( d'4~ ) d8 c-. bes-.
        } \\
        {
          \LSHIFT f4.~ f8 s4
        }
      >> |
      a8 ( bes ) f-. a ( bes ) f-. |
      <<
        {
          % 76
          f ( ees'4~ ) ees8 d-. c-.
        } \\
        {
          % 76
          \LSHIFT f,4.~ f8 s4
        }
      >> |
      b8 ( c ) f,-. b ( c ) f,16 ( f' ) |
      f _\markup \italic dolce d bes f' d bes g' ees bes g' ees bes |
      f' d bes f' d bes f' ees c f ees c |
      f d bes f' d bes g' ees bes g' ees bes |
      % 81
      f' d bes f' d bes f' ees c f ees c |
      f d bes f' d bes g' ees bes g' ees bes |
      f' d bes f' d bes g' ees bes g' ees bes |
      f' \CRESC d bes g' ees bes f' d bes g' ees bes |
      f' d bes g' ees bes f' d bes g' ees bes |
      % 86
      aes \ff aes' f, f' d, d' bes, bes' aes, aes' f, f' |
      d, d' bes, bes' aes, aes' f, f' d, d' bes, bes' |
      d, d' f, f' aes, aes' bes, bes' d, d' f, f' |
      aes, aes' bes, bes' d, d' f, f' aes, aes' bes, bes' |
      ces, \sf ces' ces,, ces' bes, bes' ces \sf ces' ces,, ces' bes, bes' |
      % 91
      ces \sf ces' ces,, ces' bes, bes' ces \sf ces' ces,, ces' bes, bes' |
      a, \DIM a' aes, aes' g, g' ges, ges' f, f' e, e' |
      ees, \p ees' d, _\markup \italic "poco ritard." d' des, des' c, c' ces, ces' bes, bes' |
      <<
        {
          bes8 \f ^\markup "a tempo" ( [ ees ] ) ees ( [ g ] ) b,\rest g'16 ( bes ) |
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          % 96
          f8 \p b,,\rest d'16 ( [ f ] ) ees8 b,\rest g'16 ( bes ) |
          bes4~ \trill bes16 a bes4 bes,8
          bes8 \ff ( [ ees ] ) ees ( [ g ] ) b,\rest g'16 ( bes ) |
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 \p b,,\rest d'16 ( [ f ] ) ees8 b,\rest g'16 ( bes ) |
          % 101
          bes4~ \trill bes16 a bes4
        } \\
        {
          < g, ees >8~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes > |
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          % 96
          < bes aes f > s < bes aes f > < bes g > s ees, |
          < f d >4.~ < f d >4 s8
          < g, ees >8~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes > |
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s ees, |
          % 101
          < f d >4.~ < f d >4
        }
      >>
      < bes bes, >16 _\markup \italic espressivo ( < a a, > ) |
      < a a, >8 r < aes aes, >16 ( < g g, > ) < g g, >8 r < ges ges, >16 ( < f f, > ) |
      < f f, >8 r < fes fes, >16 ( < ees ees, > ) < ees ees, >8 r
      <<
        {
          < ees ees, >16 ( < d d, > ) |
          d4 \f d8 d8. ees16 f8 |
          f ( g ) ees-. ees4
        } \\
        {
          < bes aes >8 |
          < bes aes d, >4 < bes aes d, >8 < bes aes d, >8. < bes aes ees >16 < bes aes f >8 |
          < bes aes f > < bes g > < bes g ees > < bes g ees >4
        }
      >>
      < bes bes' >16 ( < a a' > ) |
      % 106
      < a' a, >8 \CRESC r < aes aes, >16 ( < g g, > ) < g g, >8 r < ges ges, >16 ( < f f, > ) |
      < f f, >8 r < fes fes, >16 ( < ees ees, > ) < ees bes g ees >8 \p r
      <<
        {
          \TUTTI ees, \pp |
          d4-. d8-. d8.-. ees16-. f8-. |
          f ( g ) ees-. ees4
        } \\
        {
          \TUTTI bes8 |
          bes4-. bes8-. bes8.-. bes16-. bes8-. |
          bes4 < bes g >8 < bes g >4
        }
      >>
      \SOLO ees''16 \p bes |
      d bes d bes d bes d bes ees bes f' bes, |
      % 111
      f' bes, g' bes, ees bes ees bes ees bes g ees |
      aes _\markup \italic leggiermente f aes g f ees d c bes aes g f |
      bes g bes aes g f ees d c bes aes g |
      c a c bes a ges \BASS f ees des c bes a \TREB |
      r4 r8 r16 bes'' des f bes bes |
      % 116
      bes g bes aes g f e des c bes aes g |
      f4 r8 r16 f' aes c f f |
      f \CRESC d aes' g f ees d c b aes g f |
      \tuplet 3/2 8 { ees \ff [ d c ] bes aes g f [ ees d ] } \LEFT \stemUp \tuplet 3/2 8 { c bes aes g [ f ees ] } d c |
      b4 \RIGHT \stemNeutral \TUTTI < b' b' >8-. \f < b b' >8.-. < c c' >16-. < d d' >8-. |
      % 121
      < ees ees' >4-. \sf < c c' >8-. < c c' >8.-. < d d' >16-. < ees ees' >8-. |
      < f f' >4-. \sf < d d' >8-. < d d' >8.-. < ees ees' >16-. < f f' >8-. |
      < g g' >4-. < c c' >8 \p < c c' >8.-. < d d' >16-. < e e' >8-. |
      < f f' >8 r < d d' >-. < d d' >8.-. < e e' >16-. < f f' >8-. |
      < g g' >4 \SOLO < c, c' >8-. \f < c c' >8.-. < d d' >16-. < e e' >8-. |
      % 126
      < d' b >16 \sf e < f b, > d < e b > f < d b > \sf e < f b, > d < e b > f |
      < d b > \sf e < f b, > d < e b > f < d b > \sf e < f b, > d < e b > f |
      b, d f f, b d d, f b b, d f |
      f, b d d, f b \stemUp b, d f \LEFT f, \RIGHT b d |
      \LEFT f, b d b d \RIGHT f \LEFT b, d \RIGHT f d f b |
      % 131
      \stemNeutral d, f b f b d f, b d b d f |
      b, d f d f b d, f b f b d |
      f, b d b d f \U b, d f d f b |
      f g b d f, g b d f, g b d |
      f, \DIM g b d f, g b d f, g b d |
      % 136
      f, _\markup { \dynamic p \italic "piu piano" } g b d f, g b d f, g b d |
      f, \pp [ g b d ] \tuplet 3/2 8 { f, g b } \acciaccatura { f16 g b } d8 r \N g,, |
      <<
        {
          g \f ( [ c ] ) c ( [ e ] ) b,\rest e'16 ( g ) |
          \U g ( c ) c4~ \sf c4. |
          e,16 ( g ) g4~ \sf g4. \N |
          % 141
          c,16 ( e ) e4~ \sf e4.
        } \\
        {
          < e, c >8~ [ < e c > ] < g e >~ [ < g e > ] s < c g > |
          < c e > < c e g >4~ < c e g >4. |
          < g c >8 < g c e >4~ < g c e >4. |
          % 141
          < g e >8 < c g e >4~ < c g e >4.
        }
      >> |
      \U a16 _\markup \italic "sempre forte" ( c' ) c4 f,,16 ( a' ) a4 \N |
      d,,16 ( f' ) f4 a,,16 ( d' ) d4 |
      g,,16 e' c g' e c' \tuplet 3/2 8 { g e' c g' [ e c' ] g e c } |
      g4 r8 d'4. \trill |
      % 146
      < e c >8 < e c > < e c > < e c > < e c > < e c > |
      < e c > < e c > < e c > < e c > < e c > < e c > |
      g16 \sf f e d c b a _\markup { \italic sempre \dynamic f } g f e d c |
      b a g f e d \BASS \tuplet 3/2 8 { c b a g [ fis g ] } a b |
      c8 \TREB < c' e > [ < c e > ] < c e > < c' e > [ < c e > ] |
      % 151
      < c e > < c e > < c e > < c e > < c e > < c e > |
      \U c'16 \sf b \tuplet 3/2 8 { a [ g f ] e d c } \N \tuplet 3/2 8 { b [ a g ] } f e d c |
      b a g f e d \BASS \tuplet 3/2 8 { c b a g [ fis g ] } a b |
      c4 r8 r4 r8 |
      <<
        {
          \TUTTI \TREB \stemNeutral < c' c' >4. \sf ( \stemUp a'16 gis a b c a )
        } \\
        {
          \TUTTI s4. c,
        }
      >> |
      % 156
      \TUTTI < c g' >8. g'16 g8 g g g |
      <<
        {
          \TUTTI \stemNeutral < f b f' >4. \sf ( \stemUp d'16 cis d e f d )
        } \\
        {
          \TUTTI s4. f,
        }
      >> |
      < e c' >4 r8 r4 r8 |
      < c c' >4 r8 r4 r8 |
      R2. |
      % 161
      \SOLO r4 r8 r4 ees8 \pp |
      ees ( [ aes ] ) aes ( [ c ] ) r \U c16 ( ees ) |
      ees ( aes ) aes4~ aes \afterGrace aes8 \( \trill { g16 aes } |
      c8 bes aes g f ees \) |
      ees16 f ees d ees e f ges g aes \tuplet 3/2 8 { a [ bes b ] } |
      % 166
      c b bes a aes g ges f e ees d ees |
      e _\markup { \italic sempre \dynamic pp } f fis g aes a \tuplet 5/6 4. { bes b c des d } |
      ees d des c b bes a aes g ges f e |
      f ges g aes a bes b c des d ees e |
      f e ees d des c b bes a aes \tuplet 3/2 8 { g [ ges f ] } \N |
      % 171
      e ees d des c ces bes a aes g ges f |
      e ees d des c b \tuplet 3/2 8 { bes [ c bes ] } a bes ees g, |
      aes8 _\markup { \italic sempre \dynamic pp } < aes' c > [ < aes c > ] < aes c > < c ees > [ < c ees > ] |
      < c ees > < ees aes > [ < ees aes > ] < ees aes > < ees aes > < ees aes > |
      c'16 bes aes g f ees des c bes aes g f |
      % 176
      ees des c bes aes g \tuplet 3/2 8 { f ees d ees [ e f ] } fis g |
      aes8 _\markup { \italic sempre \dynamic pp } < aes' c > [ < aes c > ] < aes c > < c ees > [ < c ees > ] |
      < c ees > \U < ees aes > [ < ees aes > ] < ees aes > < aes c > [ < aes c > ] |
      ees'16 des c bes aes g \N \tuplet 3/2 8 { f ees des c [ bes aes ] g f ees } |
      \tuplet 3/2 8 { des c bes aes [ g f ] ees des c } \LEFT \stemUp \tuplet 3/2 8 { bes [ aes g ] } f ees f g |
      <<
        {
          % 181
          aes4 s8 s4. |
          \RIGHT \TUTTI aes''4. ( \sf f16 e f g aes f )
        } \\
        {
          % 181
          \RIGHT \TUTTI \stemNeutral b,8.\rest < aes aes, >16 \ff < aes aes, >8 < aes aes, > < aes aes, > < aes aes, >
          \stemDown aes4. f
        }
      >> |
      \stemNeutral \TUTTI \RIGHT ees'8. < ees ees, >16 \f < ees ees, >8 < ees ees, > < ees ees, > < ees ees, > |
      <<
        {
          \TUTTI des'4. ( \sf bes16 a bes c des bes ) |
          aes8.
        } \\
        {
          \TUTTI < bes ees, >4. des, |
          c8.
        }
      >>
      aes16 \ff aes8 aes aes aes |
      % 186
      < aes aes' >8. aes16 aes8 aes aes aes |
      b8. \pp b16 b8 b b b |
      <<
        {
          \TUTTI b b b b b s
        } \\
        {
          s4. s4 \stemNeutral b!8 \pp
        }
      >> |
      \SOLO b ( [ e ] ) e ( [ gis ] ) r gis16 ( b ) |
      b ( [ e ] ) e4~ e \U e16 gis |
      % 191
      dis ( fis a fis dis b ) dis ( fis a fis dis b ) |
      e ( gis b gis e b ) e ( gis b gis e b ) |
      dis ( fis a fis dis b ) dis ( fis a fis dis b ) |
      e _\markup { \italic "sempre legato e" \dynamic pp } gis b gis e b e gis b gis e b |
      e gis b gis e b e gis b gis e b |
      % 196
      e a cis a e cis e a cis a e cis |
      e a cis a e cis e a cis a e cis |
      e gis b b, e gis \tuplet 3/2 8 { e gis b e [ b gis ] } \N e32 b gis e |
      b4 r8
      fis'4. ^\markup { \halign #3.7 \teeny \sharp } \trill |
      e8 \f < gis b > [ < gis b > ] < gis b > < b e > < b e > |
      % 201
      < b e > \U < e gis > [ < e gis > ] < e gis > < e gis > < e gis > |
      b'16 \sf a gis fis e dis \N cis b a gis \tuplet 3/2 8 { fis [ e dis ] } |
      cis b a gis fis e \tuplet 3/2 8 { dis cis b ais [ b cis ] } d dis |
      e8 \f < gis' b > [ < gis b > ] < gis b > < b e > [ < b e > ] |
      < b e > \U < e gis > [ < e gis > ] < e gis > < e gis > < e gis > |
      % 206
      \tuplet 3/2 8 { e'16 \sf dis cis b [ a gis ] fis e dis } \N \tuplet 3/2 8 { cis b a gis [ fis e ] dis cis b } |
      \tuplet 3/2 8 { a gis fis e [ dis cis ] } \LEFT \stemUp \tuplet 3/2 8 { b a gis fis [ e dis ] } cis b cis dis |
      <<
        {
          e4 s8 s4. |
          \RIGHT \TUTTI e''4. ( \sf cis16 bis cis dis e cis )
        } \\
        {
          \RIGHT \TUTTI \stemNeutral b8.\rest < e, e, >16 \f < e e, >8 < e e, > < e e, > < e e, > |
          \stemDown e2.
        }
      >> |
      \TUTTI \stemNeutral \RIGHT b'4 r8 r4 r8 |
      <<
        {
          % 211
          \TUTTI a'4. ( \sf fis16 eis fis gis a fis )
        } \\
        {
          % 211
          \TUTTI a,2.
        }
      >> |
      \SOLO e16 \f b' g' b, e, b' e, b' g' b, e, b' |
      e, b' g' b, e, b' e, b' g' b, e, b' |
      a e' c' e, a, e' a, e' c' e, a, e' |
      a, e' c' e, a, e' a, e' c' e, a, e' |
      % 216
      a, d c' d, a d g, d' bes' d, g, d' |
      g, c bes' c, g c f, c' aes' c, f, c' |
      f, c' aes' c, f, c' f, c' aes' c, f, c' |
      f, d' aes' d, f, d' f d' aes' d, f, d' |
      aes' \ff d, f, d' aes' d, f, d f, d' aes' d, |
      % 221
      \stemUp f, d \LEFT f, \RIGHT d' aes' d, \LEFT f, d f, d' aes' d, |
      f, ^\ff d' aes' d, f, d' f \RIGHT d' aes' d, \LEFT f, \RIGHT d' |
      \stemNeutral f d' aes' d, f, d' f d' aes' d, f, d' |
      aes' \ff d, f, d' aes' d, f, d f, d' aes' d, |
      \stemUp f, d \LEFT f, \RIGHT d' aes' d, \LEFT f, d f, d' aes' d, |
      % 226
      f, ^\ff d' aes' d, f, d' f \RIGHT d' aes' d, \LEFT f, \RIGHT d' |
      \stemNeutral f d' aes' d, f, d' f d' aes' d, f, d' |
      aes' d, f, d' aes' d, f, d' aes' d, f, d' |
      aes' d, f, d' aes' d, f, d' aes' d, f, d' |
      aes' _\markup \italic "sempre forte" f d ces g' bes, ges' ees c a f' aes, |
      % 231
      e' g, ees' ges, d' f, des' e, c' ees, ces' d, |
      ces' \sf bes ces bes ces bes ces bes ces bes ces bes |
      ces bes ces bes ces bes ces bes ces bes ces bes |
      \once \override TrillSpanner.outside-staff-priority = ##f
      \once \override TrillSpanner.bound-details.right.padding = #5
      \once \override TrillSpanner.padding = #3
      \once \override TextScript.outside-staff-priority = ##f
      \once \override TextScript.padding = #4.5
      \once \override DynamicTextSpanner.style = #'none
      \once \override DynamicTextSpanner.font-size = #0
      bes2.~ \dim ^\markup { \halign #-5 \teeny \flat } \startTrillSpan |
      bes |
      % 236
      \once \override TrillSpanner.outside-staff-priority = ##f
      \once \override TrillSpanner.bound-details.left.padding = #0
      \once \override TrillSpanner.bound-details.right.padding = #3
      \once \override TrillSpanner.padding = #3
      \once \override TextScript.outside-staff-priority = ##f
      \once \override TextScript.padding = #4.5
      bes~ \stopTrillSpan \p ^\markup { \halign #-6.5 \teeny \natural } \startTrillSpan \break |
      bes~ |
      bes~ |
      bes~ |
      bes~ |
      % 241
      bes~ |
      bes~ \CRESC |
      bes~ |
      bes16 \f \stopTrillSpan aes g f ees d c bes aes g f ees \break |
      d c bes c d ees f g aes bes c d |
      % 246
      ees8 \f r
      <<
        {
          ees ( [ g ] ) b,\rest g'16 ( bes ) |
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 \p b,,\rest d'16 ( [ f ] ) ees8 b,\rest g'16 ( bes ) |
          bes4~ \trill bes16 a bes4 bes,8
          bes8 \ff ( [ ees ] ) ees ( [ g ] ) b,\rest g'16 ( bes ) |
          % 251
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 \p b,,\rest d'16 ( [ f ] ) ees8 b,\rest g'16 ( bes ) |
          bes4~ \trill bes16 a bes4
        } \\
        {
          < bes, g >8~ [ < bes g > ] s < ees bes > |
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s ees, |
          < f d >4.~ < f d >4 s8
          < g, ees >8~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes > |
          % 251
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s ees, |
          < f d >4.~ < f d >4
        }
      >>
      < bes bes, >16 _\markup \italic espressivo ( < a a, > ) |
      < a a, >8 r < aes aes, >16 ( < g g, > ) < g g, >8 r < ges ges, >16 ( < f f, > ) |
      < f f, >8 r < fes fes, >16 ( < ees ees, > ) < ees ees, >8 r
      <<
        {
          < ees ees, >16 ( < d d, > ) |
          % 256
          d4 \f d8 d8. ees16 f8 |
          f ( g ) ees-. ees4
        } \\
        {
          < bes aes >8 |
          % 256
          < bes aes d, >4 < bes aes d, >8 < bes aes d, >8. < bes aes ees >16 < bes aes f >8 |
          < bes aes f > < bes g > < bes g ees > < bes g ees >4
        }
      >>
      bes16 ( bes' ) |
      a, \CRESC ( a' ) a, ( a' ) aes, ( aes' ) g, ( g' ) g, ( g' ) ges, ( ges' ) |
      f, ( f' ) f, ( f' ) fes, ( fes' ) ees, ( ees' ) ees, ( ees' ) \TUTTI d, \p ( [ des ] ) |
      des8 \CRESC des c16 ( [ b ] ) b8 b bes16 ( [ a ] ) |
      % 261
      a8 a aes16 ( [ g ] ) g8 g
      <<
        {
          \TUTTI bes' \f |
          bes ( [ ees ] ) ees ( [ g ] ) b,\rest g'16 ( bes ) |
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 b,,\rest d'16 ( [ f ] ) ees8 b,\rest bes' |
          bes4~ \trill bes16 a bes4 bes,8
          % 266
          bes8 \ff ( [ ees ] ) ees ( [ g ] ) b,\rest g'16 ( bes ) |
          bes ( ees ) ees4~ \sf ees ees16 ( g ) |
          f8 \p b,,\rest d'16 ( [ f ] ) ees8 b,\rest bes' |
          bes4~ \trill bes16 a bes8
        } \\
        {
          \TUTTI g, |
          < g ees >~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes > |
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s < g ees > |
          < f d >4.~ < f d >4 g,8 |
          % 266
          < g ees >8~ [ < g ees > ] < bes g >~ [ < bes g > ] s < ees bes > |
          < g ees > < bes g ees >4~ < bes g ees > < bes g >8 |
          < bes aes f > s < bes aes f > < bes g > s < g ees > |
          < f d >4.~ < f d >8
        }
      >>
      r < bes bes, >16 ( < a a, > ) |
      < a a, >8 r < aes aes, >16 ( < g g, > ) < g g, >8 r < ges ges, >16 ( < f f, > ) |
      % 271
      < f f, >8 r < fes fes, >16 ( < ees ees, > ) < ees ees, >8 r < ees ees, >16 ( < d d, > ) |
      <<
        {
          \TUTTI
          d4 d8 d8. ees16-. f8-. |
          f ( g ) ees-. ees4 ees16 ( d ) |
          d4 d8 d8. ees16-. f8-. |
          f16 \sf ( [ g ] )
        } \\
        {
          \TUTTI
          < bes, aes d, >4 < bes aes f >8 < bes aes f >8. < bes g >16 < bes aes >8 |
          < bes g >4 < bes g >8 < bes g >4 < aes f >8 |
          < aes f >4 < aes f >8 < aes f >8. < bes g >16 < bes aes >8 |
          < bes g >
        }
      >>
      r < ees ees, > < ees ees, >8.-. < f f, >16-. < g g, >8-. |
      <<
        {
          % 276
          \TUTTI
          g16 \sf ( [ aes ] )
        } \\
        {
          % 276
          \TUTTI
          bes,8
        }
      >>
      r < f f' > < f f' >8.-. < g g' >16-. < aes aes' >8-. |
      <<
        {
          \TUTTI
          aes'16 \sf ( [ bes ] )
        } \\
        {
          \TUTTI
          < ees, bes >8
        }
      >>
      r < g g, > < g g, >8. < aes aes, >16-. < bes bes, >8-. |
      < c f, ees c >8.-. < bes ees, c >16-. < aes ees c >8-. < g c, g >8.-. < f c f, >16-. < ees c f, >8-. |
      < d bes d, >8.-. < c f, ees >16-. < bes f d >8-. < g' ees bes g >8.-. < aes f bes, >16-. < bes g bes, >8-. |
      < c f, ees c >4 r8 < d aes f d >4 r8 |
      % 281
      < ees g, ees >4 r8 r4 r8 |
      <<
        {
          \TUTTI
          \stemNeutral < ees aes, ees >4. \sf ( \stemUp c16 b c d ees c ) |
          < bes ees, >4 r8 r4 r8 |
          < f aes >4. \sf s
        } \\
        {
          \TUTTI
          s4. ees |
          bes8. bes16 bes8 bes bes bes |
          r8 bes16 ( c d ees f e f g aes f )
        }
      >> |
      < ees g, >4 r8 r4 r8 |
      % 286
      < g bes ees g >4 r8 r4 r8 |
      < ees g, >4 r8 \SOLO \tuplet 3/2 8 { ees,16 \f [ d c ] bes [ c d ] } ees f |
      \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes \tuplet 3/2 8 { bes [ aes g ] } aes bes c d |
      ees4 \sf r8 \tuplet 3/2 8 { ees16 [ d c ] bes [ c d ] } ees f |
      \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes \tuplet 3/2 8 { bes [ aes g ] } aes bes c d |
      % 291
      \U \tuplet 3/2 8 { ees [ d c ] bes [ c d ] } ees f \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes |
      bes \DIM ( aes g c bes aes g f ees d c b ) \N |
      bes ( aes g c bes aes g f ees d c b ) |
      <<
        {
          bes4. _\markup \italic dolce ( g'4 ees8 ) |
          d4. ( c4 ces8 ) |
          % 296
          ces4 ( bes8 ) bes4 bes8 |
          #(define afterGraceFraction (cons 15 16))
          \afterGrace bes4. \trill ( { a16 bes } ees4 ) bes8 |
          \tieDown \slashedGrace bes8~ < bes f' >4 \< bes8 \slashedGrace bes~ \! < bes g' >4 bes8 |
          \slashedGrace bes8~ \once \tieUp < bes aes' >4.~ \p < bes aes' >4 bes8 |
          \slashedGrace bes8~ < bes aes' >4 \< bes8 \slashedGrace ees8~ \! < ees bes' >4 ees8 |
          % 301
          \slashedGrace ees8~ \once \tieUp < ees c' >4.~ \p \< < ees c' >4 f8 \! |
          \slashedGrace f8~ \< < f c' >4 f8 \slashedGrace f8~ < f d' >4 f8 \! |
          \slashedGrace f8~ \once \tieUp < f a ees' >4.~ \p < f a ees' >4 f8 |
          \slashedGrace bes8~ \CRESC < bes f' >4 bes8 \slashedGrace bes8~ < bes g' >4 bes8 \tieNeutral
        } \\
        {
          g,2. |
          aes2. |
          % 296
          < aes f >4. < aes f >4 < aes f >8 |
          g4.~ g4 s8 |
          f4. g |
          aes~ aes4 s8 |
          aes4. bes |
          % 301
          c~ c4 s8 |
          < c ees >4. d |
          ees~ ees4 s8 |
          f4. g
        } \\
        {
          s4
          \once \set suggestAccidentals = ##t
          \once \override AccidentalSuggestion.outside-staff-priority = ##f
          \once \override AccidentalSuggestion.avoid-slur = #'inside
          \once \override AccidentalSuggestion.font-size = #-3
          \once \override AccidentalSuggestion.script-priority = #-1
          \single \hideNotes
          a,8-\turn \noBeam
        }
      >> |
      < aes' bes d f aes >4 \arpeggio \ff r8 r4 r8 |
      % 306
      R2.
      < bes g e c bes >4 \arpeggio \ff r8 \TUTTI < bes bes, >-. \p < aes aes, >-. < g g, >-. |
      < f f, > ( < e e, > ) < des des, >-. < c c, >4 < c c, >8 |
      < c f c' >4 \f r8 < c c' >-. < bes bes' >-. < aes aes' >-. |
      < g g' > ( < f f' > ) < e e' >-. < f f' >4 \( < g g' >8 |
      % 311
      < aes aes' >-. \) < c aes c, > ( < d f, d > < ees g, ees >4 < f d bes f >8 ) \break |
      < f d bes f >4 r8 \SOLO < aes aes' >-. _\markup { \dynamic p \italic "poco ritard." } < g g' >-. < f f' >-. |
      < ees ees' > ( < d d' > ) < c c' >-. < bes bes' >4 < bes bes' >8 |
      \TUTTI < bes e bes' >4 \f r8 \SOLO < bes' bes' >-. _\markup { \dynamic p \italic "poco ritard." } < aes aes' >-. < g g' >-. |
      < f f' > ( < e e' > ) < des des' >-. < c c' >4 < c c' >8 |
      % 316
      s4 \tuplet 9/4 8 { c,32 f aes c f aes c f aes } < c c, >8-. < bes bes, >-. < aes aes, >-. |
      < g g, >-. < f f, >-. < e e, >-. < f f, >4 ( \trill < g g, >8 ) |
      < aes aes, >-. ( < c, c, >-. < d d, >-. ) < ees ees, >4 \> ( < f f, >8 ) \! |
      \once \slurUp \acciaccatura f, f'4.~ _\markup \italic dolce f8 ees-. d-. |
      c ( d ) bes-. c ( d ) bes-. |
      % 321
      <<
        {
          \U bes ( g'4~ ) g8 f-. ees-.
        } \\
        {
          \LSHIFT bes4.~ bes
        }
      >> |
      d8 ( ees ) bes-. d ( ees ) bes-. |
      <<
        {
          bes ( aes'4~ ) aes8 g-. f-.
        } \\
        {
          \LSHIFT bes,4.~ bes
        }
      >> |
      e8 ( f ) bes,-. e ( f ) bes,16 ( bes' ) |
      bes _\markup \italic dolce g ees bes' g ees c' aes ees c' aes ees |
      % 326
      bes' g ees bes' g ees bes' aes f bes aes f |
      bes g ees bes' g ees c' aes ees c' aes ees |
      bes' g ees bes' g ees bes' aes f bes aes f |
      bes g ees bes' g ees c' aes ees c' aes ees |
      bes' g ees bes' g ees c' aes ees c' aes ees |
      % 331
      bes' \CRESC g ees c' aes ees bes' g ees c' aes ees |
      bes' g ees c' aes ees bes' g ees c' aes ees |
      des \ff des' bes, bes' g, g' \N ees, ees' des, des' bes, bes' |
      g, g' ees, ees' des, des' \stemUp \LEFT bes, \RIGHT bes' \LEFT g, \RIGHT g' \LEFT ees, \RIGHT ees' |
      g, \stemNeutral g' bes, bes' des, des' ees, ees' g, g' bes, bes' |
      % 336
      des, des' ees, ees' g, g' \U bes, bes' b, b' c, c' |
      des, \sf des' des,, des' c, c' des \sf des' des,, des' c, c' |
      des \sf des' des,, des' c, c' des \sf des' des,, des' c, c' \N |
      ces, \DIM ces' bes, bes' a, a' aes, aes' g, g' ges, ges' |
      f, f' e, e' ees, ees' d, d' ees, ees' ees, ees' |
      <<
        {
          % 341
          ees8 ( \f [ aes ] ) aes ( [ c ] ) b,\rest c'16 ( ees ) |
          ees ( aes ) aes4~ aes
        } \\
        {
          % 341
          < c,, aes >8~ [ < c aes > ] < ees c >~ [ < ees c > ] s < aes ees > |
          < c aes > < aes c ees >4~ < aes c ees >
        }
      >>
      \TUTTI aes16 \f ( c ) |
      < bes des, bes >8 r < g des bes >16 ( bes ) < aes c, aes >8 r < ees aes, ees > |
      <<
        {
          \TUTTI ees4~ \trill ees16 d
        } \\
        {
          \TUTTI < bes g >4 r8
        }
      >>
      ees4 \SOLO \once \stemUp ees8 \f |
      <<
        {
          ees8 ( [ aes ] ) aes ( [ c ] ) b,\rest c'16 ( ees ) |
          % 346
          ees ( aes ) aes4~ aes
        } \\
        {
          < c,, aes >8~ [ < c aes > ] < ees c >~ [ < ees c > ] s < aes ees > |
          % 346
          < c aes > < aes c ees >4~ < aes c ees >
        }
      >>
      \TUTTI aes16 \f ( c ) |
      < bes des, bes >8 r < g des bes >16 ( bes ) < aes c, aes >8 r < ees aes, ees > \break |
      <<
        {
          \TUTTI ees4~ \trill ees16 d
        } \\
        {
          \TUTTI < bes g >4 r8
        }
      >>
      ees4 \SOLO < ees ees' >16 ( _\markup { \dynamic f \italic espressivo } < d d' > ) |
      < d d' >4 < des des' >16 ( < c c' > ) < c c' >4 < b b' >16 ( < bes bes' > ) |
      < bes bes' >4 < a a' >16 ( < aes aes' > ) < aes aes' >4 \TUTTI < aes c aes' >8 \f |
      % 351
      < g bes g' >4 < g bes g' >8 < g bes g' >8. < aes c aes' >16 < bes ees bes' >8 |
      < bes ees bes' > ( < c c' > ) < aes c aes' >-. < aes c aes' >4 \SOLO ees'16 \f ees' |
      ees, \CRESC ees' ees, d des des' des, des' des, c b b' |
      b, b' b, bes a a' aes, [ aes' aes, aes' ] \TUTTI c,,-. \p b-. |
      b4 \CRESC bes16-. a-. a4 aes16 g |
      % 356
      g4 \LEFT \stemUp ges16 f f8 [ e ] \RIGHT \stemNeutral < g' bes > \f |
      <<
        {
          \TUTTI bes [ ees ] ees16 g g4 g16 bes |
          bes ees ees4~ ees ees16 g |
          f4 d16 f ees4 bes8 |
          bes4 bes16 a bes4 \stemNeutral bes,8 |
          % 361
          \stemUp bes [ ees ] ees16 g g4 g16 bes |
          bes ees ees4~ ees ees16 g |
          f4 d16 f ees4 bes8 |
          bes4 bes16 a bes4
        } \\
        {
          \TUTTI g,4 < g bes >8 < g bes ees >4 < bes ees >8 |
          < ees g > < ees g bes >4~ < ees g bes > < g bes >8 |
          < aes bes >4 < aes bes >8 < g bes >4 < ees g >8 |
          < f d >4 r8 < f d >4 s8 |
          g,4 < g bes >8 < g bes ees >4 < bes ees >8 |
          < ees g > < ees g bes >4~ < ees g bes > < g bes >8 |
          < aes bes >4 < aes bes >8 < g bes >4 < ees g >8 |
          < f d >4 r8 < f d >4
        }
      >>
      < bes bes, >16 < a a, > |
      < a a, >4 < aes aes, >16 < g g, > < g g, >4 < ges ges, >16 < f f, > |
      % 366
      < f f, >4 < e e, >16 < ees ees, > < ees ees, >4 < ees ees, >16 < d d, > |
      < d bes aes d, >4 d8
      <<
        {
          \TUTTI d8. ees16 f8 |
          f g ees ees4
        } \\
        {
          \TUTTI < bes aes f >4 r8 |
          < bes g >4 r8 < g bes >4
        }
      >>
      ees8 \p |
      d4 d8 d8. ees16-. f8-. |
      f ( g ) ees-. ees8 r \SOLO < ees' ees' > \p |
      % 371
      < d d' >4 < d d' >8 < d d' >8. < ees ees' >16 < f f' >8 |
      < f f' > ( < g g' > ) < ees ees' >-. < ees ees' >8.-. < f f' >16-. < g g' >8-. |
      \U < g g' > ( < aes aes' > ) < f f' >-. < f f' >8.-. < g g' >16-. < aes aes' >8-. |
      bes'2.~ \startTrillSpan |
      bes~ |
      % 376
      bes~ |
      bes |
      < bes bes, >8. \stopTrillSpan < aes aes, >16 < g g, >8 < g g, >8. < f f, >16 < ees ees, >8 |
      < ees ees, >8. < f f, >16 < g g, >8 < g g, >8. < aes aes, >16 < bes bes, >8 |
      < c c, >8. < bes bes, >16 < aes aes, >8 < aes aes, >8. < g g, >16 < f f, >8 |
      % 381
      < f f, >8. < g g, >16 < aes aes, >8 < aes aes, >8. < bes bes, >16 < c c, >8 |
      < c c, > ( < bes bes, > ) < aes aes, >-. < g g, >-. < f f, >-. < ees ees, >-. |
      <<
        {
          < ees ees, >4. ( < g g, >4 < f f, >8 )
        }
        {
          s4 s8\turn s4.
        }
      >> |
      < ees ees, >4 \N \TUTTI ees,,8 \f
      <<
        {
          \TUTTI ees8. f16 g8 |
          aes4 f8 f8. g16 aes8
        } \\
        {
          \TUTTI < bes, g >4 r8 |
          < d bes >4 r8 < d aes >4 r8
        }
      >> |
      % 386
      bes'4 \p \SOLO ees,16 \p ( ees' ) ees, ( ees' ) f, ( f' ) g, ( g' ) |
      aes, ( aes' ) r8 f,16 ( f' ) f, ( f' ) g, ( g' ) aes, ( aes' ) |
      bes, ( bes' ) g ( g' ) d, ( d' ) ees, ( ees' ) f, ( f' ) g, ( g' ) |
      \U g, ( g' ) aes, ( aes' ) e, ( e' ) f, ( f' ) g, ( g' ) aes, ( aes' ) |
      bes2.~ \startTrillSpan |
      % 391
      bes |
      bes16 \stopTrillSpan g ees bes g' ees bes g ees' bes g ees |
      bes' g ees bes ees g bes ees g ees bes' g |
      \U c aes f c aes' f \N c aes f' c aes f |
      c' aes f c f aes \U c f aes f c' aes |
      % 396
      c8 bes16 aes g f \N ees d c bes aes g |
      f ees d ees g ees bes' g ees' bes g' f |
      <<
        {
          ees4 \f r8 s4. |
          \TUTTI ees4. ( \sf c16 b c d ees c ) |
          < bes ees, >4 r8 r4 r8 |
          % 401
          aes4. ( \sf f16 e f g aes f ) |
          ees4
        } \\
        {
          \TUTTI r8. ees16 \f ees8 ees ees ees |
          ees2. |
          bes8. bes16 bes8 bes bes bes |
          % 401
          < f' aes, >4. d |
          g,4
        }
      >>
      \SOLO \BASS ees,16 \p f \tuplet 3/2 8 { g aes bes } \TREB \tuplet 3/2 8 { c [ d ees ] f g aes } |
      \tuplet 3/2 8 { bes c d ees [ f g ] aes bes c d [ ees d ] } f8 \> ees16 c \! |
      bes4 bes,16 \p c d ees \tuplet 3/2 8 { f [ g aes ] bes c d } |
      \tuplet 3/2 8 { ees f g } aes4~ \sf aes ( f8 ) |
      % 406
      \tuplet 3/2 8 { bes,16 c d ees [ f g ] } aes8~ \sf aes4 ( f8 ) |
      \tuplet 3/2 8 { bes,16 c d ees [ f g ] } aes8~ \sf aes4 < f bes, aes f >8 |
      < e bes aes e >4. ( _\markup \italic "sempre dim." < f aes, f > ) |
      < f aes, f > ( < ees g, ees > ) |
      < ees ges, ees > ( < d f, d > ) |
      % 411
      < des bes e, des > ( < c g e c > ) |
      < bes g e c bes > ( < aes f c aes > ) |
      < aes f d bes aes > ( < g ees bes g > ) |
      < aes f d bes aes > ( < f bes, aes f > ) |
      < ees bes ees, > \pp r4 r8 |
      % 416
      < bes ees, bes >4. r4 r8 |
      <<
        {
          g4. b4\rest b8\rest \break |
          \tempo "Adagio"
          ees,4.
        } \\
        {
          \LEFT \stemUp \crossStaff < g, bes >4. d4\rest d8\rest |
          \crossStaff < g bes >4.
        }
      >>
      r4 r8 |
      \tempo "Piu allegro."
      \LEFT \stemUp ees16 ^\f f g aes bes c \RIGHT \stemNeutral d \sf ees d c bes a |
      bes c d ees f g aes \sf bes aes g \tuplet 3/2 8 { f [ ees d ] } |
      % 421
      ees f g aes bes c d \sf ees d c bes aes |
      g aes bes c \tuplet 3/2 8 { d [ ees f ] g \sf f ees d [ c bes ] aes g f } |
      ees \ff f g aes bes c d ees d c bes a |
      \tuplet 3/2 8 { bes c d ees [ f g ] aes bes c } \U \tuplet 3/2 8 { d [ ees f ] g aes bes } c [ d ] |
      ees4-. \N
      <<
        {
          \TUTTI ees,,8 ( \f [ g ] ) b,\rest g'16 ( bes ) |
          % 426
          bes ( ees ) ees4~ \sf ees bes8 |
          bes16 ( f' ) f4~ \sf f bes,8 |
          bes16 ( \ff g' ) g4 \sf bes,16 ( g' ) g4 \sf |
          bes,16 ( g' ) g4 \sf bes,16 ( g' ) g4 \sf |
          g4
        } \\
        {
          \TUTTI < bes,, g >8~ [ < bes g > ] s < ees bes > |
          % 426
          < g ees > < bes g ees >4~ < bes g ees > g8 |
          f16 d' < d bes f >4~ < d bes f > bes8 |
          g16 ees' < ees g, >4 g,16 ees' < ees g, >4 |
          g,16 ees' < ees g, >4 g,16 ees' < ees g, >4 |
          < ees bes g >
        }
      >>
      \TUTTI r8 < ees g, ees >4 r8 |
      % 431
      < ees, g, ees >4 r8 r4 r8 \bar "|."
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Left Hand
    \new Staff = "lower" \relative c'
    {
      \time 6/8
      \key ees \major \BASS
      % 1
      ees,,8 \sustainOn bes'' < g ees bes > ees, bes'' < g ees bes > |
      ees, bes'' < g ees bes > ees, bes'' < g ees bes > \sustainOff |
      bes,, bes'' < aes f bes, > ees, bes'' < g ees bes > |
      bes,, bes'' < f d bes > bes,, bes'' < aes f bes, > |
      ees, \sustainOn bes'' < g ees bes > ees, bes'' < g ees bes > |
      % 6
      ees, bes'' < g ees bes > ees, bes'' < g ees bes > \sustainOff |
      bes,, bes'' < aes f bes, > ees, bes'' < g ees bes > |
      bes, bes' < f d > bes, < d' f > < cis e > |
      bes, _\markup \italic "Mit Nachdruck." < c' ees > < b d > bes, < bes' des > < a c > |
      bes, < aes' ces > < g bes > bes, < fis' a > < f aes > |
      % 11
      bes,, \sustainOn bes'' < aes f bes, > bes,, bes'' < aes f bes, > \sustainOff |
      ees, bes'' < g ees bes > bes, < d' f > < cis e > |
      bes, < c' ees > < b d > bes, < bes' des > < a c > |
      bes, < aes' ces > < g bes > < aes f bes, >4 \TUTTI d,16 \p ( des ) |
      des8 r c16 ( b ) b8 r bes16 ( a ) |
      % 16
      a8 r aes16 ( g ) g8 r f16 ( ees ) |
      ees8~ [ ees ] < ees' g bes ees >~ [ < ees g bes ees > ] r < ees g bes ees >-. |
      < ees g bes ees >-. < ees g bes ees >4~ < ees g bes ees > < ees ees, >8 |
      < d d, > r < bes bes, > < ees ees, > r < g g, > |
      < bes bes, > < bes, bes, > < bes bes, > < bes bes, > bes16 aes g f |
      % 21
      ees8~ [ ees ] < ees' g bes ees >~ [ < ees g bes ees > ] r < ees g bes ees >-. |
      < ees g bes ees >-. < ees g bes ees >4~ < ees g bes ees > < ees ees, >8 |
      < d d, > r < bes bes, > < ees ees, > r < g g, > |
      < bes bes, > < bes, bes, > < bes bes, > < bes bes, > < d' f > [ < cis e > ] |
      bes, < c' ees > < b d > bes, < bes' des > < a c > |
      % 26
      bes, < aes' ces > < g bes > bes, < fis' a > < f aes > |
      < bes, bes, >4 < bes bes, >8 < bes bes, >8. < bes bes, >16-. < bes bes, >8-. |
      < ees bes ees, >4 < ees bes ees, >8 < ees bes ees, >4 < bes bes, >8 |
      < bes bes, >4 < bes bes, >8 < bes bes, >8. < bes bes, >16-. < bes bes, >8-. |
      < ees ees, >4 < ees ees, >8 < ees ees, >4 < ees ees, >8 |
      % 31
      < f bes, aes f>4 < f bes, aes f>8 < f bes, aes f>4 < f bes, aes f>8 |
      < g g, >4 < g g, >8 < g g, >4 < g, g, >8 |
      < aes aes, >8. < aes aes' >16 < aes aes' >8 < aes aes' >8. < aes aes' >16 < a a' >8 |
      < bes f' bes >8. < a a' >16 < aes aes' >8 < g g' >8. < f f' >16 < ees ees' >8 |
      < aes aes' >4 r8 < bes bes, >4 r8 |
      % 36
      < ees ees, >8. < ees ees' >16 < ees ees' >8 < ees ees' > < ees ees' > < ees ees' > |
      <<
        {
          \TUTTI
          r16 ees ( f g aes bes c b c d ees c )
        } \\
        {
          \TUTTI
          c,4. ( aes' )
        }
      >> |
      < bes g >8. < bes bes, >16 < bes bes, >8 < bes bes, > < bes bes, > < bes bes, > |
      <<
        {
          \TUTTI
          aes16 ( bes aes bes aes bes aes bes aes bes aes bes )
        } \\
        {
          \TUTTI
          bes,4. bes
        }
      >> |
      < ees g >8. < ees ees' >16 < ees ees' >8 < ees ees' > < ees ees' > < ees ees' > |
      % 41
      < ees g bes ees >8. < ees ees' >16 < ees ees' >8 < ees ees' > < ees ees' > < ees ees' > |
      < ees ees' >4 \SOLO r8 \tuplet 3/2 8 { ees16 [ d c ] bes [ c d ] } ees f |
      \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes \tuplet 3/2 8 { bes [ aes g ] } aes bes c d |
      ees4 r8 \TREB \tuplet 3/2 8 { ees16 [ d c ] bes [ c d ] } ees f |
      \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes \tuplet 3/2 8 { bes [ aes g ] } aes bes c d |
      % 46
      \tuplet 3/2 8 { ees [ d c ] bes [ c d ] } ees f \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes |
      bes ( aes g c bes aes g f ees d c b ) |
      bes ( aes g c bes aes g f ees d c b ) \BASS |
      <<
        {
          g8 bes ees g, bes ees |
          aes, c ees aes, ces ees |
          % 51
          aes, bes d aes bes d |
          g, bes ees g, bes ees |
          f, bes d g, bes e |
          aes, bes f' aes, bes f' |
          aes, bes f' bes, ees g \TREB |
          % 56
          \slashedGrace s c, ees aes c, ees aes |
          ees f a d, f bes
        } \\
        {
          ees,,2. |
          ees |
          % 51
          < ees f > |
          ees |
          d4. e |
          f2. |
          f4. g |
          % 56
          aes2. |
          < a c >4. bes
        }
      >> |
      < c ees f a c >4 \arpeggio \sustainOn r8 \sustainOff \TUTTI \BASS ees-. ^\p d-. c-. |
      bes ( a ) g-. f4 f8 |
      \SOLO < d f aes b d >4 \arpeggio \sustainOn r8 \sustainOff \TUTTI f'-. ees-. d-. |
      % 61
      c ( b ) aes-. g4 g8 |
      < ees ees, >4.~ < ees ees, >8 < aes aes, >-. < g g, >-. |
      < f f, >-. < ees ees, >-. < d d, >-. < c c, >-. < bes bes, >-. < a a, >-. |
      < g g, >-. < f f, >-. < f f' >-. < f f' >-. < f' bes d >-. < f a c >-. |
      < f a c >4 r8 \SOLO ees'-. d-. c-. |
      % 66
      bes ( a ) g-. f4 f8 |
      \TUTTI < d f aes b >4 r8 \SOLO f'-. ees-. d-. |
      c ( b ) aes-. g4 g8 |
      s4. \sustainOn g'8-. f-. \sustainOff ees-. |
      d-. c-. b-. \afterGrace c4 \trill ( { b16 c } d8 ) |
      % 71
      ees-. ( g,-. a-. ) bes4-> ( c8 ) |
      f,16 a c a c a f a c a c a |
      f a c a c a f a c a c a |
      f bes d bes d bes f bes d bes d bes |
      f bes d bes d bes f bes d bes d bes |
      % 76
      f c' ees c ees c f, c' ees c ees c
      f, c' ees c ees c f, c' ees c ees c
      \TREB bes < d f > bes' < f d > bes < f d > bes, < ees g > bes' < g ees > bes < g ees > |
      bes, < d f > bes' < f d > bes < f d > bes, < c f > a' < f c > a < f c > |
      bes, < d f > bes' < f d > bes < f d > bes, < ees g > bes' < g ees > bes < g ees > |
      % 81
      bes, < d f > bes' < f d > bes < f d > bes, < c f > a' < f c > a < f c > |
      bes, < d f > bes' < f d > bes < f d > bes, < ees g > bes' < g ees > bes < g ees > |
      bes, < d f > bes' < f d > bes < f d > bes, < ees g > bes' < g ees > bes < g ees > |
      bes, d f bes, ees g bes, d f bes, ees g |
      bes, d f bes, ees g bes, d f bes, ees g |
      % 86
      aes8-. \sustainOn f-. d-. \BASS bes-. aes-. f-. |
      d-. bes-. aes-. f d bes |
      d f aes bes d f |
      aes bes d \TREB f aes bes \sustainOff |
      ces ces, bes ces' ces, bes |
      % 91
      ces' ces, bes ces' ces, bes \BASS |
      a aes g ges f e |
      ees d des c ces bes |
      ees, \sustainOn bes'' < g ees bes > ees, bes'' < g ees bes > |
      ees, bes'' < g ees bes > ees, bes'' < g ees bes > \sustainOff |
      % 96
      bes,, bes'' < aes f bes, > ees, bes'' < g ees bes > |
      bes,, bes'' < f d bes > bes,, bes'' < aes f bes, > |
      ees, \sustainOn bes'' < g ees bes > ees, bes'' < g ees bes > |
      ees, bes'' < g ees bes > ees, bes'' < g ees bes > \sustainOff |
      bes,, bes'' < aes f bes, > ees, bes'' < g ees bes > |
      % 101
      bes, bes' < f d > bes, < d' f > < cis e > |
      bes, _\markup \italic "Mit Nachdruck." < c' ees > < b d > bes, < bes' des > < a c > |
      bes, < aes' ces > < g bes > bes, < fis' a > < f aes > |
      bes,, \sustainOn bes'' < aes f bes, > bes,, bes'' < aes f bes, > \sustainOff |
      ees, bes'' < g ees bes > ees, < d'' f > < cis e > |
      % 106
      bes, < c' ees > < b d > bes, < bes' des > < a c > |
      bes, < aes' ces > < g bes > ees, r \TUTTI < ees' g > |
      < aes f bes, >4-. < aes f bes, >8-.
      <<
        {
          \TUTTI < aes f >8.-. < g ees >16-. < f d >8-.
        } \\
        {
          \TUTTI bes,8. bes16 bes8
        }
      >> |
      < ees ees, >4 < ees ees, >8 < ees ees, >4 \SOLO \TREB ees''16 g |
      f aes f aes f aes f aes ees aes d, aes' |
      % 111
      ees g ees g ees g ees g ees g r8 |
      R2. |
      R2. |
      R2. \BASS |
      des,,16 bes des c bes aes ges f ees des c bes |
      % 116
      c4 r8 r4 r8 |
      aes''16 f aes g f ees des c bes aes g f |
      g4 \TREB f'''16 ees d c b aes g f \BASS |
      \tuplet 3/2 8 { ees [ d c ] bes aes g f [ ees d ] } \stemDown \tuplet 3/2 8 { c bes aes g [ f ees ] } d c |
      b4 \stemNeutral \TUTTI < b! b'! >8-. < b b' >8.-. < c c' >16-. < d d' >8-. |
      % 121
      < ees ees' >4-. < c c' >8-. < c c' >8.-. < d d' >16-. < ees ees' >8-. |
      < f f' >4-. < d d' >8-. < d d' >8.-. < ees ees' >16-. < f f' >8-. |
      < g g' >4-. c'8 c8.-. d16-. e8-. |
      f8 r d-. d8.-. e16-. f8-. |
      g4 \SOLO \TREB c,8-. c8.-. d16-. e8-. |
      % 126
      f'16 e d f e d f e d f e d |
      f e d f e d f e d f e d |
      f d b d b f b f d f d b \BASS
      d b f b f d \stemDown f d b d b f |
      d' b f f' d b f' d b b' f d |
      % 131
      \stemNeutral b' f d d' b f d' b f f' d b \TREB |
      f' d b b' f d b' f d d' b f |
      d' b f f' d b f' d b b' f d |
      d' b g f d' b g f d' b g f |
      d' b g f d' b g f d' b g f |
      % 136
      < f g b d >4 r8 r4 r8 \BASS |
      R2. |
      c,,,8 \sustainOn c'' < g e > c,, c'' < g e > |
      c,,8 c'' < g e > c,, c'' < g e > |
      c,,8 c'' < g e > c,, c'' < g e > |
      % 141
      c,,8 c'' < g e > c,, c'' < g e > \sustainOff |
      f, \sustainOn a' < f d > f, a' < f d > |
      f, a' < f d > f, a' < f d > \sustainOff |
      g, \sustainOn c' < g e > g, c' < g e > \sustainOff |
      g, \sustainOn b' < g d > g, b' < g d > \sustainOff |
      % 146
      c,,16 d e f g a b c d e f g |
      a b c d e f \TREB g [ a b c ] \tuplet 3/2 8 { d e f } |
      g4 r8 \BASS g,,8 < c e > < c e > |
      g, < c e > < c e > g < d' f > < d f > |
      c,16 d e f g a b c d e f g \TREB |
      % 151
      \tuplet 3/2 8 { a b c d [ e f ] g a b c [ d e ] } f g a b |
      c4 r8 \BASS g,,8 < c e > < c e > |
      g, < c e > < c e > g < d' f > < d f > |
      <<
        {
          < c e >4 s8 s4. |
          \TUTTI a16 ( c d e f g a4. )
        } \\
        {
          \TUTTI r8. < c c, >16 \ff < c c, >8 < c c, > < c c, > < c c, > |
          \LSHIFT a,4. f'
        }
      >> |
      % 156
      \TUTTI < e g >8. < g g' >16 < g g' >8 < g g' > < g g' > < g g' > |
      <<
        {
          \TUTTI g,8 g'16 ( a b c < b f' >4. )
        } \\
        {
          \TUTTI \LSHIFT g,4. ( g' )
        }
      >> |
      < c, c, >8. \ff < c c' >16 < c c' >8 < c c' > < c c' > < c c' > |
      < c c, >8. < c c' >16 < c c' >8 < c c' > < c c' > < c c' > |
      < ees ees' >8. \pp < ees ees' >16 < ees ees' >8 < ees ees' > < ees ees' > < ees ees' > |
      % 161
      < ees ees' > < ees ees' > < ees ees' > < ees ees' > < ees ees' > < ees ees' > |
      \SOLO aes, \sustainOn ees'' < c aes ees > aes, ees'' < c aes ees > |
      aes, ees'' < c aes ees > aes, ees'' < c aes ees > |
      aes, des' < bes g ees > aes, des' < bes g ees > |
      aes, ees'' < c aes ees > aes, ees'' < c aes ees > |
      % 166
      aes, des' < bes g ees > aes, des' < bes g ees > \sustainOff |
      aes, c' < aes ees > aes, c' < aes ees > |
      aes, c' < aes ees > aes, c' < aes ees > |
      des, f' < des bes aes > des, f' < des bes aes > |
      des, f' < des bes aes > des, f' < des bes aes > |
      % 171
      ees, ees' < c aes > ees, ees' < c aes > |
      ees,, des'' < bes g ees > ees,, des'' < bes g ees > |
      aes,16 bes c des ees f g aes bes c des ees \TREB |
      f g aes bes c des \tuplet 5/6 4. { ees f g aes bes } |
      c4 r8 ees,, < aes c > < aes c > \BASS |
      % 176
      ees, < aes c > < aes c > ees, < bes' des > < bes des > |
      aes16 bes c des ees f g aes bes c des ees \TREB |
      f g aes bes c des \tuplet 3/2 8 { ees [ f g ] } aes bes c des |
      ees4 r8 ees,, < aes c > < aes c > \BASS |
      ees, < aes c > < aes c > \stemDown ees, < bes' des > < bes des > |
      % 181
      < c aes >4 r8 r4 r8 \stemNeutral |
      <<
        {
          \TUTTI f16 aes ( bes c des ees ) s4. |
          r8. ees,16 ees8 ees ees ees |
          g16 ( bes g bes g bes g fis g aes bes g )
        } \\
        {
          \TUTTI \LSHIFT f4. ( des ) |
          < c c, >4 r8 r4 r8 |
          ees4. ees
        }
      >> |
      \TUTTI < aes aes, >8. aes16 aes8 aes aes aes |
      % 186
      < aes aes, >8. aes16 aes8 aes aes aes |
      b8. b16 b8 b b b |
      b8 b b b b b |
      \SOLO e,, \sustainOn e'' b gis e' b |
      gis e' b gis e' b |
      % 191
      fis dis' b fis dis' b |
      gis e' b gis e' b |
      fis dis' b fis dis' b |
      gis e' b gis e' b |
      gis e' b gis e' b \sustainOff |
      % 196
      a, \sustainOn e'' < cis a > a, e'' < cis a > |
      a, e'' < cis a > a, e'' < cis a > \sustainOff |
      b, \sustainOn e' < b gis > b, e' < b gis > \sustainOff |
      b, \sustainOn dis' < b fis > b, dis' < b fis > \sustainOff |
      e,,16 fis gis a b cis dis e fis gis a b \TREB |
      % 201
      cis dis e fis gis a b cis dis e \tuplet 3/2 8 { fis [ gis a ] } |
      b4 r8 b,,8 < e gis > < e gis > \BASS |
      b, < e gis > < e gis > b < fis' a > < fis a > |
      e,16 fis gis a b cis dis e fis gis a b \TREB |
      \tuplet 3/2 8 { cis dis e fis [ gis a ] b cis dis e [ fis gis ] } a b cis dis |
      % 206
      e4 r8 b,,8 < e gis > < e gis > \BASS |
      \stemDown b, < e gis > < e gis > b, < fis' a > < fis a > |
      < e gis >4 \stemNeutral r8 r4 r8 |
      <<
        {
          \TUTTI cis''4 ( e,8 ) a4 ( e8 ) |
          r8. < b' b, >16 < b b, >8 < b b, > < b b, > < b b, > |
          % 211
          \repeat tremolo 6 { dis,16 ( b' ) }
        } \\
        {
          \TUTTI cis,4. ( a ) |
          < gis gis' >4 r8 r4 r8 |
          % 211
          b4. b
        }
      >> |
      e,16 b' g' b, e, b' e, b' g' b, e, b' |
      e, b' g' b, e, b' e, b' g' b, e, b' |
      a e' c' e, a, e' a, e' c' e, a, e' |
      a, e' c' e, a, e' a, e' c' e, a, e' |
      % 216
      a, d c' d, a d g, d' bes' d, g, d' |
      g, c bes' c, g c f, c' aes' c, f, c' |
      f, c' aes' c, f, c' f, c' aes' c, f, c' |
      d, d' f d d, d' c, c' f c c, c' |
      < bes bes, >4 \sustainOn r8 r4 r8 |
      % 221
      \stemDown R2.
      bes,4 \stemNeutral r8 r4 r8 |
      R2. |
      bes4 r8 r4 r8 |
      R2. |
      % 226
      \stemDown bes4 \stemNeutral r8 r4 r8 |
      R2. |
      bes'16 d f aes bes d \TREB f aes bes, d f aes |
      bes, d f aes bes, d f aes bes, d f aes \sustainOff |
      ces, d f aes bes, g' a, c ees ges aes, f' \BASS |
      % 231
      g, e' ges, ees' f, d' e, des' ees, c' d, ces' |
      ces bes ces bes ces bes ces bes ces bes ces bes |
      ces bes ces bes ces bes ces bes ces bes ces bes |
      <<
        {
          \once \override TrillSpanner.outside-staff-priority = ##f
          \once \override TrillSpanner.bound-details.right.padding = #5
          \once \override TrillSpanner.padding = #2
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.padding = #3.5
          \stemNeutral bes2.~ ^\markup { \halign #-5 \teeny \flat } \startTrillSpan |
          bes |
          % 236
          \once \override TrillSpanner.outside-staff-priority = ##f
          \once \override TrillSpanner.bound-details.right.padding = #3
          \once \override TrillSpanner.padding = #2
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.padding = #3.5
          bes~ \stopTrillSpan ^\markup { \halign #-6.5 \teeny \natural } \startTrillSpan |
          bes~ |
          bes~ |
          bes~ |
          bes~ |
          % 241
          bes~ |
          bes~ |
          bes~ |
          bes~
        } \\
        \new StaffGroup \with { fontSize = #-2 } \relative c
        {
          \override Staff.StaffSymbol.staff-space = #(magstep -2)
          \once \omit Staff.TimeSignature
          \once \omit Staff.Clef
          \once \omit Staff.KeySignature
          \key ees \major \BASS
          s2. * 2 |
          % 236
          s2.
          r4 r8 r4 < bes' g >8 \p |
          < bes g ees > ( ees ) r r4 < ees bes g >8 |
          < ees bes g > ( g ) r r4 \TREB < g ees >8 |
          < g ees >16 ( [ bes ] ) < g bes >8 r r4 r8 |
          % 241
          r4 r8 r4 < ees bes >8 |
          < ees bes > ( g ) r r4 < g ees >8 |
          < g ees > ( bes ) r r4 < bes g >8 |
          < bes g >16 ( [ ees ] ) < ees g, >8 r r4 r8
        }
      >> |
      bes aes16 [ g f ees ] d c bes aes g f |
      % 246
      ees8 \sustainOn bes'' < g ees bes > ees, bes'' < g ees bes > |
      ees, bes'' < g ees bes > ees, bes'' < g ees bes > \sustainOff |
      bes,, bes'' < aes f bes, > ees, bes'' < g ees bes > |
      bes,, bes'' < f d bes > bes,, bes'' < aes f bes, > |
      ees, \sustainOn bes'' < g ees bes > ees, bes'' < g ees bes > \sustainOff |
      % 251
      ees, bes'' < g ees bes > ees, bes'' < g ees bes > |
      bes,, bes'' < aes f bes, > ees, bes'' < g ees bes > |
      bes, bes' < f d > bes, < d' f > < cis e > |
      bes, < c' ees > < b d > bes, < bes' des > < a c > |
      bes, < aes' ces > < g bes > bes, < fis' a > < f aes > |
      % 256
      bes,, \sustainOn bes'' < aes f bes, > bes,, bes'' < aes f bes, > \sustainOff |
      ees, bes'' < g ees bes > ees,4 < d'' f >8 |
      < cis e > < cis e > < c ees > < b d > < b d > < bes des > |
      < a c > < a c > < aes ces > < g bes > < g bes > \TUTTI d16 ( [ des ] ) |
      des8 des c16 ( [ b ] ) b8 b bes16 ( [ a ] ) |
      % 261
      a8 a aes16 ( [ g ] ) g8 g f16 ( [ ees ] ) |
      ees8~ [ ees ] < ees' g bes ees >~ [ < ees g bes ees > ] r < ees g bes ees >-. |
      < ees g bes ees >-. < ees g bes ees >4~ < ees g bes ees > < ees ees, >8 |
      < d d, > r < bes bes, > < ees ees, > r < g g, > |
      < bes bes, > < bes, bes, > < bes bes, > < bes bes, > bes16 aes g f |
      % 266
      ees8~ [ ees ] < ees' g bes ees >~ [ < ees g bes ees > ] r < ees g bes ees >-. |
      < ees g bes ees >-. < ees g bes ees >4~ < ees g bes ees > < ees ees, >8 |
      < d d, > r < bes bes, > < ees ees, > r < g g, > |
      < bes bes, > < bes, bes, > < bes bes, > < bes bes, > < d' f > [ < cis e > ] |
      bes, < c' ees > < b d > bes, < bes' des > < a c > |
      % 271
      bes, < aes' ces > < g bes > bes, < fis' a > < f aes > |
      < bes, bes, >4 < bes bes, >8 < bes bes, >8. < bes bes, >16 < bes bes, >8 |
      < ees bes ees, >4 < ees bes ees, >8 < ees bes ees, >4 < bes bes, >8 |
      < bes bes, >4 < bes bes, >8 < bes bes, >4 < bes bes, >8 |
      < ees ees, >4 < ees ees, >8 < ees ees, >4 < ees ees, >8 |
      % 276
      < f bes, aes f>4 < f bes, aes f>8 < f bes, aes f>4 < f bes, aes f>8 |
      < g g, >4 < g g, >8 < g g, >4 < g, g, >8 |
      < aes aes, >8.-. < aes aes' >16-. < aes aes' >8-. < aes aes' >8.-. < aes aes' >16-. < a a' >8-. |
      < bes f' bes >8.-. < a a' >16-. < aes aes' >8-. < g g' >8.-. < f f' >16-. < ees ees' >8-. |
      < aes aes' >4 r8 < bes bes, >4 r8 |
      % 281
      < ees ees, >8. < ees ees' >16 < ees ees' >8 < ees ees' > < ees ees' > < ees ees' > |
      <<
        {
          \TUTTI
          r16 ees ( f g aes bes c b c d ees c )
        } \\
        {
          \TUTTI
          c,4. ( aes' )
        }
      >> |
      < bes g >8. < bes bes, >16 < bes bes, >8 < bes bes, > < bes bes, > < bes bes, > |
      <<
        {
          \TUTTI
          aes16 ( bes aes bes aes bes aes bes aes bes aes bes )
        } \\
        {
          \TUTTI
          bes,4. bes
        }
      >> |
      < ees g >8. < ees ees' >16 < ees ees' >8 < ees ees' > < ees ees' > < ees ees' > |
      % 286
      < ees g bes ees >8. < ees ees' >16 < ees ees' >8 < ees ees' > < ees ees' > < ees ees' > |
      < ees ees' >4 \SOLO r8 \tuplet 3/2 8 { ees16 [ d c ] bes [ c d ] } ees f |
      \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes \tuplet 3/2 8 { bes [ aes g ] } aes bes c d |
      ees4 r8 \TREB \tuplet 3/2 8 { ees16 [ d c ] bes [ c d ] } ees f |
      \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes \tuplet 3/2 8 { bes [ aes g ] } aes bes c d |
      % 291
      \tuplet 3/2 8 { ees [ d c ] bes [ c d ] } ees f \tuplet 3/2 8 { g [ f ees ] d [ ees f ] } g aes |
      bes ( aes g c bes aes g f ees d c b ) |
      bes ( aes g c bes aes g f ees d c b ) \BASS |
      <<
        {
          g8 bes ees g, bes ees |
          aes, c ees aes, ces ees |
          % 296
          aes, bes d aes bes d |
          g, bes ees g, bes ees |
          f, bes d g, bes e |
          aes, bes f' aes, bes f' |
          aes, bes f' bes, ees g \TREB |
          % 301
          \slashedGrace s c, ees aes c, ees aes |
          c, f a d, f bes |
          ees, f a ees f a |
          f bes d g, bes e
        } \\
        {
          ees,,2. |
          ees |
          % 296
          < ees f > |
          ees |
          d4. e |
          f2. |
          f4. g |
          % 301
          aes2. |
          a4. bes |
          c2. |
          d4. e
        }
      >> |
      < f aes bes d f >4 \arpeggio \sustainOn r8 \sustainOff \TUTTI aes-. \p g-. f-. |
      % 306
      ees ( d ) c-. bes4 bes8 \BASS |
      \SOLO < g bes c e g >4 \arpeggio \sustainOn r8 \sustainOff \TUTTI bes-. aes-. g-. |
      f ( e ) des-. c4 c8 |
      < aes aes' >4.~ < aes aes' >8 < des des' >-. _\markup \italic stacc. < c c' >-. |
      < bes bes' > < aes aes' > < g g' > < f f' > < ees ees' > < d d' > |
      % 311
      < c c' >-. < bes bes' >-. < bes' bes' >-. < bes bes' >4-. < bes bes, >8-. |
      < bes bes, >4 r8 \SOLO \TREB aes''-. g-. f-. |
      ees ( d ) c-. bes4 bes8 \BASS |
      \TUTTI < e bes g >4 r8 \SOLO \TREB bes'-. aes-. g-. |
      f ( e ) des-. c4 c8 \BASS |
      % 316
      aes,16 ^\ff \sustainOn c f aes s8 \TREB c'-. bes-. \sustainOff aes-. |
      g-. f-. e-. f4 ( \trill g8 ) |
      aes-. ( c,-. d-. ) ees4 ( f8 ) |
      bes,16 d f d f d bes d f d f d |
      bes d f d f d bes d f d f d |
      % 321
      bes ees g ees g ees bes ees g ees g ees |
      bes ees g ees g ees bes ees g ees g ees |
      bes f' aes f aes f bes, f' aes f aes f |
      bes, f' aes f aes f bes, f' aes f aes f |
      ees < g bes > ees' < bes g > ees < bes g > ees, < aes c > ees' < c aes > ees < c aes > |
      % 326
      ees, < g bes > ees' < bes g > ees < bes g > ees, < aes f > d < aes f > d < aes f > |
      ees < g bes > ees' < bes g > ees < bes g > ees, < aes c > ees' < c aes > ees < c aes > |
      ees, < g bes > ees' < bes g > ees < bes g > ees, < aes f > d < aes f > d < aes f > |
      ees < g bes > ees' < bes g > ees < bes g > ees, < aes c > ees < aes c > ees < aes c > |
      ees < g bes > ees' < bes g > ees < bes g > ees, < aes c > ees < aes c > ees < aes c > |
      % 331
      ees g bes ees, aes c ees, g bes ees, aes c |
      ees, g bes ees, aes c ees, g bes ees, aes c |
      des8 \sustainOn bes-. g-. ees-. des-. bes-. \BASS |
      g-. ees-. des-. \stemDown bes g ees |
      \stemNeutral g bes des ees g bes \TREB |
      % 336
      des ees g bes b \sustainOff c |
      des des, c des' des, c |
      des' des, c des' des, c \BASS |
      ces bes a aes g ges |
      f e ees d ees ees |
      % 341
      aes, \sustainOn ees'' < c aes ees > aes, ees'' < c aes ees > |
      aes, ees'' < c aes ees > aes, ees'' < c aes ees > \sustainOff |
      \TUTTI < g ees g, > r < ees ees, > < aes aes, > r < c aes c, > |
      < ees bes ees, >4 r16 d ees4 r8 |
      \SOLO aes,, \sustainOn ees'' < c aes ees > aes, ees'' < c aes ees > |
      % 346
      aes, ees'' < c aes ees > aes, ees'' < c aes ees > \sustainOff |
      \TUTTI < g ees g, > r < ees ees, > < aes aes, > r < c aes c, > |
      < ees bes ees, >4 r16 d ees4 \SOLO \TREB f16 _\markup \italic "Mit Nachdruck." aes |
      f aes f aes ees g ees g ees g des f |
      des f des f c ees c [ ees c ees ] \TUTTI \BASS < aes, ees aes, >8 |
      % 351
      < ees ees, > < ees bes' des > < ees bes' des > < ees bes' des >8. < ees aes c >16 < ees g bes >8 |
      < aes ees aes, >4 < aes c ees >8 < aes c ees >4 \SOLO \TREB f'16 aes |
      f aes f aes ees g ees g ees g des f |
      des f des f c ees c [ ees c ees ] \TUTTI \BASS c,-. b-. |
      b4 bes16-. a-. a4 aes16 g |
      % 356
      g4 \stemDown ges16 f f8 [ e ] \stemNeutral < ees ees' > |
      \repeat tremolo 6 { < ees' g bes >16 ees' } |
      \repeat tremolo 6 { < bes g ees > ees } |
      < d bes d, >4 < bes, bes, >8 < ees ees, >4 < g g, >8 |
      \repeat tremolo 3 { bes,16 bes' } bes,8 bes16 aes g f |
      % 361
      ees8 \repeat tremolo 2 { < ees' g bes >16 ees' } \repeat tremolo 3 { < bes g ees > ees } |
      \repeat tremolo 6 { < bes g ees > ees } |
      < d bes d, >4 < bes, bes, >8 < ees ees, >4 < g g, >8 |
      \repeat tremolo 3 { < f d bes >16 bes } < f d bes >8 < d' f > < cis e > |
      bes, < c' ees > < b d > bes, < bes' des > < a c > |
      % 366
      bes, < aes' ces > < g bes > bes, < fis' a > < f aes > |
      \repeat tremolo 6 { < aes f bes, >16 bes } |
      \repeat tremolo 3 { < g ees > bes } < g ees >4 r8 |
      R2. |
      r4 ees8 \p ees g ees |
      % 371
      \SOLO f16 < aes bes > d < bes aes > d < bes aes > bes, < bes' aes > d < bes aes > d < bes aes > |
      ees, < g bes > ees' < bes g > ees < bes g > bes, < g' bes > ees' < bes g > ees < bes g > |
      f < aes bes > d < bes aes > d < bes aes > bes, < bes' aes > d < bes aes > d < bes aes > |
      ees, < g bes > ees' < bes g > ees < bes g > bes, < g' bes > ees' < bes g > ees < bes g > |
      f < aes bes > d < bes aes > d < bes aes > bes, < bes' aes > d < bes aes > d < bes aes > |
      % 376
      ees, < g bes > ees' < bes g > ees < bes g > bes, < g' bes > ees' < bes g > ees < bes g > |
      f < aes bes > d < bes aes > d < bes aes > bes, < bes' aes > d < bes aes > d < bes aes > |
      ees, < g bes > ees' < bes g > ees < bes g > ees, < g bes > ees' < bes g > ees < bes g > |
      ees, < g bes > ees' < bes g > ees < bes g > ees, < g bes > ees' < bes g > ees < bes g > |
      aes, < ees' f aes > c' < aes f ees > c < aes f ees > aes, < ees' f aes > c' < aes f ees > c < aes f ees > |
      % 381
      aes, < ees' f aes > c' < aes f ees > c < aes f ees > aes, < ees' f aes > c' < aes f ees > c < aes f ees > |
      bes, < ees g > ees' < ees, g > ees' < ees, g > bes < ees g > ees' < ees, g > ees' < ees, g > |
      bes < ees g > ees' < ees, g > ees' < ees, g > bes < f' aes > d' < aes f > d < aes f > |
      < ees g bes ees >4 r8 \TUTTI < bes bes, >4 r8 |
      < f f' >4 r8 < bes bes, >4 r8 |
      % 386
      \SOLO ees16 \p g bes g bes g bes, g' bes g bes g |
      f < aes bes > d < bes aes > d < bes aes > bes, < bes' aes > d < bes aes > d < aes bes > |
      ees < g bes > ees' < bes g > ees < bes g > bes, < g' bes > ees' < bes g > ees < bes g > |
      f < aes bes > d < bes aes > d < bes aes > bes, < bes' aes > d < bes aes > d < aes bes > |
      ees g bes ees \TREB g [ bes ] ees bes f' d g ees |
      % 391
      aes f d bes f' d f d g ees aes f |
      bes g ees bes g' ees bes g ees' bes g ees |
      bes' g ees bes ees g bes ees g ees bes' g |
      c aes f c aes' f c aes f' c aes f |
      c' aes f c f aes c f aes f c' aes |
      % 396
      c8 bes16 aes g f ees d c bes aes g |
      f ees d ees g ees bes' g ees' bes g' f |
      <<
        {
          ees4 s8 s4. |
          \TUTTI \BASS c,,16 ees ( f g aes bes ) s4.
        } \\
        {
          \TUTTI ees8. \BASS < ees ees, >16 [ < ees ees, >8 ] < ees ees, > < ees ees, > < ees ees, > |
          \LSHIFT c,4. ( < aes ees' aes > )
        }
      >> |
      \TUTTI < g g' >8. < bes bes' >16 < bes bes' >8 < bes bes' > < bes bes' > < bes bes' > |
      <<
        {
          % 401
          \TUTTI bes'8 bes16 ( c d ees aes4. )
        } \\
        {
          % 401
          \TUTTI bes,,4. ( < bes' f' > )
        }
      >> |
      < ees, ees, >4 r8 r4 r8 |
      \SOLO < c' ees >4. < aes c > |
      < g bes >4 r8 r4 r8 \TREB |
      <<
        {
          < f' aes >4. ( ^\sf < d f > ) |
          % 406
          < f aes >4. ( ^\sf < d f > ) |
          < f aes >4. ( ^\sf < d f > ) |
          < cis e > ( < d f > )
        } \\
        {
          bes2. |
          % 406
          bes |
          bes |
          bes
        }
      >> |
      < b d f >4. ( < c ees > ) |
      < a c ees > ( < bes d > ) \BASS |
      % 411
      < des bes g > ( < c bes g e > ) |
      < bes g e c > ( < aes f > ) |
      <<
        {
          < aes f > ( < g ees > ) |
          < aes f > ( < f d > )
        } \\
        {
          bes,2. |
          bes |
        }
      >> |
      ees,8 \sustainOn \once \override TextSpanner.bound-details.left.text = "ri" \once \override TextSpanner.bound-details.right.text = "tard." g'4 \startTextSpan r4 r8 |
      % 416
      ees,8 g'4 r4 r8 |
      \stemDown < ees ees, >4. s4. \stopTextSpan |
      < bes ees, >4. r4 r8 \sustainOff |
      ees,16 f g aes bes c \stemNeutral d ees d c bes a |
      bes c d ees f g aes bes aes g \tuplet 3/2 8 { f [ ees d ] } |
      % 421
      ees f g aes bes c d ees d c bes aes |
      g aes bes c \tuplet 3/2 8 { d [ ees f ] g f ees d [ c bes ] aes g f } |
      ees f g aes bes c d ees d c bes a \TREB |
      \tuplet 3/2 8 { bes c d ees [ f g ] aes bes c d [ ees f ] g aes bes } c [ d ] |
      ees4-. \TUTTI \BASS < ees,,, bes ees, >8~ < ees bes ees, >4 < ees bes ees, >8-. |
      % 426
      < ees bes ees, >8-. < ees bes ees, >4~ < ees bes ees, >4 < bes bes, >8-. |
      < bes bes, >-. < bes bes, >4~ < bes bes, > < bes bes, >8 |
      < ees bes ees, >-. < ees bes ees, >4 < ees bes ees, >8-. < ees bes ees, >4
      < ees bes ees, >8-. < ees bes ees, >4 < ees bes ees, >8-. < ees bes ees, >4
      < ees bes ees, >4 r8 < ees bes ees, >4 r8
      % 431
      < ees ees, >4 r8 r4 r8 \bar "|."
    }
  >>
  \layout
  {
    \context
    {
      \Score
      \consists Span_bar_engraver
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
      \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 0) (padding . 1))
      \override StaffGrouper.staffgroup-staff-spacing = #'((basic-distance . 0) (padding . 1))
    }
    \context
    {
      \PianoStaff
      \consists #Span_stem_engraver
    }
    \context
    {
      \Staff
      \RemoveEmptyStaves
    }
  }
  % \midi {}
}
