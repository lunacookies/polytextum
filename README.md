# Polytextum

Generate articles and reports from markdown files using Pandoc and LaTeX.

## A note on fonts

The fonts used throughout Polytextum are not included. To use Polytextum, you
must sync the required fonts from [Adobe Fonts](https://fonts.adobe.com).

Make sure you have successfully synced all styles of these fonts:

- [Arno](https://fonts.adobe.com/fonts/arno)
- [Scala Sans](https://fonts.adobe.com/fonts/ff-scala-sans)
- [Nexus Typewriter](https://fonts.adobe.com/fonts/ff-nexus-typewriter)

## Quick start

1. Clone this repository to `~/.polytextum`:

       git clone https://github.com/arzg/polytextum.git ~/.polytextum

1. Place the `polytextum` executable somewhere in your path.
1. Run `bash ~/.polytextum/link.sh` to link all the necessary files into place
1. Run `bash ~/.polytextum/installfonts.sh` to copy all of Adobe Fonts’ files
   into a cache
1. Start using Polytextum!

## Usage

To run Polytextum on a given markdown file run

    polytextum article yourfile.md

for an article, and this

    polytextum report yourfile.md

for a report.

Note that the difference between a report and an article is that articles can
have two levels of headings, and that reports can have three (the top level is
turned into a chapter). Reports also have title pages and tables of contents.
