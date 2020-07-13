////
////  UIScrollView+YDGeneral.m
////  YDArchitectureDemo
////
////  Created by Think on 2018/11/20.
////  Copyright © 2018 Think. All rights reserved.
////
//
//#import "UIScrollView+YDGeneral.h"
////#import "MJRefresh.h"
//#import <MJRefresh/MJRefresh.h>
//
//@implementation UIScrollView (YDGeneral)
//
//- (void)YDGeneral_addRefreshHeader:(void (^)(void))blockH footer:(void (^)(void))blockF {
//    __weak __typeof__(self) weakSelf = self;
//    [self YDGeneral_addRefreshHeader:^{
//        if (blockH) blockH();
//    } endRefresh:^{
//        __strong __typeof(weakSelf) strongSelf = weakSelf;
//        if (!strongSelf.mj_footer) {
//            [strongSelf YDGeneral_addRefreshFooter:^{
//                if (blockF) blockF();
//            }];
//        }
//    }];
//}
//
//- (void)YDGeneral_addRefreshHeader:(void (^)(void))block {
//    [self YDGeneral_addRefreshHeader:block endRefresh:nil];
//}
//
//- (void)YDGeneral_addRefreshHeader:(void (^)(void))block endRefresh:(void (^)(void))endRefresh {
//    
//    
//    __weak __typeof__(self) weakSelf = self;
//    MJRefreshNormalHeader *refreshHeader = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
//        __strong __typeof(weakSelf) strongSelf = weakSelf;
//        BOOL isRefresh = strongSelf.mj_footer.state == MJRefreshStateRefreshing || strongSelf.mj_footer.state == MJRefreshStateWillRefresh || strongSelf.mj_footer.state == MJRefreshStatePulling;
//        if (isRefresh) {
//            [strongSelf.mj_header endRefreshing];
//            return;
//        }
//        if (block) block();
//    }];
//    [refreshHeader setEndRefreshingCompletionBlock:^{
//        if (endRefresh) endRefresh();
//    }];
//    refreshHeader.automaticallyChangeAlpha = YES;
//    refreshHeader.lastUpdatedTimeLabel.hidden = YES;
//    refreshHeader.stateLabel.font = [UIFont systemFontOfSize:12];
//    refreshHeader.stateLabel.textColor = [UIColor lightGrayColor];
//    
//    self.mj_header = refreshHeader;
//}
//
//- (void)YDGeneral_addRefreshFooter:(void (^)(void))block {
//    
//    __weak __typeof__(self) weakSelf = self;
//    MJRefreshAutoNormalFooter *refreshFooter = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
//        __strong __typeof(weakSelf) strongSelf = weakSelf;
//        BOOL isRefresh = strongSelf.mj_header.state == MJRefreshStateRefreshing || strongSelf.mj_header.state == MJRefreshStateWillRefresh || strongSelf.mj_header.state == MJRefreshStatePulling;
//        if (isRefresh) {
//            [strongSelf.mj_footer endRefreshing];
//            return;
//        }
//        if (block) block();
//    }];
//    
//    refreshFooter.automaticallyChangeAlpha = YES;
//    refreshFooter.stateLabel.font = [UIFont systemFontOfSize:12];
//    refreshFooter.stateLabel.textColor = [UIColor lightGrayColor];
//    [refreshFooter setTitle:@"别扯了，已经到底了~" forState:MJRefreshStateNoMoreData];
//    
//    self.mj_footer = refreshFooter;
//}
//
//@end
