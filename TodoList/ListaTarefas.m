//
//  ListaTarefas.m
//  TodoList
//
//  Created by Rodrigo Rocha on 24/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "ListaTarefas.h"

@interface ListaTarefas()
@property (strong, nonatomic) NSMutableArray *tarefas;
@end

@implementation ListaTarefas

- (id)init
{
    self = [super init];
    if (self) {
        self.tarefas = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)adicionaItem:(NSString *)item {
    [self.tarefas addObject:item];
}
- (void)limpaItens {
    [self.tarefas removeAllObjects];
}
- (NSString *)description {
    return [self.tarefas componentsJoinedByString:@"\n"];
}
- (NSArray *)itens {
    return [self.tarefas copy];
}


@end
