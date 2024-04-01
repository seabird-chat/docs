# seabird-core

[![Static Badge](https://img.shields.io/badge/repository-blue?logo=git&label=%20&labelColor=grey&color=blue)](https://github.com/seabird-chat/seabird-core)
[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/seabird-chat/seabird-core/docker-publish.yml)](https://github.com/seabird-chat/seabird-core/actions/workflows/docker-publish.yml)

## Configuration

### Environment Variables

- `DATABASE_URL` (required) - where to place the sqlite database seabird-core
  will use. This should be in a URL format, so `sqlite:tokens.db` will be
  relative to the current directory and `sqlite:///path/to/tokens.db` will be
  absolute.
- `SEABIRD_BIND_HOST` (optional, defaults to `0.0.0.0:11235`) - which host/port
  to bind the gRPC service to. Note that it will not be tls encrypted, so you
  may want to put it behind a reverse proxy.
- `RUST_LOG` (optional, defaults to `info,seabird::server=trace`) - this is a
  common rust environment variable documented here because we set a default. All
  seabird functionality is exposed under `seabird`.
