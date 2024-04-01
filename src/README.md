# Introduction

To put it simply, Seabird is an overengineered chat framework. It comes with a
broker service, chat backends, and plugins. The goal is to provide a unified
interface for linking channels together and interacting with messages.

## History

The first version of Seabird was an IRC bot written to learn Go. It has since
been rewritten countless times and eventually turned into the project you see
today.

## What is Seabird?

These days, Seabird is a combination of [seabird-core](admin/seabird-core.md) (an
RPC service acting as a broker for other components), [chat backends]() (which
act as plumbing for hooking up a chat network like Discord), and [plugins]()
(which most closely resemble the original bot functionality).

## What Should I Look At?

Looking to run a Seabird instance of your own? Check out the Administrator
Guide, probably starting with [dependencies]().

Hoping to contribute or write a plugin? Check out the Developer Guide, starting
with the [contributing]() page.
