// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public protocol StarWars_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == StarWars.SchemaMetadata {}

public protocol StarWars_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == StarWars.SchemaMetadata {}

public protocol StarWars_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == StarWars.SchemaMetadata {}

public protocol StarWars_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == StarWars.SchemaMetadata {}

public extension StarWars {
  typealias ID = String

  typealias SelectionSet = StarWars_SelectionSet

  typealias InlineFragment = StarWars_InlineFragment

  typealias MutableSelectionSet = StarWars_MutableSelectionSet

  typealias MutableInlineFragment = StarWars_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    public static func objectType(forTypename typename: String) -> Object? {
      switch typename {
      case "Root": return StarWars.Objects.Root
      case "PeopleConnection": return StarWars.Objects.PeopleConnection
      case "Person": return StarWars.Objects.Person
      case "Film": return StarWars.Objects.Film
      case "Species": return StarWars.Objects.Species
      case "Planet": return StarWars.Objects.Planet
      case "Starship": return StarWars.Objects.Starship
      case "Vehicle": return StarWars.Objects.Vehicle
      case "PersonFilmsConnection": return StarWars.Objects.PersonFilmsConnection
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}