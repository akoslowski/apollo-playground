// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension StarWars {
  class ListPeople1Query: GraphQLQuery {
    public static let operationName: String = "ListPeople1"
    public static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query ListPeople1 { allPeople(first: 3) { __typename people { __typename name filmConnection(first: 3) { __typename films { __typename id title releaseDate } } } } }"#
      ))

    public init() {}

    public struct Data: StarWars.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWars.Objects.Root }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("allPeople", AllPeople?.self, arguments: ["first": 3]),
      ] }

      public var allPeople: AllPeople? { __data["allPeople"] }

      /// AllPeople
      ///
      /// Parent Type: `PeopleConnection`
      public struct AllPeople: StarWars.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { StarWars.Objects.PeopleConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("people", [Person?]?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        public var people: [Person?]? { __data["people"] }

        /// AllPeople.Person
        ///
        /// Parent Type: `Person`
        public struct Person: StarWars.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { StarWars.Objects.Person }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String?.self),
            .field("filmConnection", FilmConnection?.self, arguments: ["first": 3]),
          ] }

          /// The name of this person.
          public var name: String? { __data["name"] }
          public var filmConnection: FilmConnection? { __data["filmConnection"] }

          /// AllPeople.Person.FilmConnection
          ///
          /// Parent Type: `PersonFilmsConnection`
          public struct FilmConnection: StarWars.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { StarWars.Objects.PersonFilmsConnection }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("films", [Film?]?.self),
            ] }

            /// A list of all of the objects returned in the connection. This is a convenience
            /// field provided for quickly exploring the API; rather than querying for
            /// "{ edges { node } }" when no edge data is needed, this field can be be used
            /// instead. Note that when clients like Relay need to fetch the "cursor" field on
            /// the edge to enable efficient pagination, this shortcut cannot be used, and the
            /// full "{ edges { node } }" version should be used instead.
            public var films: [Film?]? { __data["films"] }

            /// AllPeople.Person.FilmConnection.Film
            ///
            /// Parent Type: `Film`
            public struct Film: StarWars.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { StarWars.Objects.Film }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("id", StarWars.ID.self),
                .field("title", String?.self),
                .field("releaseDate", String?.self),
              ] }

              /// The ID of an object
              public var id: StarWars.ID { __data["id"] }
              /// The title of this film.
              public var title: String? { __data["title"] }
              /// The ISO 8601 date format of film release at original creator country.
              public var releaseDate: String? { __data["releaseDate"] }
            }
          }
        }
      }
    }
  }

}