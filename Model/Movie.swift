//
//  Movie.swift
//  BoxOffice
//
//  Created by ggyool on 2020/10/05.
//

import Foundation

struct Movie: Codable {
    
    let grade: GradeType
    let thumb: String
    let reservationGrade: Int
    let title: String
    let reservationRate: Double
    let userRating: Double
    let date: Date
    let id: String
    
    var dateString: String {
        return Common.dateFormatter.string(from: date)
    }
    enum CodingKeys: String, CodingKey {
        case reservationGrade = "reservation_grade"
        case reservationRate = "reservation_rate"
        case userRating = "user_rating"
        case grade, thumb, title, date, id
    }
}
