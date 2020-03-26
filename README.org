# brazilian-holidays

This package adds Brazilian public holidays to the Emacs calendar.

If you have `org-agenda-include-diary` set to `t`, these will be also listed in
the `org-agenda` view.

This package will soon be available in the MAPLE repository.

## Installation

To install this package, clone this repository, add it to `load-path`, and add
`(require 'brazilian-holidays)` to `.emacs` or `init.el`.

## Configuration

To include State holidays, change the desired state variable to a non-nil
value. For example `(setq brazilian-rj-holidays t)` for the Rio de Janeiro
State, multiples States could be set.

## Constraits

At this moment, only RJ and SP States are available.
