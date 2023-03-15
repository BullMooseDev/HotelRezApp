//
//  RoomType.swift
//  Reservations
//
//  Created by Toby Youngberg on 3/14/23.
//

import Foundation

struct RoomType: Equatable {
   var id: Int
   var name: String
   var shortName: String
   var price: Int

   //Equatable protocol implementation for RoomType
   static func == (lhs: RoomType, rhs: RoomType) -> Bool {
    return lhs.id == rhs.id
  }
}
