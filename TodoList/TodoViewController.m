//
//  TodoViewController.m
//  TodoList
//
//  Created by Rodrigo Rocha on 24/01/14.
//  Copyright (c) 2014 Rodrigo Rocha. All rights reserved.
//

#import "TodoViewController.h"
#import "ListaTarefas.h"

@interface TodoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (strong, nonatomic) ListaTarefas *tarefas;

@end

@implementation TodoViewController

- (void)atualizaInterface {
    self.textView.text = [self.tarefas description];
}
// https://github.com/rodrigorgs/todolist-ios

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tarefas = [[ListaTarefas alloc] init];
    [self atualizaInterface];
}

- (IBAction)adicionarTarefa:(id)sender {
    NSString *tarefa = self.textField.text;
    self.textField.text = @"";
    [self.tarefas adicionaItem:tarefa];
    [self atualizaInterface];
}

@end
