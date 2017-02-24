//
//  AppDelegate.m
//  Dictionary_Re
//
//  Created by Slava on 24.02.17.
//  Copyright © 2017 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    Уровень Ученик.
//    Создайте класс студент со свойствами имя, фамилия и фраза приветствия.
//    Создайте 10 - 15 объектов этого класса.
//    Теперь мы создадим дикшинари типо школьный журнал, где ключ будет фамилия + имя, а значение сам студент.
//    Распечатайте дикшинари
    NSMutableDictionary *unsortArray = [NSMutableDictionary new];
    for (int i = 0; i < 11; i++) {
        Student *stud = [Student new];
        char letterFirst = arc4random_uniform(26) + 'A';
        char letterSecond = arc4random_uniform(26) + 'a';
        char letterThird = arc4random_uniform(26) + 'a';
        
        char letterFirstLastName = arc4random_uniform(26) + 'A';
        char letterSecondLastName = arc4random_uniform(26) + 'a';
        char letterThirdLastName = arc4random_uniform(26) + 'a';
        
        char randomLetter = arc4random_uniform(26) + 'a';
        
        stud.name = [NSString stringWithFormat:@"%c%c%cStdName%d",letterFirst, letterSecond, letterThird, i];
        stud.lastName = [NSString stringWithFormat:@"%c%c%cStdLastName%d",letterFirstLastName, letterSecondLastName, letterThirdLastName, i];
        stud.heSay = [NSString stringWithFormat:@"%c", randomLetter];
        [unsortArray setObject:stud forKey:stud.lastName];
        
    }
//    for (NSString *key in unsortArray) {
//        Student *obj = [unsortArray objectForKey:key];
//        NSLog(@"name - %@, last name - %@, he say - %@", obj.name, obj.lastName, obj.heSay);
//    }
    
    NSArray *key = [unsortArray allKeys];
    NSArray *sortArray = [key sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        NSString *first = [(Student *) obj1 heSay];
//        NSString *second = [(Student *) obj2 heSay];
//        return [first compare:second];
        return [obj1 compare:obj2];
    }];
    for (NSString *key in sortArray) {
        NSLog(@"he say %@ - %@",key, [[unsortArray objectForKey:key] heSay]);
    }
    
    
//    Уровень Студент.
//    В цикле пройдемся по всем ключам в дикшинари и распечатаем имя и фамилию каждого студента + его фразу приветствия.

//    Уровень Мастер.
//    Чтобы сделать тоже самое но по какому-то порядку, отсортируйте массив ключей по возрастанию и выведите приветствие каждого студента из дикшинари, но уже по отсортированному списку.
    
    
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
