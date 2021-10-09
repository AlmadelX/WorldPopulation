import SwiftUI

struct BarView: View {
    var value: UInt64
    var max: UInt64
    
    let startGradientColor = Color(R: 94, G: 255, B: 139)
    let endGradientColor = Color(R: 134, G: 255, B: 226)
    
    private var progress: Double {
        Double(value) / Double(max)
    }
    
    var body: some View {
        GeometryReader { metrics in
            RoundedRectangle(cornerRadius: 5.0)
                .fill(LinearGradient(gradient: Gradient(colors: [startGradientColor, endGradientColor]), startPoint: .leading, endPoint: .trailing))
                .frame(width: CGFloat(progress) * metrics.size.width)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(value: 100, max: 100)
    }
}
