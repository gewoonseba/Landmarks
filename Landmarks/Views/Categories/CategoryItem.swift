//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Sebastian Stoelen on 31/03/2024.
//

import SwiftUI

struct CategoryItem: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(12)
                
            
            Text(landmark.name)
                .font(.caption)
                .foregroundStyle(.black)
                
        }
        .padding(.leading, 15)
    }
}

#Preview {
    CategoryItem(landmark: ModelData().landmarks[0])
}
