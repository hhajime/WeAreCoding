//
//  ContentView.swift
//  SwiftSyntaxWithIssac
//
//  Created by Ha Jong Myeong on 10/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var direction: Direction = .east
    @State private var post: PostType = .context("hello")

    // 배열과 같이 다루기 위해, CaseIterable 프로토콜 사용
    // ForEach문에서 텍스트 형식으로 표현하기 위해 String 타입 사용
    enum Direction: String, CaseIterable {
        case east = "동"
        case west = "서"
        case south = "남"
        case north = "북"
    }

    enum PostType {
        case loading
        case context(String)
        case photo(Data)
        case video(URL)
        case error(Error)
    }

    var body: some View {
        VStack {
            Picker("", selection: $direction){
                ForEach(Direction.allCases, id: \.self) { direction in
                    Text(direction.rawValue)
                }
            }
        }
    }
}
