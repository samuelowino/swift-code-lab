import Foundation

enum BadRequestException: Error {
    case NetworkRequestFailed(cause: String)
}

struct NetworkConnection {
    var openStatus: Bool
}

func get() throws {
    throw BadRequestException.NetworkRequestFailed(cause: "Api request failed for reasons...")
}

func makeApiRequest() {
    var networkConnection = NetworkConnection(openStatus: false)

    do {
        networkConnection.openStatus = true
        try get()
    } catch {
        print("Api request failed but connection was closed and update to \(error)")
    }

    if networkConnection.openStatus == true {
        defer {
            //close this connection regardless
            networkConnection.openStatus = false  
        }
    }
    
}
