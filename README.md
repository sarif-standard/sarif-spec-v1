# **This repository is frozen**

The specification in this repository documents SARIF v1.0.0.

SARIF is now undergoing standardization by the [OASIS Static Analysis Results Interchange Format (SARIF) TC](https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=sarif), which will release its first public version as SARIF v2.0.0.

# sarif-spec

This repo contains the draft of the specification document for the Static Analysis Results Interchange Format (SARIF).
The current HTML is always available [here](https://rawgit.com/sarif-standard/sarif-spec/master/Static%20Analysis%20Results%20Interchange%20Format%20(SARIF).html).

## Please read the license

Please read the LICENSE file in the repo root directory, which explains the conditions for participating in the review of this draft specification.

## Document source format

This document is written in [Madoko](https://www.madoko.net/),
a superset of [Markdown](http://daringfireball.net/projects/markdown/)
capable of producing high-quality technical documents,
complete with numbering and cross-referencing
(and mathematics, too, although we don't use that).
This will make diffing changes between versions much easier than if the draft were written in
a binary format such as .doc,
and easier than if it were written in a more verbose text format such as HTML.

Before you edit the document, please consult the
[Madoko reference](http://research.microsoft.com/en-us/um/people/daan/madoko/doc/reference.html).

## Generated HTML

Madoko is capable of generating output in HTML and PDF formats.
In addition to the Madoko source files, the generated HTML is also checked in to the repo.
If you modify the source files, you must regenerate and commit the HTML.
**Never edit the HTML file directly.**

### Viewing the HTML

To view the generated HTML document:

1. Clone this repo.

1. Open the file "Static Analysis Results Interchange Format (SARIF).html".

### Regenerating the HTML

To regenerate the HTML document:

1. Madoko runs under nodejs, so install [nodejs](http://nodejs.org/) on your system, and then add it to your PATH.

1. Use the npm package manager to install Madoko:

    `npm install madoko@0.9.2-beta -g`

    NOTE: The instructions in the Madoko reference do not specify a version number. But if you omit the version number, npm will give the error message

    `npm ERR! notarget No compatible version found: madoko@'*'`

1. Change to your repo root directory, and then run the Windows command file `build.cmd` without arguments. This will regenerate the file "Static Analysis Results Interchange Format (SARIF).html" in the repo root directory.

1. Don't forget to add the regenerated HTML file to your commit.
