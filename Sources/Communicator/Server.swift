//
//  Server.swift
//  Communicator
//
//  Created by Andras Olah on 2024. 12. 22..
//

import Foundation
import Combine
import CommunicatorCore

public class Server: CommunicatorCore.Server, @unchecked Sendable {
    public let logMessages = PassthroughSubject<String, Never>()

    public override func debugLog(_ message: String) {
        logMessages.send("[Server] \(message)")
        #if DEBUG
            print("[DEBUG] \(message)")
        #endif
    }
}
