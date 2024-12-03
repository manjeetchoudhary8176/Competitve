//
//  Forjunral.swift
//  Logicquestion
//
//  Created by manjeet kumar on 22/11/24.
//

import SwiftUI

struct Forjunral: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Forjunral()
}

class Temp {
    var objTemp2: Temp2?
    
}

class Temp2 {
    var objTemp: Temp?
}

class t {
    func temp() {
        var tobj:Temp? = Temp()
        
        var tobj2: Temp2? = Temp2()
        
        tobj?.objTemp2 = tobj2
        tobj2?.objTemp = tobj
        
        tobj = nil
        tobj2 = nil
        
    }
}
