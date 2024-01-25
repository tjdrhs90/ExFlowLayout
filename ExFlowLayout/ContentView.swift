//
//  ContentView.swift
//  ExFlowLayout
//
//  Created by ssg on 1/25/24.
//

import SwiftUI

struct ContentView: View {
    
    let array = "다중 레이아웃을 사용하면 다양한 방식으로 뷰를 구성할 수 있습니다. 한 가지 중요한 것은 콘크리트 레이아웃의 하위 항목 사이의 간격입니다. 이번 주에 우리는 뷰 사이의 특정 간격을 지정할 수 있는 사용자 정의 레이아웃을 구축하는 방법과 SwiftUI에서 플랫폼 중심의 사전 정의된 간격 규칙을 준수하는 방법을 배울 것입니다.".split(separator: " ")
    
    var body: some View {
        VStack {
            FlowLayout(spacing: 10) {
                ForEach(array.indices, id: \.self) {
                    Text(array[$0])
                        .font($0.isMultiple(of: 2) ? .title : .title2)
                        .border(Color.red)
                        .padding(.bottom, 10) // FlowLayout 에서 줄 간격 설정 방법을 못 찾아서 이렇게 추가
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
