//
//  CustomTabSwitcher.swift
//  BuildNetflixClone
//
//  Created by Apple on 30/5/21.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        return tab.rawValue.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            // Custom tab picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            // Red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                            
                            // Button
                            Button(action: {
                                //
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            
            // Selected View
            Text("SELECTED VIEW")
        }
        .foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}