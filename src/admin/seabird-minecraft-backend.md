# seabird-minecraft-backend

[![Static Badge](https://img.shields.io/badge/repository-blue?logo=git&label=%20&labelColor=grey&color=blue)](https://github.com/seabird-chat/seabird-minecraft-backend)
<!-- [![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/seabird-chat/seabird-core/docker-publish.yml)](https://github.com/seabird-chat/seabird-minecraft-backend/actions/workflows/docker-publish.yml) -->

## Dependencies

- `seabird-core`
- a Fabric Minecraft server

## Configuration

### Config File

The config file is a json file located at
`config/seabird-minecraft-backend.json`, with the following properties:

- `seabirdHost` (optional, defaults to `seabird-core.elwert.cloud`)
- `seabirdPort` (optional, defaults to `443`)
- `seabirdToken` (required)
- `backendId` (optional, defaults to `minecraft`)
- `backendChannel` (optional, defaults to `minecraft`)
- `systemDisplayName` (optional, defaults to `Minecraft`)
