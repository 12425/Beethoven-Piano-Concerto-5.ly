\version "2.18.2"
\pointAndClickOff
\paper
{
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  ragged-right = ##f
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TUTTI = \set fontSize = #-2
SOLO = \unset fontSize
TREB = \clef treble
BASS = \clef bass
CRESC = _\markup \italic "cresc."
DIM = _\markup \italic "dim."
NATURAL = ^\markup { \fontsize #-4 \halign #-5 \natural }
LSHIFT = \once \override NoteColumn.force-hshift = #-0.5
RSHIFT = \once \override NoteColumn.force-hshift = #1.3
U = { \ottava #1 \set Staff.ottavation = #"8" }
N = \ottava #0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Score
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header
{
  %title = "Contert V - II"
  tagline = ##f
}

\score
{
  \new PianoStaff
  <<
    % Right Hand
    \new Staff = "upper" \relative c
    {
      \tempo "Adagio un poco mosso."
      \key b \major \TREB
      % 1
      \TUTTI
      < fis b dis >2 \p ^\( < fis ais cis >4 < fis b dis > |
      < gis b > < gis cis e > < fis ais cis >2 \) |
      < fis b fis' >4 < b fis' > \( < b eis gis > < cis e ais > |
      < b dis b' > < fis b dis > < ais cis>2 \) |
      <<
        {
          \TUTTI
          fis'4 \( e' dis8. b16 \) fis8 fis |
          % 6
          fis4 \( e' dis8. b16 \) fis8 fis
        } \\
        {
          \TUTTI
          cis4 cis dis4. dis8 |
          % 6
          cis4 cis dis4. dis8
        }
      >> |
      < dis fis >4 \CRESC \( < cis g' > < b gis' > \) r |
      < b gis' > \( < cis ais' > < b dis b' > \) r |
      < b' gis' b > \f \( < cis fis cis' > < dis b' dis > < b gis' >8 < e b' > \) |
      < dis fis b >4 \DIM \( < cis e ais > < b dis b' > \p \) r |
      % 11
      < e, gis b > \f \( < fis ais cis > < fis b dis > < e gis >8 \> < b b' > \! \) |
      < b dis b' >4 \p r < cis e ais > r |
      <<
        {
          \TUTTI
          b' r e \( cis |
          dis \) r < e e' > \( < cis cis' > |
          < dis dis' >4 \p \)
        } \\
        {
          \TUTTI
          dis,4 \( e2. \) |
          dis4 \( e2. \) |
          s4
        }
      >>
      r < dis b' dis > r |
      % 16
      \SOLO
      \once \slurUp \acciaccatura fis'8 fis'4~ _\markup { \dynamic pp \italic espressivo } \tuplet 3/2 4 { fis8 e-. \( dis-. \) cis-. \( b-. ais-. \) cis^> \( b \) gis } |
      \omit TupletNumber
      \tuplet 3/2 4 { fis-. \( e-. dis-. \) cis-. \( b-. ais-. \) b_. \( fis_. e_. \) dis_. \( cis_. b_. \) } |
      ais8 \noBeam \once \slurUp \acciaccatura e''8 e'~ \tuplet 3/2 4 { e dis-. \( cis-. \) b-. \( ais-. b-. \) dis \( cis \) b } |
      \tuplet 3/2 4 { ais-. \( gis-. fis-. \) e-. \( dis-. cis-. \) b_. \( ais_. b_. \) } \acciaccatura ais8 \tuplet 3/2 4 { cis \( ais e \) } |
      \tuplet 3/2 4 { dis \( dis'8. cis16 \) cis8 \( b ais \) } ais4 \( gis8 \) gis |
      % 21
      \tuplet 3/2 4 { gis \( e'8. dis16 \) dis8 \( cis b \) } b4 \( ais8 \) ais |
      \tuplet 3/2 4 { ais \( fis'8. e16 \) e8 \( dis cis \) } \appoggiatura { b32 [ cis dis ] } cis8 \( b4 \) b8 |
      b4 \CRESC b16 \turn \( cis eis gis b cis eis gis b gis b eis, \) |
      gis _\markup \italic "dimin." \( fis dis cis b ais gis fis dis cis b ais cis b gis eis \) |
      #(define afterGraceFraction (cons 31 32))
      gis4~ gis16 fis eis fis \afterGrace fis2 \trill { eis16 } |
      % 26
      <<
        {
          fis4 \stemUp r r2 |
          \TUTTI
          ais4 \( b cis2 \) |
        } \\
        {
          \TUTTI
          \RSHIFT
          < ais, fis' >4 \pp \( < cis gis' > < cis ais' > \) r |
          cis4 \CRESC \( d e \> a \! \) |
        }
      >>
      \once \slurUp \acciaccatura a'8 a'4~ _\markup { \dynamic pp \italic "espressivo" } \tuplet 3/2 4 { a8 g-. \( fis-. \) e-. \( d-. cis-. \) e^> \( d \) b } |
      \tuplet 3/2 4 { a-. \( g-. fis-. \) e-. \( d-. cis-. \) d_. \( a_. g_. \) fis_. \( e_. d_. \) } |
      cis8 \noBeam \once \slurUp \acciaccatura bes''8 bes'~ \tuplet 3/2 4 { bes a-. \( g-. \) fis-. \( e-. d-. \) cis-. \( d-. dis-. \) } |
      % 31
      \tuplet 3/2 4 { fis \( e \) d cis-. \( bes-. a-. \) } g16-. \( fis-. e-. d-. cis-. bes-. a-. g-. \) |
      fis4 r8 a \tuplet 3/2 4 { a \( a'8. \) g16 g8 \( fis \) e-.} |
      \appoggiatura { d32 [ e fis ] } e8 \( d \) r8. d16 \( \once \omit Slur \acciaccatura d8 d'16 c \) b-. \( a-. \) g-. \( fis-. e-. d-. \) |
      c8 \( b \) r4 r2 |
      \set doubleSlurs = ##t
      < d fis >4 \f \( < e g >16 \) \unset doubleSlurs < fis a >-. < g b >-. < a cis >-. < b d >-. < cis e >-. < d fis >-. < e g >-. < fis a >-. < e g >-. < d fis >-. < g, e' >-. |
      % 36
      < fis d' >-. < e cis' >-. < d b' >-. < cis a' >-. < b g' >-. < a fis' >-. < g e' >-. < fis d' >-. < e cis' >-. < b' d >-. < cis e >-. < d fis >-. < e g >-. < dis fis >-. < e g >-. < cis e >-. |
      < e g > \DIM < cis e > < e g > < dis fis > < e g > < dis fis > < e g > < cis e > < e g > < cis e > < e g > < dis fis > < e g > < dis fis > < e g > < cis e > |
      < e g > < cis e > < e g > < dis fis > < e g > < cis e > < e g > < dis fis > < e g >-. \( < cis e >-. < e g >-. < cis e >-. \) < e g >-. \( < cis e >-. < e g >-. < cis e >-. \) |
      \stemNeutral
      \override TrillSpanner bound-details.right.padding = #2.5
      \override TrillSpanner.outside-staff-priority = ##f
      \override TextScript.outside-staff-priority = ##f
      e2 \startTrillSpan
      \override TrillSpanner.padding = #1
      \override TextScript.padding = #2.75
      fis \startTrillSpan \NATURAL |
      \override TrillSpanner.padding = #1.5
      \override TextScript.padding = #3.25
      g4 \startTrillSpan \NATURAL \CRESC
      gis \startTrillSpan \NATURAL
      \override TrillSpanner.padding = #2
      a \startTrillSpan
      ais \startTrillSpan |
      % 41
      \override TrillSpanner.padding = #2.5
      b2 \startTrillSpan
      \override TextScript.padding = #4.25
      b \startTrillSpan \NATURAL |
      \override TrillSpanner.padding = #3
      \override TextScript.padding = #4.75
      c4 \startTrillSpan \NATURAL
      cis \startTrillSpan \NATURAL
      \override TrillSpanner.padding = #3.5
      d \startTrillSpan
      dis \startTrillSpan |
      \override TrillSpanner.padding = #4
      e2 \startTrillSpan
      eis \startTrillSpan |
      \revert TrillSpanner bound-details.right.padding
      \revert TrillSpanner.outside-staff-priority
      \revert TrillSpanner.padding
      \revert TextScript.outside-staff-priority
      \revert TextScript.padding
      fis4 \trill \stopTrillSpan _\( \grace { eis32 [ fis ] } \tuplet 3/2 4 { gis8-. \> \) \( fis-. e-. \! \) dis-. \( cis-. b-. \) } ais16 \( gis \) fis-. e-. |
      < fis, b dis >4 ^\markup \italic "cantabile" < fis b dis > \( < fis ais cis > < fis b dis > \) |
      % 46
      <<
        {
          < gis b > fis'16 \( [ e ] \)
        } \\
        {
          s8. s16 ^\markup { \musicglyph #"scripts.turn" } cis8
        }
      >>
      r16
      <<
        {
          dis16 dis8 \( cis4. \) |
          \stemNeutral
          < fis, b fis' >4 < fis b fis' > \( < gis b eis gis > < ais cis e ais > \)
        } \\
        {
          b16 b8 \( ais4. \) |
          s2. s8. s16 ^\markup { \musicglyph #"scripts.turn" }
        }
      >> |
      < e' cis' >16 [ \( < dis b' > \) < fis ais >-. < e gis >-. ] < e gis > [ \( < dis fis > \) < cis e >-. < b dis >-. ] < b dis >8 \( < ais cis >4. \) |
      <<
        {
          \stemNeutral < fis cis' fis >4 < e' fis e' > \stemUp dis'8. \( b16 \) fis8 fis |
          \stemNeutral \afterGrace fis4 \trill _\( { \stemUp eis16 [ fis ] \) } e'8. \( cis16 dis8. b16 \) fis8 fis8 |
        } \\
        {
          \override TextScript.outside-staff-priority = ##f
          s8 s16. ^\markup { \override #'(baseline-skip . 1) \center-column { \musicglyph #"scripts.turn" \teeny \sharp } } s32 s4 < dis fis >4 < fis, b dis >8 < fis b dis > |
          s4 < e' fis > < dis fis > < fis, b dis >8 < fis b dis > |
        }
      >>
      % 51
      < fis b dis fis >4 \CRESC \( < g ais cis g' > < gis b gis' > \) r |
      < gis b gis' > \( < ais cis ais' > < b dis b' > \) r |
      <<
        {
          \TUTTI \stemNeutral
          < b gis' b >4 \f \( < cis ais' cis > < dis b' dis > \stemUp gis8 b \) |
          b4 \DIM \( ais \) \SOLO \autoBeamOff b,16 _\markup \italic "molto ligato" \LSHIFT b'8. ais s16 |
          b,8. \CRESC s16 cis'8. s16 dis,8. s16 s4
        } \\
        {
          \TUTTI
          s2. b8 dis |
          < b dis >4 < ais e' > \SOLO b16 ^\( b' dis, b ais' e cis ais' |
          b,16 b' dis, b cis' g e cis' dis, dis' fis, dis fis' e gis, cis \)
        }
      >> |
      % 56
      b16 \( dis b fis' \U dis b' fis dis' ais e' cis ais fis e cis b \N |
      ais \DIM \) e' \( g, \) e' \( fis, \) e' \( b \) e \( ais, \) e' \( g, \) e' \( fis, \) e' \( b \) e \( |
      ais, \) < cis e > \( g \) < cis e > \( fis, \) < cis' e > \( g \) < cis e > \( fis, \) < cis' e > \( g \) < cis e > \( fis, \) < cis' e > \( g \) < cis e > \( |
      fis, \CRESC \) [ < cis' e >-> \( fis, \) ] r16 r < cis' e >-> \( fis, \) r r < cis' e > \( fis, \) r r < cis' e > \( fis, \) < cis' e > \( |
      fis, _\markup \italic "dolce" \) dis' \( b \) dis \( fis, \) dis' \( b \) dis \( fis, \) cis' \( ais \) cis \( fis, \) dis' \( b \) dis \( |
      % 61
      gis, \) e' \( b \) e \( gis, \) e' \( b \) e \( fis, \) cis' \( ais \) cis \( fis, \) cis' \( ais \) cis \( |
      fis, \) fis' \( b, \) fis' \( fis, \) fis' \( b, \) fis' \( gis, \) gis' \( b, \) gis' \( ais, \) ais' \( cis, \) ais' \( |
      b, \) b' \( dis, \) b' \( fis, \) dis' \( b \) dis \( fis, \) cis' \( ais \) cis \( fis, \) cis' \( ais \) cis \( |
      fis, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( fis, \) dis' \( b \) dis \( fis, \) dis' \( b \) dis \( |
      fis, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( fis, \) dis' \( b \) dis \( fis, \) dis' \( b \) dis \( |
      % 66
      fis, \) dis' \( b \) dis \( g, \) dis' \( ais \) dis \( gis, \) dis' \( b \) dis \( gis, \) dis' \( b \) dis \( |
      gis, \) dis' \( b \) dis \( ais \) fis' \( cis \) fis \( b, \) fis' \( dis \) b \( fis \) dis \( b \) dis \( |
      b \CRESC \) gis' \( e \) gis \( cis, \) ais' \( fis \) ais \( dis, \) b' \( fis \) b \( gis \) b \( gis \) e' \( |
      fis, \> \) dis' \( b \) dis \( fis, \) e' \( cis \) e \( gis, \) dis' \( b \) dis \( gis, \) dis' \( b \! \) dis \( |
      gis, \CRESC \) dis' \( b \) dis \( ais \) fis' \( cis \) fis \( b, \) fis' \( dis \) fis \( b, \DIM \) gis' \( e \) gis \( |
      % 71
      b, \) fis' \( dis \) fis \( b, \) b' \( dis, \) b' \( cis, \) ais' \( e \) ais \( cis, \) ais' \( e \) ais \( |
      c, _\markup \italic "dimin." \) a' \( dis, \) a' \( c, \) a' \( dis, \) a' \( b, \) g' \( e \) g \( b, \) g' \( e \) g \( |
      a, \) fis' \( c \) fis \( g, \) e' \( cis \) e \( g, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( |
      fis, \pp \) dis' \( b \) dis \( g, \) e' \( b \) e \( fis, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( |
      fis, \) dis' \( b \) dis \( g, \) e' \( b \) e \( fis, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( |
      % 76
      fis, _\markup \italic "sempre più dim." \) dis' \( b \) dis \( dis, \) b' \( fis \) b \( b, \) fis' \( dis \) fis \( fis, \) dis' \( b \) dis \( |
      dis, \) b' \( fis \) b \( b, \) fis' \( dis \) \phrasingSlurUp fis \( \change Staff = "lower" \stemUp fis, \) dis' \( b \) dis \( dis, \) b' \( fis \) b \( |
      b, ^\markup \italic morend \) fis' \( dis \) fis \( b, \) fis' \( dis \) fis \( b, \) fis' \( dis \) fis \( b, \) fis' \( dis \) fis \( |
      b,8 \) s2.. |
      \change Staff = "upper"
      r2 r4 r8 r16 bes'' \pp |
      % 81
      <<
        {
          bes16 \( [ ees ] \)
        } \\
        {
          < ees, g >16~ [ < ees g > ]
        }
      >>
      r16
      <<
        {
          ees' \( [ g ] \)
        } \\
        {
          < g, bes >~ [ < g bes > ]
        }
      >>
      r16 r
      <<
        {
          g' g32 \( bes \) bes8.~ bes bes,16 | bes16 \( [ ees ] \)
        } \\
        {
          < bes ees > < bes ees > < bes ees >8.~ < bes ees > s16 | < ees, g bes >16~ [ < ees g bes > ]
        }
      >>
      r16
      <<
        {
          ees' \( [ g ] \)
        } \\
        {
          < g, bes >~ [ < g bes > ]
        }
      >>
      r16 r
      <<
        {
          g'32 \( bes \) bes32 \( ees \) ees8.~ ees \override Script.padding = #1.5 bes,16 \fermata _\markup { \whiteout \pad-markup #0.2 \left-column { \small "Semplice poco" "tenuto." } }
        } \\
        {
          < bes ees > < ees g > < ees g bes >8.~ < ees g bes > s16
        }
      >>
      \bar "||" \key ees \major \time 6/8
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % Left Hand
    \new Staff = "lower" \relative c,
    {
      \key b \major \BASS
      \TUTTI
      % 1
      < b b' >8 r8 r4 fis'8 r < b, b' > r |
      < e e' > r < cis cis' > r fis r r < e e' > |
      < dis dis' > r < d d' > r < cis cis' > r < fis, fis' > r |
      < b b' > r < dis dis' > r < fis fis' >2 |
      < ais, ais' >4 < fis fis' > < b b' > r8 < b b' > |
      % 6
      < ais ais' >4 < fis fis' > < b b' > r8 < b b' > |
      < b b' >4 \( < dis dis' > < gis, gis' > \) r |
      < gis' dis' gis > \( < fis fis' > < b fis' > \) r |
      < e, e' > \( < cis cis' > < b b' > \) < e e' > |
      \stemDown < fis fis' > \( \stemNeutral < fis, fis' > < gis gis' > \) r |
      % 11
      < e' e' > \( < cis cis' > < b b' > < e e' >8 < gis gis' > \) |
      < fis fis' >4 r < fis fis' > r |
      <<
        {
          \TUTTI
          b'4^ \< \( g \! fis4.^ \> ais8 \! \) |
          b4^ \< \( g \! fis4.^ \> ais8 \! \) |
          b4 r < fis b > r
        } \\
        {
          \TUTTI
          b,1 | b1 | b4 r b r
        } |
      >>
      % 16
      \SOLO
      \tuplet 3/2 4 { b,8 \sustainOn fis'' b dis, fis b dis, fis b dis, fis b } |
      \omit TupletNumber
      \tuplet 3/2 4 { dis, fis b dis, fis b dis, fis b dis, fis b \sustainOff } |
      \tuplet 3/2 4 { fis, \sustainOn fis' ais cis, fis ais cis, fis ais cis, fis ais } |
      \tuplet 3/2 4 { cis, fis ais cis, fis ais cis, fis ais cis, fis ais \sustainOff } |
      \tuplet 3/2 4 { b, fis' b b, fis' b e, gis b e, gis b } |
      % 21
      \tuplet 3/2 4 { cis, gis' cis cis, gis' cis fis, ais cis fis, ais cis } |
      \tuplet 3/2 4 { dis, ais' dis dis, ais' dis gis, b dis gis, b dis } |
      \tuplet 3/2 4 { gis, b eis gis, b eis gis, b cis gis b cis } |
      <<
        {
          \stemDown fis,4 d\rest d2\rest
        } \\
        {
          \stemUp \TUTTI \RSHIFT < fis ais >4 s2.
        }
      >> |
      R1 |
      % 26
      <<
        {
          \TUTTI
          fis4 \( eis fis \)
        } \\
        {
          \TUTTI
          fis4 \( cis fis, \)
        }
      >>
      r4 |
      <<
        {
          \TUTTI
          fis'4 fis \( g2 \)
        } \\
        {
          \TUTTI
          fis,4 \( b a2 \)
        }
      >> |
      \tuplet 3/2 4 { d,8 \sustainOn a'' d fis, a d fis, a d fis, a d } |
      \tuplet 3/2 4 { fis, a d fis, a d fis, a d fis, a fis \sustainOff } |
      \omit TupletNumber
      \tuplet 3/2 4 { \once \omit TupletBracket a, \sustainOn g' \( [ cis ] } \omit TupletNumber \tuplet 3/2 4 { e, g cis e, g cis e, g cis } |
      % 31
      \tuplet 3/2 4 { e, g cis e, g cis e, g cis e, g cis \sustainOff \) } |
      <<
        {
          \stemNeutral
          < d, d' >4 \( \stemUp \TUTTI < a' e' > < d! fis > \) r |
        } \\
        {
          s4 r r2 |
        }
      >> |
      \TUTTI \TREB
      < a d fis >4 \( < e' g > < fis a > \) r |
      < g, b > \( < a c > < g b d > \CRESC < gis b d e > \) |
      \SOLO \BASS
      <<
        {
          \set doubleSlurs = ##t
          < d' fis >4 \( \TREB \stemNeutral \dotsNeutral < e g >16 \) < fis a >_. < g b >_. < a cis >_. < b d >-. < cis e >-. < d fis >-. < e g >-. < fis a >-. < e g >-. < d fis >-. < g, e' >-. |
          \unset doubleSlurs
        } \\
        {
          \TUTTI \RSHIFT
          < a,, fis' a >4 s2.
        }
      >>
      % 36
      < fis'' d' >16-. < e cis' >-. < d b' >-. < cis a' >-. \BASS < b g' >-. < a fis' >-. < g e' >-. < fis d' >-. < e cis' >-. < b' d >-. < cis e >-. < d fis >-. \TREB < e g >-. < dis fis >-. < e g >-. < cis e >-. |
      < e g > < cis e > < e g > < dis fis > < e g > < dis fis > < e g > < cis e > < e g > < cis e > < e g > < dis fis > < e g > < dis fis > < e g > < cis e > |
      < e g > < cis e > < e g > < dis fis > < e g > < cis e > < e g > < dis fis > < e g >-. \( < cis e >-. < e g >-. < cis e >-. \) < e g >-. \( < cis e >-. < e g >-. < cis e >-. \) |
      <<
        {
          r4 \TREB < a cis e >8 r r4 \TREB < a c d fis >8 r |
          r \TREB < b d g > r \TREB < b d e gis > r \TREB < cis e a > r \TREB < cis e ais > |
          % 41
          r \TREB < d fis b > r4 r8 \TREB < d f b > r4 |
          r8 \TREB < e g c > r \TREB < e g cis > r \TREB < fis a d > r \TREB < fis a dis > |
          r8 \TREB < g b e > r4 r8 \TREB < gis b eis > r4 |
          r8 \TREB < b fis' > r4 r2 |
          \BASS \omit TupletNumber
          \tuplet 3/2 4 { fis,8 \( b dis \) fis, \( b dis \) fis, \( ais cis fis, b dis \) } |
          % 46
          \tuplet 3/2 4 { gis, b e gis, cis e fis, ais cis e, ais cis } |
          \tuplet 3/2 4 { dis, fis b d, fis b cis, gis' b fis ais cis } |
          \tuplet 3/2 4 { fis, b dis fis, b dis fis, ais cis fis, ais cis } |
          \tuplet 3/2 4 { fis, cis' e fis, cis' e fis, b dis fis, b dis } |
          \tuplet 3/2 4 { fis, cis' e fis, cis' e fis, b dis fis, b dis } |
          % 51
          \tuplet 3/2 4 { fis, b dis dis, ais' cis dis, gis b dis, gis b } |
          \tuplet 3/2 4 { dis, gis b fis ais cis fis, b dis fis, b dis } |
        } \\
        {
          \TUTTI \BASS < a a, >8 r r4 \BASS < d, d, >8 r r4 |
          \BASS < g d g, >8 r \BASS < e e, > r \BASS < a e a, > r \BASS < fis fis, > r |
          % 41
          \BASS < b fis b, > r r4 \BASS < g g, >8 r r4 |
          \BASS < c, c, >8 r \BASS < a a, > r \BASS < d d, > r \BASS < b b, > r |
          \BASS < e e, > r r4 \BASS < cis cis, >8 r r4 |
          \BASS < dis dis, >8 r r4 r2 |
          < b, b' >4 < b b' > < fis fis' > < b b' > |
          % 46
          < e e' > < cis cis' > \RSHIFT < fis fis' > r8 < e e' > |
          \RSHIFT < dis dis' >4 \RSHIFT < d \single \omit Accidental d' > \RSHIFT < cis cis' > \RSHIFT < fis fis' > |
          < b, b' > < dis dis' > \RSHIFT < fis fis' > r |
          < ais, ais' > < fis fis' > < b b' > r8 < b' fis' > |
          \RSHIFT < ais fis' >4 < fis, fis' > < b b' > r8 < b b' > |
          % 51
          < b b' >4 \RSHIFT < dis dis' > < gis, gis' > r |
          < gis' gis' > \RSHIFT < fis fis' > < b, b' > r |
        }
      >>
      \TUTTI
      \tuplet 3/2 4 { < e e' >8 b'' e < fis,, cis' > cis'' e < b,, b' > b'' dis < e,, e' > b'' e } |
      \tuplet 3/2 4 { < fis,, fis' > b' fis < fis, fis' > cis'' fis, }
      \SOLO \TREB
      <<
        {
          gis'16 \( dis b gis' g e cis g' \) |
          gis \( dis b gis' ais g e ais b fis dis fis dis' cis gis e' \) |
        } \\
        {
          gis,,4 g |
          gis ais b e |
        }
      >>
      < fis b dis >8 r r4 < fis cis' e >8 r r4 |
      R1 | R1 |
      <<
        {
          \stemNeutral
          r8 b16\rest < cis e > \( [ fis, ] \) b\rest b\rest < cis e > \( [ fis, ] \) b\rest b\rest < cis e > \( [ fis, ] \) < cis' e > \( fis, \) < cis' e > \( |
          \TREB
          fis,16 \) dis' \( b \) dis \( fis, \) dis' \( b \) dis \( fis, \) cis' \( ais \) cis \( fis, \) dis' \( b \) dis \( |
          % 61
          gis, \) e' \( b \) e \( gis, \) e' \( b \) e \( fis, \) cis' \( ais \) cis \( fis, \) cis' \( ais \) cis \( |
          fis, \) fis' \( b, \) fis' \( fis, \) fis' \( b, \) fis' \( gis, \) gis' \( b, \) gis' \( ais, \) ais' \( cis, \) ais' \( |
          b, \) b' \( dis, \) b' \( fis, \) dis' \( b \) dis \( fis, \) cis' \( ais \) cis \( fis, \) cis' \( ais \) cis \( |
          fis, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( fis, \) dis' \( b \) dis \( fis, \) dis' \( b \) dis \( |
          fis, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( fis, \) dis' \( b \) dis \( fis, \) dis' \( b \) dis \( |
          % 66
          fis, \) dis' \( b \) dis \( g, \) dis' \( ais \) dis \( gis, \) dis' \( b \) dis \( gis, \) dis' \( b \) dis \( |
          gis, \) dis' \( b \) dis \( ais \) fis' \( cis \) fis \( b, \) fis' \( dis \) b \( fis \) dis \( b \) dis \( |
          b \) gis' \( e \) gis \( cis, \) ais' \( fis \) ais \( dis, \) b' \( fis \) b \( gis \) b \( gis \) e' \( |
          fis, \) dis' \( b \) dis \( fis, \) e' \( cis \) e \( gis, \) dis' \( b \) dis \( gis, \) dis' \( b \) dis \( |
          gis, \) dis' \( b \) dis \( ais \) fis' \( cis \) fis \( b, \) fis' \( dis \) fis \( b, \) gis' \( e \) gis \( |
          % 71
          b, \) fis' \( dis \) fis \( b, \) b' \( dis, \) b' \( cis, \) ais' \( e \) ais \( cis, \) ais' \( e \) ais \( |
          c, \) a' \( dis, \) a' \( c, \) a' \( dis, \) a' \( b, \) g' \( e \) g \( b, \) g' \( e \) g \( |
          a, \) fis' \( c \) fis \( g, \) e' \( cis \) e \( g, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( |
          fis, \) dis' \( b \) dis \( g, \) e' \( b \) e \( fis, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( |
          fis, \) dis' \( b \) dis \( g, \) e' \( b \) e \( fis, \) e' \( cis \) e \( fis, \) e' \( cis \) e \( |
          % 76
          fis, \sustainOn \) dis' \( b \) dis \( dis, \) b' \( fis \) b \( b, \) fis' \( dis \) \phrasingSlurDown fis \( \BASS fis, \) \phrasingSlurNeutral dis' \( b \) dis \( |
          dis, \) b' \( fis \) b \( b, \) fis' \( dis \) \phrasingSlurDown fis \( \stemDown fis, \) dis' \( b \) dis \( dis, \) b' \( fis \) b \( |
          b, \) fis' \( dis \) fis \( b, \) fis' \( dis \) fis \( b, \) fis' \( dis \) fis \( b, \) fis' \( dis \) fis \( |
          b,8 \) r8 \sustainOff r4 r2
        } \\
        {
          \TUTTI
          < cis''' e >1 |
          s1 * 19 |
          \SOLO
          s8 r8 r4 r2
        }
      >> |
      \TUTTI
      < bes,, bes' >1 ^\pp |
      \SOLO
      % 81
      ees,16 \sustainOn r r < bes' ees g bes >~ [ < bes ees g bes > ] r r < bes ees g bes > < bes ees g bes > < bes ees g bes >8.~ < bes ees g bes > r16 |
      ees,16 r r < ees' g bes ees >~ [ < ees g bes ees > ] r r < ees g bes ees > < ees g bes ees > < ees g bes ees >8.~ < ees g bes ees > r16 \fermata \sustainOff _\markup { \halign #-2 \italic \left-column { "attacca" "il Rondo" } }
      \bar "||" \key ees \major \time 6/8
    }
  >>
  \layout
  {
    \context
    {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 8)
    }
  }
  % \midi {}
}
