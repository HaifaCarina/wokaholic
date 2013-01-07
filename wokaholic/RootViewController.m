//
//  RootViewController.m
//  wokaholic
//
//  Created by Haifa Carina Baluyos on 10/23/12.
//  Copyright (c) 2012 NMG Resources, Inc. All rights reserved.
//

#import "RootViewController.h"
@implementation RootViewController

- (void) tappedPhotoApp {
    NSLog(@"tap menu photoapp");
    PhotoAppController *aController = [[PhotoAppController alloc]init];
    [self.navigationController pushViewController:aController animated:YES];
    [aController release];
}

- (void) tappedCookingQuiz{
    NSLog(@"tap menu CookingQuiz");
    CookingQuizController *aController = [[CookingQuizController alloc] init];
    [self.navigationController pushViewController:aController animated:YES];
    [aController release];
}

- (void) tappedRecipes {
    NSLog(@"tap menu Recipes");
    RecipesController *aController = [[RecipesController alloc] init];
    [self.navigationController pushViewController:aController animated:YES];
    [aController release];
}

- (void) tappedProductGuide {
    NSLog(@"tap menu ProductGuide");
    ProductGuideController *aController = [[ProductGuideController alloc] init];
    [self.navigationController pushViewController:aController animated:YES];
    [aController release];
}

- (void) tappedAbout {
    AboutController *aController = [[AboutController alloc] init];
    [self.navigationController pushViewController:aController animated:YES];
    [aController release];
}

- (void) loadView {
    [super loadView];

    UIImageView *homeBackground = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"home.png"]];
    homeBackground.frame = CGRectMake(0, 0, 1024, 768);
    [self.view addSubview:homeBackground];
    [homeBackground release];
    
    // PHOTO APP BUTTON
    UIImageView *photoApp = [[UIImageView alloc] initWithFrame:CGRectMake(825.0, 130.0, 188, 126)];
    photoApp.backgroundColor = [UIColor clearColor];
    [self.view addSubview:photoApp];
    UITapGestureRecognizer *photoAppTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedPhotoApp ) ];
    [photoApp addGestureRecognizer:photoAppTap];
    [photoApp setUserInteractionEnabled:YES];
    [photoAppTap release];
    [photoApp release];
    
    // COOKING QUIZ BUTTON
    UIImageView *cookingQuiz = [[UIImageView alloc] initWithFrame:CGRectMake(825.0, 130.0 + 126, 188, 126)];
    cookingQuiz.backgroundColor = [UIColor clearColor];
    [self.view addSubview:cookingQuiz];
    UITapGestureRecognizer *cookingQuizTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedCookingQuiz ) ];
    [cookingQuiz addGestureRecognizer:cookingQuizTap];
    [cookingQuiz setUserInteractionEnabled:YES];
    [cookingQuizTap release];
    [cookingQuiz release];
    
    // RECIPES BUTTON
    UIImageView *recipes = [[UIImageView alloc] initWithFrame:CGRectMake(825.0, 130.0 + 126 + 126, 188, 126)];
    recipes.backgroundColor = [UIColor clearColor];
    [self.view addSubview:recipes];
    UITapGestureRecognizer *recipesTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedRecipes ) ];
    [recipes addGestureRecognizer:recipesTap];
    [recipes setUserInteractionEnabled:YES];
    [recipesTap release];
    [recipes release];
    
    // PRODUCT GUIDE BUTTON
    UIImageView *productGuide = [[UIImageView alloc] initWithFrame:CGRectMake(825.0, 130.0 + 126 + 126 + 126, 188, 126)];
    productGuide.backgroundColor = [UIColor clearColor];
    [self.view addSubview:productGuide];
    UITapGestureRecognizer *productGuideTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedProductGuide ) ];
    [productGuide addGestureRecognizer:productGuideTap];
    [productGuide setUserInteractionEnabled:YES];
    [productGuideTap release];
    [productGuide release];
    
    // ABOUT BUTTON
    UIImageView *about = [[UIImageView alloc] initWithFrame:CGRectMake(825.0, 130.0 + 126 + 126 + 126 + 126, 188, 80)];
    about.backgroundColor = [UIColor clearColor];
    [self.view addSubview:about];
    UITapGestureRecognizer *aboutTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedAbout ) ];
    [about addGestureRecognizer:aboutTap];
    [about setUserInteractionEnabled:YES];
    [aboutTap release];
    [about release];

    
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
}
@end
