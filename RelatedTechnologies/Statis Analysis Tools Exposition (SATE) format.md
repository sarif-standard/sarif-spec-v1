Format Description
==================
The Static Analysis Tools Exposition (SATE) is a conference convened by the NIST Software Assurance Metrics And Tool Evaluation (SAMATE) project. Among other analyses and reports on the state of static analysis, the SATE conference typically includes a comparison of industry and open source tool results produced against a common test suite. The SATE format is an XML format defined to captures data provided by most tools in a way that allows these results to be evaluated individually and compared to each other. This analysis generates various insights into degrees of analysis overlap, general effectiveness of industry and open-source checkers against classes of security problem, etc.
References
==========
* [SATE output format summary](https://samate.nist.gov/SATE5.html#SATE_output_format)
* Detailed SATE output description from [SATE IV ](https://samate.nist.gov/docs/NIST_Special_Publication_500-297.pdf)
* [SATE format XSD](https://samate.nist.gov/SATE5/resources/sate5.pathcheck.xsd)

Similar/Identical Concepts
==========================
* Tool and rule ids.
* Paths or traces through functions.
* One or more locations associated with a result, including line and file path.
* Severity. SARIF reduces severities to error and warning. SATE format assigns a scale of 1 to 5. Difficulty normalizing tool severity is a topic that has been much discussed in SARIF efforts to-date.
* Result text. SATE format specifies that this content may be rendered in plain-text, HTML or XML.
* SATE format defines a mechanism for commenting results (that differs in some ways from SARIF annotations).
* A SATE format ‘fragment’ is essentially identical to a SARIF ‘snippet’. There is a commenting mechanism that is directly analogous to the SARIF snippet annotation scheme.
* SATE format and SARIF define mechanisms for identifying sources of untrusted data and dangerous sinks. SARIF further defines a mechanism to identify a sanitizer. SATE format defines a ‘fix’ for a taint analysis result, that identifies an appropriate location to apply sanitization.
 

Concepts Not Covered by SARIF
=============================
* CWE. SATE format provides an explicit placeholder for CWE data.
* SATE format defines a bucketing mechanism to categorize checks (via a ‘Name’ property). The issue of providing a categorization scheme has been a frequent topic of discussion in prior SARIF work.
* Probability. SATE format specifies a probability, from 0 to 1, that the result is a true positive. This property has been considered and rejected from SARIF in previous discussion.
* Tool-specific rank. This SATE format property allows for a per-tool ranking designation (that can’t be normalized to the standard ‘Probability’ convention).
* SATE format explicitly provides for annotating results with human reviewer comments, including general notes and a true vs. false positive designation. These properties have been considered for SARIF previously but deferred as relevant to a broader results management design initiative.
* SATE format defines a per-result unique warning id (UID) that allows an individual result to be identified across all other current and future reports.
* Association list and degree of association. SATE format UIDs can be referenced in a result association list to identify issues that relate to each in some way (e.g., via chaining).

Action Items
================================================
```
1. Create FAQ on previous thinking on severity and create a work item to discuss in context of the TC
2. Create proposal on categories, per recent discussion.
3. Capture list of properties considered previously and rejected, including a general philosophy around what properties warrant elevation to a first-class property (as opposed to an element in the property bag or tags element). This list will include a single ‘category’ property, ‘probability’ and ‘rank’.
4. Discuss whether CWE (or an array of CWEs) should be a result member.
5. Capture previous thinking on rejecting properties related to results management and validate decision.
6. Consider adding ability to associate results with others.
```
