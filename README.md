# CDE Examples

These are makefiles for the [CDE](https://sourceforge.net/projects/cdesktopenv/) examples. They are intended to augment the existing HP, IBM and SUN ones.

The makefiles can be used in a workspace and will refer back to the original source by CDE_INSTALLATION_TOP.

The makefiles are deliberately simple and only use MAKE and CC to perform the builds.

One goal behind these is to capture the binary contract that the toolkit exposes. It verifies the ELF NEEDED references that are captured as part of the build process.

A practical use for these is to perform a build of the examples on an earlier version of the install, upgrade to a later one, and confirm that the earlier built binaries still work,

The sequence for this would be

- install version of CDE, eg from tagged imake release 2.3.2 or 2.4.0

- build the examples and confirm the build completes succesfully

- run the "make test" to verify the ELF NEEDED records.

- test that a selection such as dtwidget and dtdnd function.

- remove existing CDE

- install new version based on automake

- repeat the test without recompilation, confirming that the old programs have not broken

- recompile the examples using the new installation

- run the "make test" to verify that the ELF NEEDED records are still the same

- repeat sequence for each supported platform

If there are differences between the new version then confirm that the binary contract can be maintained with symbolic links to the libraries.
