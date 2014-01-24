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
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) ListaTarefas *tarefas;

@end

@implementation TodoViewController

- (void)atualizaInterface {
    [self.tableView reloadData];
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tarefas.itens.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    NSString *texto = [self.tarefas.itens objectAtIndex:indexPath.row];
    cell.textLabel.text = texto;
    
    return cell;
}

@end
