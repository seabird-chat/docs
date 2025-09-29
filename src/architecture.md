# Architecture

At its core, Seabird is an RPC API.

Currently, seabird exports 2 apis: a chat ingestion API, and a plugin API. In
general, all components only interact with one of these.

## seabird-core

### Chat Ingestion API

The chat ingestion API consists of a single endpoint `IngestEvents` which
starts a bidirectional stream. Outgoing messages are "commands" which allow
seabird to inform the ingestion process to perform some sort of action, like
sending a message or joining a channel. Incoming messages are the ingested
events, allowing users of this API to inform seabird of new messages or other events.

### Plugin API

The plugin API consists of both an event stream and a number of methods which
can be used to cause things to happen.

The streaming endpoint `StreamEvents` is a firehose of all events occuring
across all seabird chat backends.

For callable methods, the `SendMessage` endpoint is the most commonly used.

## Chat Backends

Chat backends interact with the Chat Ingestion API and are used to connect some
sort of chat server or network into the Seabird ecosystem.

## Plugins

Plugins interact with the Plugin API and are used to provide some sort of
additional functionality, similar to what a chat bot would do.
