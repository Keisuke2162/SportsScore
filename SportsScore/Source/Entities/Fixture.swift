//
//  Fixture.swift
//  SportsScore
//
//  Created by 植田圭祐 on 2023/07/19.
//

import Foundation

struct Fixtures: Codable {
    let fixture: Fixture
    let league: League
    let teams: Teams
    let goals: Goal
    let score: Score

    enum CodingKeys: String, CodingKey {
        case fixture, league, teams, goals, score
    }
}

struct Fixture: Codable {
    let id: Int
    let refree: String
    let timeZone: String
    let date: String
    let timeStamp: String
    let periods: Periods
    let venue: Venue
    let status: Status

    enum CodingKeys: String, CodingKey {
        case id, refree, date, periods, venue, status
        case timeZone = "timeZone"
        case timeStamp = "timeStamp"
    }
}

struct Periods: Codable {
    let first: Int
    let second: Int

    enum CodingKeys: String, CodingKey {
        case first, second
    }
}

struct Venue: Codable {
    let id: Int
    let name: String
    let city: String

    enum CodingKeys: String, CodingKey {
        case id, name, city
    }
}

struct Status: Codable {
    let long: String
    let short: String
    let elapsed: Int

    enum CodingKeys: String, CodingKey {
        case long, short, elapsed
    }
}

struct League: Codable {
    let id: Int
    let name: String
    let country: String
    let logo: URL
    let flag: URL
    let season: Int
    let round: String

    enum CodingKeys: String, CodingKey {
        case id, name, country, logo, flag, season, round
    }
}

struct Teams: Codable {
    let home: Team
    let away: Team

    enum CodingKeys: String, CodingKey {
        case home, away
    }
}

struct Team: Codable {
    let id: Int
    let name: String
    let logo: URL
    let winner: Bool

    enum CodingKeys: String, CodingKey {
        case id, name, logo, winner
    }
}

struct Score: Codable {
    let halfTime: Goal
    let fullTime: Goal
    let extraTime: Goal
    let penalty: Goal

    enum CodingKeys: String, CodingKey {
        case halfTime = "halftime"
        case fullTime = "fulltime"
        case extraTime = "extratime"
        case penalty
    }
}

struct Goal: Codable {
    let home: Int
    let away: Int

    enum CodingKeys: String, CodingKey {
        case home, away
    }
}
