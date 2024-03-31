//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Sebastian Stoelen on 31/03/2024.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 8) {
                Text(profile.username)
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)

                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: \(profile.goalDate, style: .date)")

                Divider().padding(.vertical)

                VStack(alignment: .leading) {
                    Text("Completed Badges")
                        .font(.headline)
                        .padding(.bottom, 16)

                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                    }
                }

                Divider().padding(.vertical)

                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)
                        .padding(.bottom, 16)

                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
