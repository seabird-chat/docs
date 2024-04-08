# seabird-irc-backend

[![Static Badge](https://img.shields.io/badge/repository-blue?logo=git&label=%20&labelColor=grey&color=blue)](https://github.com/seabird-chat/seabird-irc-backend)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/seabird-chat/seabird-core/docker-publish.yml)](https://github.com/seabird-chat/seabird-irc-backend/actions/workflows/docker-publish.yml)

## Dependencies

- `seabird-core`

## Configuration

### Environment Variables

Common settings

<!-- {{#include _common_backend_settings.md}} -->

- `SEABIRD_HOST` (required) - this is the URL of the `seabird-core` instance.
  Most users should use `https://core.seabird.chat`
- `SEABIRD_TOKEN` (required) - the seabird token


IRC-specific settings

- `IRC_ID` (optional, defaults to `seabird`) - internal "id" of the backend,
  used for identification purposes. This must be unique between backends. It may
  be dropped or ignored in future versions of the seabird APIs. This is known as
  `SEABIRD_ID` in many other plugins.
- `IRC_HOST` (required) - URL of the IRC server to connect to. Supported schemes
  are `irc`, `ircs`, and `ircs+unsafe`. The port will default to 6667 for `irc`
  and 6697 for `ircs`.
- `IRC_PASS` (optional) - password for connecting to the IRC server.
- `IRC_NICKSERV_PASS` (optional) - password which is sent to NickServ along with
  the "identify" command when connected.
- `IRC_CHANNELS` (optional) - a comma-separated list of channels to join on
  connection.
- `IRC_NICK` (required) - the IRC nickname of the bot user
- `IRC_USER` (optional, defaults to the value of `IRC_NICK`) - the IRC username
  reported to the server for the bot.
- `IRC_NAME` (optional, defaults to the value of `IRC_USER`) - the full name
  reported to the IRC server for the bot user.
- `IRC_DEBUG` (optional, defaults to `false`) - enable internal IRC debug
  logging.
- `IRC_COMMAND_PREFIX` (optional, defaults to `!`)
- `NICK_CHECK_DURATION` (optional, defaults to `1m`) - how frequently to try and
  re-claim the bot user's target nick.
