# Buildkite Pre-Command Environment Example
[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

This repository is an example Buildkite pipeline that demonstrates how environment variables can be set through a [repository hook](https://buildkite.com/docs/agent/v3/hooks).

### Files in this repository:
| File | Description |
| --- | --- |
| `.buildkite/hooks/pre-command` | A hook that sets `$GIT_SHORT_HASH` at runtime for each job |
| `.buildkite/pipeline.yml` | A Buildkite pipeline defined in YAML |
| `check_environment_var.sh` | A script that uses an environment variable set by the `pre-command` hook |
| `.buildkite/template.yml` | Not functional, only used for the "Add to Buildkite" button above |


### Notes
- Environment vars are scoped to a job context and cleaned up to prevent polluting other job contexts.
- The environment var exported by `pre-command` in this example is calculated every time a job in this pipeline is run.
- If the environment variable was expensive to calculate or non-deterministic, you might want to consider only calculating it during the pipeline upload step and setting the `env` inside the pipeline.yml
