//
//  Reservation.swift
//  Reservations
//
//  Created by Toby Youngberg on 3/14/23.
//

import Foundation

struct Reservation {
    var firstName: String
    var lastName: String
    var emailAddress: String

    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int

    var roomType: RoomType
    var wifi: Bool
}
