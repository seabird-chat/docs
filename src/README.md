# Introduction

To put it simply, Seabird is an overengineered chat framework. There is a broker
service, chat backends, and plugins.

## History

The first version of Seabird was an IRC bot written to learn Go. It has since
been rewritten countless times and eventually turned into the project you see
today.

## What is Seabird?

These days, Seabird is a combination of [seabird-core](./seabird_core.md) (an
RPC service acting as a broker for other components), [chat backends]() (which
act as plumbing for hooking up a chat network like Discord), and [plugins]()
(which most closely resemble the original bot functionality).
