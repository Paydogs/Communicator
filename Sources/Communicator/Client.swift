//
//  Client.swift
//  Communicator
//
//  Created by Andras Olah on 2024. 12. 22..
//

import Foundation
import Combine
import CommunicatorCore

public class Client: CommunicatorCore.Client, @unchecked Sendable {
    public let logMessages = PassthroughSubject<String, Never>()

    public override func debugLog(_ message: String) {
        super.debugLog(message)
        logMessages.send("\(message)")
    }
}
