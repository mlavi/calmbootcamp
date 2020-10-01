# Evaluation Script for Udacity HCE Student Blueprints

Please use this script to evaluate student blueprints.

Workflow:

- Clone this repo
- Obtain exported Nutanix Calm blueprint.

  This blueprint must be exported from the Nutanix Calm UI and not decompiled using the Calm DSL.

## Script Usage

Script help:

    Usage: eval.bash [ARGS]

    Args:
      -h  Show this help and exit.
      -d  Location of user blueprints
      -b  Blueprint name to evaluate
      -c  Evaluation criteria file to use for comparison

    Note:
      -b  value can be "all", to batch process all JSON blueprints in the specified directory

    Examples:
      eval.bash -c eval.json -d ~/blueprints -b blueprint1
      eval.bash -c eval.json -d . -b all
