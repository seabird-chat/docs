# seabird-proxy-plugin

[![Static Badge](https://img.shields.io/badge/repository-blue?logo=git&label=%20&labelColor=grey&color=blue)](https://github.com/seabird-chat/seabird-proxy-plugin)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/seabird-chat/seabird-proxy-plugin/docker-publish.yml)](https://github.com/seabird-chat/seabird-proxy-plugin/actions/workflows/docker-publish.yml)

## Dependencies

- `seabird-core`

## Configuration

### Environment Variables

- `PROXY_CONFIG_FILE` (required) - path to the config file for the plugin
- `RUST_LOG` (optional, defaults to `info,seabird-proxy-plugin=debug`) - this is
  a common rust environment variable documented here because we set a default.
  All seabird functionality is exposed under `seabird`.

### Config File

The config file is a list of proxied channels, each containing the following
structure:

- `source` (required) - the Seabird Channel ID messages should be copied from
- `target` (required) - the Seabird Channel ID messages should be copied to
- `user_prefix` - a raw string to insert before the username in proxied messages
- `user_suffix` - a raw string to insert between the username and text in
  proxied messages

Note that we use `source` and `target` rather than `linked_channels` or
something similar. This is to allow configuring the `user_prefix` and
`user_suffix` on a per-target-channel basis.

A few helpful `user_prefix`/`user_suffix` combinations:

``` yaml
# Discord target
user_prefix: "**"
user_suffix: " (Source Name)**"

# IRC target
user_prefix: "\u0002"
user_suffix: "[source name]\u000f"

# Minecraft target
user_prefix: ""
user_suffix: " (Source Name)"
```

### Runtime Config Updates

In order to force the config to reload, send a `SIGHUP` to the
`seabird-proxy-plugin` process.
