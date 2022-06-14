//
//  APIGuild.swift
//  DiscordAPI
//
//  Created by Vincent Kwok on 22/2/22.
//

import Foundation
import DiscordKitCommon

public extension DiscordREST {
    // MARK: Get Guild
    // GET /guilds/{guild.id}
    func getGuild(id: Snowflake) async -> Guild? {
        return await getReq(path: "guilds/\(id)")
    }

    // MARK: Get Guild Channels
    // GET /guilds/{guild.id}/channels
    func getGuildChannels(id: Snowflake) async -> [DecodableThrowable<Channel>]? {
        return await getReq(path: "guilds/\(id)/channels")
    }

    // MARK: Get Guild Roles
    // GET /guilds/{guild.id}/roles
    func getGuildRoles(id: Snowflake) async -> [Role]? {
        return await getReq(path: "guilds/\(id)/roles")
    }
}
