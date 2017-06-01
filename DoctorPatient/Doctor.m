//
//  Doctor.m
//  DoctorPatient
//
//  Created by Noor Alhoussari on 2017-06-01.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *)specialization{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patiens = [[NSMutableSet alloc]init];
        _prescriptions = [[NSMutableDictionary alloc]init];
    }
    return self;
}

- (void) addPrescriptions: (NSString *) symptoms andPrescription: (NSString *) prescription{
    [_prescriptions setValue:prescription forKey:symptoms];
}

-(void) PrintPrescribtionForSymptom: (NSString *) symptom {
    if ([_prescriptions doesContain: symptom]){
        NSLog(@"The prescription for these symtoms is: %@", [_prescriptions objectForKey:symptom]);
    } else {
        NSLog(@"This symptom does not have a prescription");
    }
}

-(void) allPrescriptions {
    for (NSString *key in _prescriptions){
        NSLog(@"The prescription for these symtoms %@ is: %@", key, [_prescriptions objectForKey:key]);
    }
}

@end
