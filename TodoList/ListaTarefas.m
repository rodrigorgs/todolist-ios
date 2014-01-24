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
        NSUserDefaults *prefs =[NSUserDefaults standardUserDefaults];
        
        NSArray *array = [prefs objectForKey:@"tarefas"];
        if (!array)
            array = @[];
        self.tarefas = [NSMutableArray arrayWithArray:array];
    }
    return self;
}

- (void)salva {
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:self.tarefas forKey:@"tarefas"];
    [prefs synchronize];
}

- (void)adicionaItem:(NSString *)item {
    [self.tarefas addObject:item];
    [self salva];
}
- (void)limpaItens {
    [self.tarefas removeAllObjects];
    [self salva];
}
- (NSString *)description {
    return [self.tarefas componentsJoinedByString:@"\n"];
}
- (NSArray *)itens {
    return [self.tarefas copy];
}


@end
