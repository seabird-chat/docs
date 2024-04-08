# seabird-discord-backend

[![Static Badge](https://img.shields.io/badge/repository-blue?logo=git&label=%20&labelColor=grey&color=blue)](https://github.com/seabird-chat/seabird-discord-backend)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/seabird-chat/seabird-core/docker-publish.yml)](https://github.com/seabird-chat/seabird-discord-backend/actions/workflows/docker-publish.yml)

## Dependencies

- `seabird-core`

## Configuration

### Environment Variables

{{#include _common_backend_settings.md}}

Discord-specific settings

- `DISCORD_TOKEN` (required) - Both an
  [application](https://discord.com/developers/docs/quick-start/getting-started)
  and a [bot user](https://discord.com/developers/docs/topics/oauth2#bot-users)
  must be set up in Discord, and connected to the relevant Discord server by an
  admin on that server. The correct OAuth URL has been lost to time, but make
  sure priviledged intents (presence, server members, and message content) are
  enabled. Note that tokens must be prefixed with `Bot ` in order for Discord to
  use them as a bot token.
- `DISCORD_COMMAND_PREFIX` (optional, defaults to `!`)
- `DISCORD_CHANNEL_MAP` (optional, defaults to empty) - a comma separated list
  of Discord voice channels, followed by a `:` and then a channel which should
  be notified when someone joins.

## Known Issues

- There is not true Discord "command" support, so all commands need to be
  prefixed by the `DISCORD_COMMAND_PREFIX` setting.
