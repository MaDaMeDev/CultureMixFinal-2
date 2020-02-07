import SwiftUI

struct Principal: View {
    var body: some View {
        
        
        TabView {
            
                       AccueilView()
                       ContentViewPrive()
                       MonProfil()

            
                }
            }
        }

struct Principal_Previews: PreviewProvider {
    static var previews: some View {
        Principal()
    }
}
