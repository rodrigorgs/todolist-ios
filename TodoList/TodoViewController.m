//
//  TodoViewController.m
//  TodoList
//
//  Created by Rodrigo Rocha on 24/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "TodoViewController.h"

@interface TodoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (strong, nonatomic) NSMutableArray *lista;

@end

@implementation TodoViewController

- (void)atualizaInterface {
    self.textView.text = [self.lista componentsJoinedByString:@"\n"];
}
// https://github.com/rodrigorgs/todolist-ios

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lista = [[NSMutableArray alloc] init];
    [self.lista addObject:@"Estudar"];
    [self.lista addObject:@"Trabalhar"];
    [self.lista addObject:@"Jogar"];
    
    [self atualizaInterface];
}

- (IBAction)adicionarTarefa:(id)sender {
    NSString *tarefa = self.textField.text;
    self.textField.text = @"";
    [self.lista addObject:tarefa];
    [self atualizaInterface];
}

@end
