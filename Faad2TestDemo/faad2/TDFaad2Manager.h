//
//  TDFaad2Manager.h
//  Faad2TestDemo
//
//  Created by zhang teng on 2021/7/8.
//

#import <Foundation/Foundation.h>


@interface TDFaad2Manager : NSObject

+ (int)transformAACToWAV:(NSString *)inputPath outPath:(NSString *)outPath;

@end

