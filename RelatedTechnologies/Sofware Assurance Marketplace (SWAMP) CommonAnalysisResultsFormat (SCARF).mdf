Format Description
==================
The Software Assurance Marketplace (SWAMP) effort was established to assist in the process of integrating software assurance processes into a continous assurance process. Software assurance includes many activities; SWAMP has a particular focus on automating and integrating multiple static code analysis (SCA) tools. The Swamp Common Assessment Result Format (SCARF) specifies a common format to hold results produced by any SCA tooling integrated within SWAMP.

References
==========
* [Software Assurance Marketplace (SWAMP) web site](https://continuousassurance.org/)
* [SCARF output format description](https://github.com/mirswamp/swamp-scarf-io/blob/master/docs/SCARF.pdf)

Similar/Identical Concepts
==========================
* Tool name and version.
* A correlation uuid that identifies a tool run.
* Method and function names used to locate results.
* Bug severity.
* Bug messages.
* A 'primary' property that denotes if a location represents the primary function where a bug is reported. This concept is implicit in SARIF: the primary location of a SARIF result marks the primary function, and one or more 'related' locations can be used to point to other places of interest.
* The standard elements of a location, file, start and end line, start and end column, are identical between SCARF and SWAMP.
* The SCARF location 'explanation' brings it into close conformance to the SARIF 'annotated code location' construct.

Concepts Not Covered by SARIF
=============================
* Bug group. The bug group relates closely to the historical SARIF conversations around categorizing individual results.
* Bug rank. A tool-provided rank. This property has been considered and previously rejected for SARIF.
* CWE. The Common Weakness Enumeration (CWE) categorization for a result. This property has been requested for SARIF previously and rejected on the basis of providing value for security-relevant defects only, in the main. In practice, CWE categorization is typical for both commercial and open source tooling.
* Resolution. SCARF proposes to break apart guidance to resolve in its own property. This approach conforms to an internal Microsoft tool output standard that defines three salient pieces of information for a comprehensive tool message, 1) a clear description of the state or conditions that provoked a result, 2) a summary of outcomes and possible risk associated with the problem, if a true positive, 3) the range of possible responses to resolve.
* SCARF defines several properties that correlate the converted SCARF result to the original version provided in a tool's native output format. SARIF was designed for direct results production first, with conversion from existing formats as an important but secondary concern, and this concept was overlooked.
* Bug summaries. SCARF defines an XML section to hold summaries of bug metrics (counts, etc.) by bug type.
* Metrics summaries. SCARF defines a general metrics section to hold sum, min, max, standard deviation, etc.


Open Questions
==============
* Are the contents of things like bug rank clearly specified or a placeholder for arbitrary content?
* Can we locate more detail on the following:
```
1. Metrics
2. Bug trace element
3. Bug code
4. Valid severity values
```

Action Items
================================================
```
1. +1 to document prior thinking on severity, categories, rank
2. Review SARIF message output guidance; consider breaking apart 'observed state', 'implied risk', 'actions to resolve'
3. Consider data allowing association of converted SARIF to results in original format
```