# Release notes

## Version 1.0.0-beta.4

Released: 2016-04-27

Breaking changes:

* Property `result.shortMessage` has been removed, and `result.fullMessage` has been renamed to simply `result.message`.
There is no longer a distinction between "short" and "full" messages.

* The property `run.invocation`, which was previously a string containing the command line parameters with which the tool was invoked,
is now an object of type `invocation`.
The `invocation` object contains a property `parameters` which contains the string previously stored in `run.invocation`.
Several properties formerly stored in the `run` object have been pushed down into the `invocation` object:
    * `architecture`
    * `correlationId`
    * `endTime`
    * `startTime`

    The `invocation` object also contains the following new properties:
    * `account`
    * `environmentVariables`
    * `fileName`
    * `machine`
    * `processId`
    * `workingDirectory`
    
    as well as `tags` and `properties`.
    
    Note that some of these properties can disclose sensitive information about the machine, so use caution when populating them,
    and consider redacting sensitive information from them.
    
* The property `result.formattedMessage` has been renamed to `result.formattedRuleMessage`.

* The property `result.kind` has been renamed to `result.level`.

* The array of `result` objects in the property `run.results` no longer contains information intended for the developers
who wrote the analysis tool or for the build engineers who configured the tool.
Instead, messages intended for tool developers are stored in the new property `run.toolNotifications`,
and messages intended for build engineers are stored in the new property `run.configurationNotifications`,
both of which contain arrays of a newly introduced `notification` object.

* As a result of the introduction of the `result.toolNotifications` and `result.configurationNotifications` properties,
the strings `"internalError"` and `"configurationError"` are no longer valid values for `result.level`
(the property formerly named `result.kind`).
Messages that would formerly have been `result` objects with `kind` = `"internalError"`
are now represented as `notification` objects stored in `run.toolNotifications`,
and messages that would formerly have been `result` objects with `kind` = `"configurationError"`
are now represented as `notification` objects stored in `run.configurationNotifications`.
