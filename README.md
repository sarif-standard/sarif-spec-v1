# sarif-spec
This repo contains an early draft of the specification document for the Static Analysis Results Interchange Format (SARIF).

## Please read the license

Please read the LICENSE file in the repo root directory, which explains the conditions for participating in the review of this draft specification.

## Document source format

This document is written in [Madoko](https://www.madoko.net/), a superset of [Markdown](http://daringfireball.net/projects/markdown/) capable of producing high-quality technical documents, complete with numbering and cross-referencing (and mathematics, too, although we don't use that). This will make diffing changes between versions much easier than if the draft were written in a binary format such as .doc, and easier than if it were written in a more verbose text format such as HTML.

Before you edit the document, please consult the [Madoko reference](http://research.microsoft.com/en-us/um/people/daan/madoko/doc/reference.html).

## Generated HTML

Madoko is capable of generating output in HTML and PDF formats. In addition to the Madoko source files, the generated HTML is also checked in to the repo. If you modify the source files, please regenerate and commit the HTML, as follows:

1. Madoko runs under nodejs, so install [nodejs](http://nodejs.org/) on your system, and then add it to your PATH.

1. Use the npm package manager to install Madoko:

    `npm install madoko@0.9.2-beta -g`

    NOTE: The instructions in the Madoko reference do not specify a version number. But if you omit the version number, npm will give the error message

    `npm ERR! notarget No compatible version found: madoko@'*'`

1. Change to your repo root directory, and then run the Windows command file `build.cmd` without arguments. This will regenerate the file "Static Analysis Results Interchange Format (SARIF).html" in the repo root directory.

1. Don't forget to add the regenerated HTML file to your commit.


## ISO format

ISO supplies a Microsoft Word template for their specifications. Before we submit SARIF to ISO, we will transfer the content to their template. 