# seabird-adventofcode-plugin

[![Static Badge](https://img.shields.io/badge/repository-blue?logo=git&label=%20&labelColor=grey&color=blue)](https://github.com/seabird-chat/seabird-adventofcode-plugin)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/seabird-chat/seabird-adventofcode-plugin/docker-publish.yml)](https://github.com/seabird-chat/seabird-adventofcode-plugin/actions/workflows/docker-publish.yml)

## Dependencies

- `seabird-core`

## Configuration

### Environment Variables

{{#include _common_plugin_settings.md}}

Advent of Code-specific settings

- `AOC_SESSION` (required) - the session cookie, usually manually obtained from
  a valid login. This must be updated once monthly to ensure it continues to
  work.
- `AOC_LEADERBOARD` (required) - leaderboard ID from Advent of Code to report
  updates from. Note that the user the bot is logged in as must be joined to the
  leaderboard.
- `AOC_CHANNEL` (required) - the ID of the seabird channel which notifications
  should be sent to.
- `TIMESTAMP_FILE` (optional, defaults to `./aoc_timestamp.txt`) - path to the
  file which is used to track the last timestamp we've processed from AOC.
