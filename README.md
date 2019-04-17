# Polytextum

Generate articles and reports from markdown files using Pandoc and LaTeX.

## A note on fonts

The fonts used throughout Polytextum are not included. To use Polytextum, you
must sync the required fonts from [Adobe Fonts](https://fonts.adobe.com).

Make sure you have successfully synced all styles of these fonts:

- [Minion 3](https://minion.typekit.com) ([Regular](https://fonts.adobe.com/fonts/minion-3),
  [Display](https://fonts.adobe.com/fonts/minion-3-display), [Caption](https://fonts.adobe.com/fonts/minion-3-caption), and [Subhead](https://fonts.adobe.com/fonts/minion-3-subhead))
- [Fira Mono](https://fonts.adobe.com/fonts/fira-mono)

## Quick start

1. Clone this repository to `XDG_DATA_HOME` (defaults to `$HOME/.local/share`):

       git clone https://github.com/arzg/polytextum.git ${XDG_DATA_HOME:-$HOME/.local/share}/polytextum

1. Place the `polytextum` executable somewhere in your path.
1. Run `bash ${XDG_DATA_HOME:-$HOME/.local/share}/polytextum/scripts/link.sh` to link all the necessary files into place
1. Run `bash ${XDG_DATA_HOME:-$HOME/.local/share}/polytextum/scripts/installfonts.sh` to copy all of Adobe Fonts’ files
   into a cache
1. Start using Polytextum!

## Usage

To run Polytextum on a given markdown file run

    pt article yourfile.md

for an article, and this

    pt report yourfile.md

for a report.

Note that the difference between a report and an article is that articles can
have two levels of headings, and that reports can have three (the top level is
turned into a chapter). Reports also have title pages and tables of contents.
