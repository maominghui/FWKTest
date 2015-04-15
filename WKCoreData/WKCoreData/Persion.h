//
//  Persion.h
//  
//
//  Created by apple on 15/4/13.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Persion : NSManagedObject

@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * firstname;
@property (nonatomic, retain) NSString * lastname;

@end
