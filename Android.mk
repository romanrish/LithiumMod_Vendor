# We need a way to prevent the stuff Google Apps replaces from being included in the build.
# This is a hacky way to do that.
PACKAGES.Email.OVERRIDES := Provision LatinIME QuickSearchBox

ifndef DEFAULT_LAUNCHER
    PACKAGES.ADWLauncher.OVERRIDES := Launcher Launcher2
endif
