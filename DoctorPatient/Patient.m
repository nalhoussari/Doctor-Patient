//
//  Patient.m
//  DoctorPatient
//
//  Created by Noor Alhoussari on 2017-06-01.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName: (NSString *) name andValidHealthCard: (BOOL) validHealthCard andSymptoms: (NSString *) symptoms
{
    self = [super init];
    if (self) {
        _name = name;
        _validHealthCard = validHealthCard;
        _symptoms = symptoms;
        _prescriptionHistory = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void) visit: (Doctor *) doctor{
    if(_validHealthCard){
        [doctor.patiens addObject:self];
        NSLog(@"This patient %@ is accepted with %@",self.name, doctor.name);
    } else {
        NSLog(@"This patient does not have a valid health card!");
    }
}

-(void) requestMedication: (Doctor *) doctor{
    if ([doctor.patiens containsObject:self]){
        if([doctor.prescriptions objectForKey:self.symptoms]){
            [_prescriptionHistory addObject:[doctor.prescriptions objectForKey:self.symptoms]];
            NSLog(@"The prescription for these symtoms is: %@", [doctor.prescriptions objectForKey:self.symptoms]);
        } else {
            NSLog(@"No prescription Found");
        }
    } else {
        NSLog(@"Doctor can't discribe medication, as the patient have not been accepted with the doctor");
    }
}

-(void ) allPrescriptionHistory{
    NSLog(@"All prescriptions for this patient are:");
    for (id temp in _prescriptionHistory){
        NSLog(@"%@", temp);
    }
}


@end
