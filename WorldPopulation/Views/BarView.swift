import SwiftUI

struct BarView: View {
    let startGradientColor = Color(R: 94, G: 255, B: 139)
    let endGradientColor = Color(R: 134, G: 255, B: 226)
    let pointsArray = [UnitPoint.leading, .bottomLeading, .bottom, .bottomTrailing, .trailing, .topTrailing, .top, .topLeading]
    @State private var startPoint: UnitPoint
    @State private var endPoint: UnitPoint
    
    init() {
        _startPoint = State(initialValue: .leading)
        _endPoint = State(initialValue: .trailing)
    }
    
    var body: some View {
        GeometryReader { metrics in
            RoundedRectangle(cornerRadius: 5.0)
                .fill(LinearGradient(gradient: Gradient(colors: [startGradientColor, endGradientColor]), startPoint: startPoint, endPoint: endPoint))
//                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
//                .onAppear() {
//                    startPoint = pointsArray[Int.random(in: 0..<pointsArray.count)]
//                    endPoint = pointsArray[Int.random(in: 0..<pointsArray.count)]
//                }
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
            .frame(width: UIScreen.main.bounds.width, height: 30)
    }
}
