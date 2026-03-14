#!/usr/bin/env bash
set -e

PROJECT="schlager-songs"

mkdir -p "$PROJECT"/{songs,ideas,demos/{midi,rough},artwork/{covers,promo},templates}

cat > "$PROJECT/README.md" <<'EOF'
# Project Schlager

Duitstalig schlagerproject met Tiroler knipoog.

## Doel
- Minimaal 20 songs schrijven en uitwerken
- Over-the-top, meezingbaar, feest + romantiek
- Duits, met après-ski / Tirol sfeer

## Songstatus
Gebruik per songmap:
- lyrics.md
- chords.md
- notes.md
- assets/
EOF

cat > "$PROJECT/templates/song-template.md" <<'EOF'
# [Song Title]

## Concept
[Korte beschrijving van sfeer / thema]

## Hook
[De kernzin van het nummer]

## Verse 1

## Pre-Chorus

## Chorus

## Verse 2

## Bridge

## Notes
- BPM:
- Key:
- Vibe:
- Referenties:
EOF

cat > "$PROJECT/templates/release-checklist.md" <<'EOF'
# Release Checklist

- Titel definitief
- Lyrics final
- Chords / arrangement final
- Demo gemaakt
- Final mix
- Artwork
- Metadata
- Distributie
EOF

cat > "$PROJECT/ideas/song-ideas.md" <<'EOF'
# Song Ideas

- Bier
- Bergen
- Liefde
- Après-ski
- Drama
- Heimwee
EOF

cat > "$PROJECT/ideas/chorus-ideas.md" <<'EOF'
# Chorus Ideas

- Grote meezing-hooks
- Simpele Duitse zinnen
- Over-the-top romantiek
EOF

cat > "$PROJECT/ideas/themes.md" <<'EOF'
# Themes

- Feest
- Romantiek
- Humor
- Tirol
EOF

for i in $(seq -w 1 20); do
  SONG_DIR="$PROJECT/songs/${i}-song-title"
  mkdir -p "$SONG_DIR/assets"

  cat > "$SONG_DIR/lyrics.md" <<EOF
# Song ${i}

## Verse 1

## Pre-Chorus

## Chorus

## Verse 2

## Bridge
EOF

  cat > "$SONG_DIR/chords.md" <<EOF
# Chords - Song ${i}

## Key
TBD

## BPM
TBD

## Progression
TBD
EOF

  cat > "$SONG_DIR/notes.md" <<EOF
# Notes - Song ${i}

- Thema:
- Vibe:
- Referenties:
- Productie-ideeën:
EOF

  touch "$SONG_DIR/assets/.gitkeep"
done

touch "$PROJECT/demos/midi/.gitkeep"
touch "$PROJECT/demos/rough/.gitkeep"
touch "$PROJECT/artwork/covers/.gitkeep"
touch "$PROJECT/artwork/promo/.gitkeep"

echo "Project structure created in: $PROJECT"
