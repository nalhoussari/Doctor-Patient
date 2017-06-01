//
//  Patient.h
//  DoctorPatient
//
//  Created by Noor Alhoussari on 2017-06-01.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property NSString *name;
@property BOOL validHealthCard;
@property NSString *symptoms;
@property NSMutableArray * prescriptionHistory;

- (instancetype)initWithName: (NSString *) name andValidHealthCard: (BOOL) validHealthCard andSymptoms: (NSString *) symptoms;

-(void) visit: (Doctor *) doctor;
-(void) requestMedication: (Doctor *) doctor;

-(void ) allPrescriptionHistory;


@end
