# VastRaven Package Playground

## Setup

Compile the apollo command line tool to be able to fetch the schema, and generate code.

```shell
swift package --allow-writing-to-package-directory apollo-cli-install
```

See https://www.apollographql.com/docs/ios/code-generation/codegen-cli#installation for more details.

## Fetching the schema

In the root of the repository execute the following command. The tool will use the `apollo-codegen-config.json` to pick 
the right endpoint, and store the schema locally.

```shell
./apollo-ios-cli fetch-schema
```

## Generating code

All files in the `Queries` folder will be used to generate code. Any change to the query files also requires re-running the command.

```shell
./apollo-ios-cli generate
```

## Playground

All generated sources are inside the playground, so that it automatically picks up any changes to the generated code.

The first page of the playground `Basics - FetchQuery` has code to create a query and fetch it using the apollo client.
