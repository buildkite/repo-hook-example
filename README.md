# Buildkite Pre-Command Environment Example

[![Build status](https://badge.buildkite.com/41e2fa5a6bd3ef5964a2b60076bfd03dd760112dcaca3de1c2.svg?branch=main)](https://buildkite.com/buildkite/repo-hook-example)
[![Add to Buildkite](https://img.shields.io/badge/Add%20to%20Buildkite-14CC80)](https://buildkite.com/new)

This repository is an example Buildkite pipeline that demonstrates how environment variables can be set through a [repository hook](https://buildkite.com/docs/agent/v3/hooks).

👉 **See this example in action:** [buildkite/repo-hook-example](https://buildkite.com/buildkite/repo-hook-example/builds/latest)

See the full [Getting Started Guide](https://buildkite.com/docs/guides/getting-started) for step-by-step instructions on how to get this running, or try it yourself:

[![Add to Buildkite](https://buildkite.com/button.svg)](https://buildkite.com/new)

<a href="https://buildkite.com/buildkite/repo-hook-example/builds/latest?branch=main">
  <img width="2400" alt="Screenshot of example pipeline build page" src=".buildkite/screenshot.png" />
</a>

## Files in this repository:

| File | Description |
| --- | --- |
| `.buildkite/hooks/pre-command` | A hook that sets `$GIT_SHORT_HASH` at runtime for each job |
| `.buildkite/pipeline.yml` | A Buildkite pipeline defined in YAML |
| `check_environment_var.sh` | A script that uses an environment variable set by the `pre-command` hook |
| `.buildkite/template.yml` | Not functional, only used for the "Add to Buildkite" button above |


## Notes

- Environment vars are scoped to a job context and cleaned up to prevent polluting other job contexts.
- The environment var exported by `pre-command` in this example is calculated every time a job in this pipeline is run.
- If the environment variable was expensive to calculate or non-deterministic, you might want to consider only calculating it during the pipeline upload step and setting the `env` inside the pipeline.yml

## License

See [LICENSE](LICENSE) (MIT)
