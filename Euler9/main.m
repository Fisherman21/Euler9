//
//  main.m
//  Euler9
//
//  Created by JohanLundgren on 2016-01-11.
//  Copyright © 2016 SuperMilkApps. All rights reserved.
//

#import <Foundation/Foundation.h>

/*A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
 
 a2 + b2 = c2
 For example, 32 + 42 = 9 + 16 = 25 = 52.
 
 There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 Find the product abc.
 */

/*
 Det är egentligen bara att bruteforca detta problem genom att testa alla möjliga tal a och b kan vara. Detta görs genom att köra två loopar som testar för a respektive b. Ett faktum vi här kan utnyttja är att a aldrig kommer kunna vara större än 1000/3, då både b och c måste vara större, och b kommer inte kunna vara större än 1000/2 eftersom c måste vara större än b
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Deklarerar två variabler, en för att hålla koll på summan c och en för att hålla koll på vad produkten av talen blir.
        int c = 0;
        int triplett = 0;
        
        //Loppar igenom tal från 0 till 1000/3 för a...
        for (int a = 0; a < 1000 / 3; a++) {
            //...och tal från 0 till 1000/2 för b
            for (int b = 0; b < 1000 / 2; b++) {
                //c måste då i varje fall att bli 1000-a-b
                c = 1000 - a - b;
                
                //Kontroll om talen som har hittats under den nuvaranda iterationen uppfyller villkoren som finns i uppgiften och de för en pythagoriansk trippel.
                if (c * c == (a * a) + (b * b)) {
                    if (a + b + c == 1000) {
                        triplett = a * b * c;
                        break;
                    }
                }
            }
        }
        //Produkten skrivs ut
        NSLog(@"Produkten abc är lika med: %d", triplett);
    }
    return 0;
}
