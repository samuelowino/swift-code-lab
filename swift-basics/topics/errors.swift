import Foundation

enum RocketError: Error {
    case LaunchFailedError(cause: String)
    case LaunchDelayedError(case: String, durationMin: Int)
}

func liftOff() throws {
    throw RocketError.LaunchFailedError(cause: "No fuel left in tank")
}

func launch() throws {
    try liftOff()
}

do {
    try launch()
} catch {
    print("Rocket launch failed due to error \(error)")
}

//===============================================================================

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

    defer {
        //close this connection regardless
        networkConnection.openStatus = false  
    }
}