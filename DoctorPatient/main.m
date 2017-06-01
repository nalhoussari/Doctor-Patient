//
//  main.m
//  DoctorPatient
//
//  Created by Noor Alhoussari on 2017-06-01.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *john = [[Doctor alloc] initWithName:@"John" andSpecialization:@"Asthma"];
        
        Patient *greg = [[Patient alloc]initWithName:@"Greg" andValidHealthCard:YES andSymptoms:@"stomachache"];
        
        Patient *liza = [[Patient alloc]initWithName:@"Liza" andValidHealthCard:NO andSymptoms:@"headache"];
        
        [greg visit:john];
        [liza visit:john];
        [john addPrescriptions:@"headache" andPrescription:@"Advil"];
        [john addPrescriptions:@"stomachache" andPrescription:@"Profen"];
        
        [john allPrescriptions];
        
        [greg requestMedication:john];
        
        [greg allPrescriptionHistory];
        
        
    }
    return 0;
}
