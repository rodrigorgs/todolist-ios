//
//  ListaTarefas.h
//  TodoList
//
//  Created by Rodrigo Rocha on 24/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListaTarefas : NSObject

- (void)adicionaItem:(NSString *)item;
- (void)limpaItens;
- (NSString *)description;
- (NSArray *)itens;

@end
