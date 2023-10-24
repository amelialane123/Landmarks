//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Amelia Lane on 10/23/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width:50,height:50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite{
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            VStack{
                LandmarkRow(landmark: ModelData().landmarks[0])
                LandmarkRow(landmark: ModelData().landmarks[1])
            }
        }
    }
}
