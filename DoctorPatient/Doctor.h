//
//  Doctor.h
//  DoctorPatient
//
//  Created by Noor Alhoussari on 2017-06-01.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property NSString *name;
@property NSString *specialization;
@property NSMutableSet *patiens;
@property NSMutableDictionary *prescriptions;


- (instancetype)initWithName: (NSString *) name andSpecialization: (NSString *)specialization;

- (void) addPrescriptions: (NSString *) symptoms andPrescription: (NSString *) prescription;

-(void) PrintPrescribtionForSymptom: (NSString *) symptom;

-(void) allPrescriptions;


@end
