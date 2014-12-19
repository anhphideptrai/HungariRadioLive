//
//  Constants.h
//  Hungary Radio Live
//
//  Created by Phi Nguyen on 12/19/14.
//  Copyright (c) 2014 Thien Nguyen. All rights reserved.
//

#ifndef Hungary_Radio_Live_Constants_h
#define Hungary_Radio_Live_Constants_h
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define MAIN_XIB_FILE_NAME (IS_IPAD ? @"iPad_MainViewController" : @"iPhone_MainViewController")
#define CHANNELS_XIB_FILE_NAME (IS_IPAD ? @"iPad_ChannelsViewController" : @"iPhone_ChannelsViewController")
#endif
