# CV — Bastien Dumont

Plain HTML/CSS résumé, one A4 page, in English and French.

| File         | Purpose                                                  |
| ------------ | -------------------------------------------------------- |
| `index.html` | English version                                          |
| `fr.html`    | French version                                           |
| `style.css`  | Shared layout and design tokens (change `--accent` here) |
| `photo.jpg`  | Portrait                                                 |
| `favicon.svg`, `favicon-32.png`, `apple-touch-icon.png` | Browser tab and iOS home-screen icons ("BD" monogram, same blue as `--accent`) |
| `export-pdf.sh` | Regenerates the two PDFs from the HTML pages          |

## Export to PDF

```sh
./export-pdf.sh
```

This prints `index.html` and `fr.html` to `cv-bastien-dumont-software-engineer-en.pdf` and `cv-bastien-dumont-developpeur-full-stack-fr.pdf` with headless Chrome (macOS path by default; set `CHROME=/path/to/chrome` elsewhere). Re-run it and commit the PDFs after any change to the HTML or CSS.

The print layout comes from the stylesheet: `@page` sets A4 with no margin, `print-color-adjust: exact` keeps the backgrounds, and the EN/FR switch is hidden. Links stay clickable in the PDF.

By hand, the equivalent is Chrome → Print → Save as PDF with **Margins: None** and **Background graphics** on.
