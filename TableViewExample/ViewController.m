//
//  ViewController.m
//  TableViewExample
//
//  Created by A4-iMAC01 on 27/10/2020.
//

#import "ViewController.h"
#import "MiCelda.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    marcas = @[@"Renault",@"BMW",@"Meredes",@"Fiat",@"Honda"];
    modelos = @[@"Megane",@"Serie 3",@"Clase A",@"500",@"Civic"];
    
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [marcas count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MiCelda * cell = [tableView dequeueReusableCellWithIdentifier:@"myPrototype"];
    [cell.marca setText:[marcas objectAtIndex:indexPath.row]];
    [cell.modelo setText:[modelos objectAtIndex:indexPath.row]];
    NSData * imageData = [[NSData alloc]initWithContentsOfURL:[NSURL URLWithString:@"https://upload.wikimedia.org/wikipedia/commons/d/de/Google_Inbox_by_Gmail_logo.png"]];
    [cell.image setImage:[UIImage imageWithData:imageData]];
    return cell;
}
    //Height
    - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        return 141;
    }
    - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[marcas objectAtIndex:indexPath.row] message:[modelos objectAtIndex:indexPath.row] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction * ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:ok];
        [self presentViewController:alertController animated:YES completion:nil];
    
    }

@end
