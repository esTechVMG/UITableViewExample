//
//  MiCelda.h
//  TableViewExample
//
//  Created by A4-iMAC01 on 27/10/2020.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MiCelda : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *marca;
@property (weak, nonatomic) IBOutlet UILabel *modelo;

@end

NS_ASSUME_NONNULL_END
