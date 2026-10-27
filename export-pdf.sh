#!/usr/bin/env bash
# Regenerate the PDFs from the HTML pages using headless Chrome.
# Usage: ./export-pdf.sh   (override the browser with CHROME=/path/to/chrome)
set -euo pipefail
cd "$(dirname "$0")"

CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"

export_pdf() {
  "$CHROME" --headless --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$2" "file://$PWD/$1" 2>/dev/null
  echo "$1 -> $2"
}

export_pdf index.html cv-bastien-dumont-software-engineer-en.pdf
export_pdf fr.html cv-bastien-dumont-developpeur-full-stack-fr.pdf
