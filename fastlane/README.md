fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios custom_lane

```sh
[bundle exec] fastlane ios custom_lane
```

Description of what the lane does

----


## Android

### android test

```sh
[bundle exec] fastlane android test
```

Runs all the tests

### android increment_vc

```sh
[bundle exec] fastlane android increment_vc
```

Increment version code

### android build

```sh
[bundle exec] fastlane android build
```

Create and sign a new build

### android beta

```sh
[bundle exec] fastlane android beta
```

Submit a new Beta Build to the Google Play store

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
