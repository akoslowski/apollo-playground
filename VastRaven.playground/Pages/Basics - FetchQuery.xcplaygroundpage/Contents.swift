import Foundation
import Apollo


let endpoint = URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!
let client = ApolloClient(url: endpoint)

let query = StarWars.ListPeople1Query()

let cancellable = client.fetch(query: query) { result in
    do {
        
        let graphqlResult = try result.get()
        let data = try graphqlResult.data ?? { throw URLError(.badServerResponse) }()
        let people = data.allPeople?.people?.compactMap { $0 } ?? []

        people.forEach { person in

            print("\(person.name), \(person.filmConnection?.films?.map(\.?.title))")

        }

    } catch {
        print(error)
    }
}


Task {
    do {
        let graphqlResult = try await client.fetch(query: query)

        let data = try graphqlResult.data ?? { throw URLError(.badServerResponse) }()
        let people = data.allPeople?.people?.compactMap { $0 } ?? []

        people.forEach { person in

            print("\(person.name), \(person.filmConnection?.films?.map(\.?.title))")

        }
    } catch {
        print(error)
    }
}
