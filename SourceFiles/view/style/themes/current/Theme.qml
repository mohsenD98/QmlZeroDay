import QtQuick 2.12

QtObject
{
    property var model: value
    property color windowBg: model.windowBg
    property color windowFg: model.windowFg
    property color windowBgOver: model.windowBgOver
    property color windowBgRipple: model.windowBgRipple
    property color windowFgOver: model.windowFgOver
    property color windowSubTextFg: model.windowSubTextFg
    property color windowSubTextFgOver: model.windowSubTextFgOver
    property color windowBoldFg: model.windowBoldFg
    property color windowBoldFgOver: model.windowBoldFgOver
    property color windowBgActive: model.windowBgActive
    property color windowFgActive: model.windowFgActive
    property color windowActiveTextFg: model.windowActiveTextFg
    property color windowShadowFg: model.windowShadowFg
    property color windowShadowFgFallback: model.windowShadowFgFallback
    property color shadowFg: model.shadowFg
    property color slideFadeOutBg: model.slideFadeOutBg
    property color slideFadeOutShadowFg: model.slideFadeOutShadowFg
    property color imageBg: model.imageBg
    property color imageBgTransparent: model.imageBgTransparent
    property color activeButtonBg: model.activeButtonBg
    property color activeButtonBgOver: model.activeButtonBgOver
    property color activeButtonBgRipple: model.activeButtonBgRipple
    property color activeButtonFg: model.activeButtonFg
    property color activeButtonFgOver: model.activeButtonFgOver
    property color activeButtonSecondaryFg: model.activeButtonSecondaryFg
    property color activeButtonSecondaryFgOver: model.activeButtonSecondaryFgOver
    property color activeLineFg: model.activeLineFg
    property color activeLineFgError: model.activeLineFgError
    property color lightButtonBg: model.lightButtonBg
    property color lightButtonBgOver: model.lightButtonBgOver
    property color lightButtonBgRipple: model.lightButtonBgRipple
    property color lightButtonFg: model.lightButtonFg
    property color lightButtonFgOver: model.lightButtonFgOver
    property color attentionButtonFg: model.attentionButtonFg
    property color attentionButtonFgOver: model.attentionButtonFgOver
    property color attentionButtonBgOver: model.attentionButtonBgOver
    property color attentionButtonBgRipple: model.attentionButtonBgRipple
//    property color outlineButtonBg: model.outlineButtonBg
//    property color outlineButtonBgOver: model.outlineButtonBgOver
//    property color outlineButtonOutlineFg: model.outlineButtonOutlineFg
//    property color outlineButtonBgRipple: model.outlineButtonBgRipple
    property color menuBg: model.menuBg
    property color menuBgOver: model.menuBgOver
    property color menuBgRipple: model.menuBgRipple
    property color menuIconFg: model.menuIconFg
    property color menuIconFgOver: model.menuIconFgOver
    property color menuSubmenuArrowFg: model.menuSubmenuArrowFg
    property color menuFgDisabled: model.menuFgDisabled
    property color menuSeparatorFg: model.menuSeparatorFg
    property color scrollBarBg: model.scrollBarBg
    property color scrollBarBgOver: model.scrollBarBgOver
    property color scrollBg: model.scrollBg
    property color scrollBgOver: model.scrollBgOver
    property color smallCloseIconFg: model.smallCloseIconFg
    property color smallCloseIconFgOver: model.smallCloseIconFgOver
    property color radialFg: model.radialFg
    property color radialBg: model.radialBg
    property color placeholderFg: model.placeholderFg
    property color placeholderFgActive: model.placeholderFgActive
    property color inputBorderFg: model.inputBorderFg
    property color filterInputBorderFg: model.filterInputBorderFg
    property color filterInputInactiveBg: model.filterInputInactiveBg
    property color checkboxFg: model.checkboxFg
    property color sliderBgInactive: model.sliderBgInactive
    property color sliderBgActive: model.sliderBgActive
    property color tooltipBg: model.tooltipBg
    property color tooltipFg: model.tooltipFg
    property color tooltipBorderFg: model.tooltipBorderFg
    property color titleShadow: model.titleShadow
    property color titleBg: model.titleBg
    property color titleBgActive: model.titleBgActive
    property color titleButtonBg: model.titleButtonBg
    property color titleButtonFg: model.titleButtonFg
    property color titleButtonBgOver: model.titleButtonBgOver
    property color titleButtonFgOver: model.titleButtonFgOver
    property color titleButtonBgActive: model.titleButtonBgActive
    property color titleButtonFgActive: model.titleButtonFgActive
    property color titleButtonBgActiveOver: model.titleButtonBgActiveOver
    property color titleButtonFgActiveOver: model.titleButtonFgActiveOver
    property color titleButtonCloseBg: model.titleButtonCloseBg
    property color titleButtonCloseFg: model.titleButtonCloseFg
    property color titleButtonCloseBgOver: model.titleButtonCloseBgOver
    property color titleButtonCloseFgOver: model.titleButtonCloseFgOver
    property color titleButtonCloseBgActive: model.titleButtonCloseBgActive
    property color titleButtonCloseFgActive: model.titleButtonCloseFgActive
    property color titleButtonCloseBgActiveOver: model.titleButtonCloseBgActiveOver
    property color titleButtonCloseFgActiveOver: model.titleButtonCloseFgActiveOver
    property color titleFg: model.titleFg
    property color titleFgActive: model.titleFgActive
    property color trayCounterBg: model.trayCounterBg
    property color trayCounterBgMute: model.trayCounterBgMute
    property color trayCounterFg: model.trayCounterFg
    property color trayCounterBgMacInvert: model.trayCounterBgMacInvert
    property color trayCounterFgMacInvert: model.trayCounterFgMacInvert
    property color layerBg: model.layerBg
    property color cancelIconFg: model.cancelIconFg
    property color cancelIconFgOver: model.cancelIconFgOver
    property color boxBg: model.boxBg
    property color boxTextFg: model.boxTextFg
    property color boxTextFgGood: model.boxTextFgGood
    property color boxTextFgError: model.boxTextFgError
    property color boxTitleFg: model.boxTitleFg
    property color boxSearchBg: model.boxSearchBg
    property color boxTitleAdditionalFg: model.boxTitleAdditionalFg
    property color boxTitleCloseFg: model.boxTitleCloseFg
    property color boxTitleCloseFgOver: model.boxTitleCloseFgOver
    property color membersAboutLimitFg: model.membersAboutLimitFg
    property color contactsBg: model.contactsBg
    property color contactsBgOver: model.contactsBgOver
    property color contactsNameFg: model.contactsNameFg
    property color contactsStatusFg: model.contactsStatusFg
    property color contactsStatusFgOver: model.contactsStatusFgOver
    property color contactsStatusFgOnline: model.contactsStatusFgOnline
    property color photoCropFadeBg: model.photoCropFadeBg
    property color photoCropPointFg: model.photoCropPointFg
    property color callArrowFg: model.callArrowFg
    property color callArrowMissedFg: model.callArrowMissedFg
    property color introBg: model.introBg
    property color introTitleFg: model.introTitleFg
    property color introDescriptionFg: model.introDescriptionFg
    property color introErrorFg: model.introErrorFg
    property color introCoverTopBg: model.introCoverTopBg
    property color introCoverBottomBg: model.introCoverBottomBg
    property color introCoverIconsFg: model.introCoverIconsFg
    property color introCoverPlaneTrace: model.introCoverPlaneTrace
    property color introCoverPlaneInner: model.introCoverPlaneInner
    property color introCoverPlaneOuter: model.introCoverPlaneOuter
    property color introCoverPlaneTop: model.introCoverPlaneTop
    property color dialogsMenuIconFg: model.dialogsMenuIconFg
    property color dialogsMenuIconFgOver: model.dialogsMenuIconFgOver
    property color dialogsBg: model.dialogsBg
    property color dialogsNameFg: model.dialogsNameFg
    property color dialogsChatIconFg: model.dialogsChatIconFg
    property color dialogsDateFg: model.dialogsDateFg
    property color dialogsTextFg: model.dialogsTextFg
    property color dialogsTextFgService: model.dialogsTextFgService
    property color dialogsDraftFg: model.dialogsDraftFg
    property color dialogsVerifiedIconBg: model.dialogsVerifiedIconBg
    property color dialogsVerifiedIconFg: model.dialogsVerifiedIconFg
    property color dialogsSendingIconFg: model.dialogsSendingIconFg
    property color dialogsSentIconFg: model.dialogsSentIconFg
    property color dialogsUnreadBg: model.dialogsUnreadBg
    property color dialogsUnreadBgMuted: model.dialogsUnreadBgMuted
    property color dialogsUnreadFg: model.dialogsUnreadFg
    property color dialogsBgOver: model.dialogsBgOver
    property color dialogsOnlineBadgeFg: model.dialogsOnlineBadgeFg
    property color dialogsNameFgOver: model.dialogsNameFgOver
    property color dialogsChatIconFgOver: model.dialogsChatIconFgOver
    property color dialogsDateFgOver: model.dialogsDateFgOver
    property color dialogsTextFgOver: model.dialogsTextFgOver
    property color dialogsTextFgServiceOver: model.dialogsTextFgServiceOver
    property color dialogsDraftFgOver: model.dialogsDraftFgOver
    property color dialogsVerifiedIconBgOver: model.dialogsVerifiedIconBgOver
    property color dialogsVerifiedIconFgOver: model.dialogsVerifiedIconFgOver
    property color dialogsSendingIconFgOver: model.dialogsSendingIconFgOver
    property color dialogsSentIconFgOver: model.dialogsSentIconFgOver
    property color dialogsUnreadBgOver: model.dialogsUnreadBgOver
    property color dialogsUnreadBgMutedOver: model.dialogsUnreadBgMutedOver
    property color dialogsUnreadFgOver: model.dialogsUnreadFgOver
    property color dialogsBgActive: model.dialogsBgActive
    property color dialogsNameFgActive: model.dialogsNameFgActive
    property color dialogsChatIconFgActive: model.dialogsChatIconFgActive
    property color dialogsDateFgActive: model.dialogsDateFgActive
    property color dialogsTextFgActive: model.dialogsTextFgActive
    property color dialogsTextFgServiceActive: model.dialogsTextFgServiceActive
    property color dialogsDraftFgActive: model.dialogsDraftFgActive
    property color dialogsVerifiedIconBgActive: model.dialogsVerifiedIconBgActive
    property color dialogsVerifiedIconFgActive: model.dialogsVerifiedIconFgActive
    property color dialogsSendingIconFgActive: model.dialogsSendingIconFgActive
    property color dialogsSentIconFgActive: model.dialogsSentIconFgActive
    property color dialogsUnreadBgActive: model.dialogsUnreadBgActive
    property color dialogsUnreadBgMutedActive: model.dialogsUnreadBgMutedActive
    property color dialogsUnreadFgActive: model.dialogsUnreadFgActive
    property color dialogsOnlineBadgeFgActive: model.dialogsOnlineBadgeFgActive
    property color dialogsRippleBg: model.dialogsRippleBg
    property color dialogsRippleBgActive: model.dialogsRippleBgActive
    property color dialogsForwardBg: model.dialogsForwardBg
    property color dialogsForwardFg: model.dialogsForwardFg
    property color searchedBarBg: model.searchedBarBg
    property color searchedBarFg: model.searchedBarFg
    property color topBarBg: model.topBarBg
    property color emojiPanBg: model.emojiPanBg
    property color emojiPanCategories: model.emojiPanCategories
    property color emojiPanHeaderFg: model.emojiPanHeaderFg
    property color emojiPanHeaderBg: model.emojiPanHeaderBg
    property color stickerPanDeleteBg: model.stickerPanDeleteBg
    property color stickerPanDeleteFg: model.stickerPanDeleteFg
    property color stickerPreviewBg: model.stickerPreviewBg
    property color historyTextInFg: model.historyTextInFg
    property color historyTextInFgSelected: model.historyTextInFgSelected
    property color historyTextOutFg: model.historyTextOutFg
    property color historyTextOutFgSelected: model.historyTextOutFgSelected
    property color historyLinkInFg: model.historyLinkInFg
    property color historyLinkInFgSelected: model.historyLinkInFgSelected
    property color historyLinkOutFg: model.historyLinkOutFg
    property color historyLinkOutFgSelected: model.historyLinkOutFgSelected
    property color historyFileNameInFg: model.historyFileNameInFg
    property color historyFileNameInFgSelected: model.historyFileNameInFgSelected
    property color historyFileNameOutFg: model.historyFileNameOutFg
    property color historyFileNameOutFgSelected: model.historyFileNameOutFgSelected
    property color historyOutIconFg: model.historyOutIconFg
    property color historyOutIconFgSelected: model.historyOutIconFgSelected
    property color historyIconFgInverted: model.historyIconFgInverted
    property color historySendingOutIconFg: model.historySendingOutIconFg
    property color historySendingInIconFg: model.historySendingInIconFg
    property color historySendingInvertedIconFg: model.historySendingInvertedIconFg
    property color historyCallArrowInFg: model.historyCallArrowInFg
    property color historyCallArrowInFgSelected: model.historyCallArrowInFgSelected
    property color historyCallArrowMissedInFg: model.historyCallArrowMissedInFg
    property color historyCallArrowMissedInFgSelected: model.historyCallArrowMissedInFgSelected
    property color historyCallArrowOutFg: model.historyCallArrowOutFg
    property color historyCallArrowOutFgSelected: model.historyCallArrowOutFgSelected
    property color historyUnreadBarBg: model.historyUnreadBarBg
    property color historyUnreadBarBorder: model.historyUnreadBarBorder
    property color historyUnreadBarFg: model.historyUnreadBarFg
    property color historyForwardChooseBg: model.historyForwardChooseBg
    property color historyForwardChooseFg: model.historyForwardChooseFg
    property color historyPeer1NameFg: model.historyPeer1NameFg
    property color historyPeer1NameFgSelected: model.historyPeer1NameFgSelected
    property color historyPeer1UserpicBg: model.historyPeer1UserpicBg
    property color historyPeer2NameFg: model.historyPeer2NameFg
    property color historyPeer2NameFgSelected: model.historyPeer2NameFgSelected
    property color historyPeer2UserpicBg: model.historyPeer2UserpicBg
    property color historyPeer3NameFg: model.historyPeer3NameFg
    property color historyPeer3NameFgSelected: model.historyPeer3NameFgSelected
    property color historyPeer3UserpicBg: model.historyPeer3UserpicBg
    property color historyPeer4NameFg: model.historyPeer4NameFg
    property color historyPeer4NameFgSelected: model.historyPeer4NameFgSelected
    property color historyPeer4UserpicBg: model.historyPeer4UserpicBg
    property color historyPeer5NameFg: model.historyPeer5NameFg
    property color historyPeer5NameFgSelected: model.historyPeer5NameFgSelected
    property color historyPeer5UserpicBg: model.historyPeer5UserpicBg
    property color historyPeer6NameFg: model.historyPeer6NameFg
    property color historyPeer6NameFgSelected: model.historyPeer6NameFgSelected
    property color historyPeer6UserpicBg: model.historyPeer6UserpicBg
    property color historyPeer7NameFg: model.historyPeer7NameFg
    property color historyPeer7NameFgSelected: model.historyPeer7NameFgSelected
    property color historyPeer7UserpicBg: model.historyPeer7UserpicBg
    property color historyPeer8NameFg: model.historyPeer8NameFg
    property color historyPeer8NameFgSelected: model.historyPeer8NameFgSelected
    property color historyPeer8UserpicBg: model.historyPeer8UserpicBg
    property color historyPeerUserpicFg: model.historyPeerUserpicFg
    property color historyScrollBarBg: model.historyScrollBarBg
    property color historyScrollBarBgOver: model.historyScrollBarBgOver
    property color historyScrollBg: model.historyScrollBg
    property color historyScrollBgOver: model.historyScrollBgOver
    property color msgInBg: model.msgInBg
    property color msgInBgSelected: model.msgInBgSelected
    property color msgOutBg: model.msgOutBg
    property color msgOutBgSelected: model.msgOutBgSelected
    property color msgSelectOverlay: model.msgSelectOverlay
    property color msgStickerOverlay: model.msgStickerOverlay
    property color msgInServiceFg: model.msgInServiceFg
    property color msgInServiceFgSelected: model.msgInServiceFgSelected
    property color msgOutServiceFg: model.msgOutServiceFg
    property color msgOutServiceFgSelected: model.msgOutServiceFgSelected
    property color msgInShadow: model.msgInShadow
    property color msgInShadowSelected: model.msgInShadowSelected
    property color msgOutShadow: model.msgOutShadow
    property color msgOutShadowSelected: model.msgOutShadowSelected
    property color msgInDateFg: model.msgInDateFg
    property color msgInDateFgSelected: model.msgInDateFgSelected
    property color msgOutDateFg: model.msgOutDateFg
    property color msgOutDateFgSelected: model.msgOutDateFgSelected
    property color msgServiceFg: model.msgServiceFg
    property color msgServiceBg: model.msgServiceBg
    property color msgServiceBgSelected: model.msgServiceBgSelected
    property color msgInReplyBarColor: model.msgInReplyBarColor
    property color msgInReplyBarSelColor: model.msgInReplyBarSelColor
    property color msgOutReplyBarColor: model.msgOutReplyBarColor
    property color msgOutReplyBarSelColor: model.msgOutReplyBarSelColor
    property color msgImgReplyBarColor: model.msgImgReplyBarColor
    property color msgInMonoFg: model.msgInMonoFg
    property color msgOutMonoFg: model.msgOutMonoFg
    property color msgInMonoFgSelected: model.msgInMonoFgSelected
    property color msgOutMonoFgSelected: model.msgOutMonoFgSelected
    property color msgDateImgFg: model.msgDateImgFg
    property color msgDateImgBg: model.msgDateImgBg
    property color msgDateImgBgOver: model.msgDateImgBgOver
    property color msgDateImgBgSelected: model.msgDateImgBgSelected
    property color msgFileThumbLinkInFg: model.msgFileThumbLinkInFg
    property color msgFileThumbLinkInFgSelected: model.msgFileThumbLinkInFgSelected
    property color msgFileThumbLinkOutFg: model.msgFileThumbLinkOutFg
    property color msgFileThumbLinkOutFgSelected: model.msgFileThumbLinkOutFgSelected
    property color msgFileInBg: model.msgFileInBg
    property color msgFileInBgOver: model.msgFileInBgOver
    property color msgFileInBgSelected: model.msgFileInBgSelected
    property color msgFileOutBg: model.msgFileOutBg
    property color msgFileOutBgOver: model.msgFileOutBgOver
    property color msgFileOutBgSelected: model.msgFileOutBgSelected
    property color msgFile1Bg: model.msgFile1Bg
    property color msgFile1BgDark: model.msgFile1BgDark
    property color msgFile1BgOver: model.msgFile1BgOver
    property color msgFile1BgSelected: model.msgFile1BgSelected
    property color msgFile2Bg: model.msgFile2Bg
    property color msgFile2BgDark: model.msgFile2BgDark
    property color msgFile2BgOver: model.msgFile2BgOver
    property color msgFile2BgSelected: model.msgFile2BgSelected
    property color msgFile3Bg: model.msgFile3Bg
    property color msgFile3BgDark: model.msgFile3BgDark
    property color msgFile3BgOver: model.msgFile3BgOver
    property color msgFile3BgSelected: model.msgFile3BgSelected
    property color msgFile4Bg: model.msgFile4Bg
    property color msgFile4BgDark: model.msgFile4BgDark
    property color msgFile4BgOver: model.msgFile4BgOver
    property color msgFile4BgSelected: model.msgFile4BgSelected
    property color historyFileInIconFg: model.historyFileInIconFg
    property color historyFileInIconFgSelected: model.historyFileInIconFgSelected
    property color historyFileInRadialFg: model.historyFileInRadialFg
    property color historyFileInRadialFgSelected: model.historyFileInRadialFgSelected
    property color historyFileOutIconFg: model.historyFileOutIconFg
    property color historyFileOutIconFgSelected: model.historyFileOutIconFgSelected
    property color historyFileOutRadialFg: model.historyFileOutRadialFg
    property color historyFileOutRadialFgSelected: model.historyFileOutRadialFgSelected
    property color historyFileThumbIconFg: model.historyFileThumbIconFg
    property color historyFileThumbIconFgSelected: model.historyFileThumbIconFgSelected
    property color historyFileThumbRadialFg: model.historyFileThumbRadialFg
    property color historyFileThumbRadialFgSelected: model.historyFileThumbRadialFgSelected
    property color historyVideoMessageProgressFg: model.historyVideoMessageProgressFg
    property color msgWaveformInActive: model.msgWaveformInActive
    property color msgWaveformInActiveSelected: model.msgWaveformInActiveSelected
    property color msgWaveformInInactive: model.msgWaveformInInactive
    property color msgWaveformInInactiveSelected: model.msgWaveformInInactiveSelected
    property color msgWaveformOutActive: model.msgWaveformOutActive
    property color msgWaveformOutActiveSelected: model.msgWaveformOutActiveSelected
    property color msgWaveformOutInactive: model.msgWaveformOutInactive
    property color msgWaveformOutInactiveSelected: model.msgWaveformOutInactiveSelected
    property color msgBotKbOverBgAdd: model.msgBotKbOverBgAdd
    property color msgBotKbIconFg: model.msgBotKbIconFg
    property color msgBotKbRippleBg: model.msgBotKbRippleBg
    property color mediaInFg: model.mediaInFg
    property color mediaInFgSelected: model.mediaInFgSelected
    property color mediaOutFg: model.mediaOutFg
    property color mediaOutFgSelected: model.mediaOutFgSelected
    property color youtubePlayIconBg: model.youtubePlayIconBg
    property color youtubePlayIconFg: model.youtubePlayIconFg
    property color videoPlayIconBg: model.videoPlayIconBg
    property color videoPlayIconFg: model.videoPlayIconFg
    property color toastBg: model.toastBg
    property color toastFg: model.toastFg
    property color reportSpamBg: model.reportSpamBg
    property color reportSpamFg: model.reportSpamFg
    property color historyToDownBg: model.historyToDownBg
    property color historyToDownBgOver: model.historyToDownBgOver
    property color historyToDownBgRipple: model.historyToDownBgRipple
    property color historyToDownFg: model.historyToDownFg
    property color historyToDownFgOver: model.historyToDownFgOver
    property color historyToDownShadow: model.historyToDownShadow
    property color historyComposeAreaBg: model.historyComposeAreaBg
    property color historyComposeAreaFg: model.historyComposeAreaFg
    property color historyComposeAreaFgService: model.historyComposeAreaFgService
    property color historyComposeIconFg: model.historyComposeIconFg
    property color historyComposeIconFgOver: model.historyComposeIconFgOver
    property color historySendIconFg: model.historySendIconFg
    property color historySendIconFgOver: model.historySendIconFgOver
    property color historyPinnedBg: model.historyPinnedBg
    property color historyReplyBg: model.historyReplyBg
    property color historyReplyIconFg: model.historyReplyIconFg
    property color historyReplyCancelFg: model.historyReplyCancelFg
    property color historyReplyCancelFgOver: model.historyReplyCancelFgOver
    property color historyComposeButtonBg: model.historyComposeButtonBg
    property color historyComposeButtonBgOver: model.historyComposeButtonBgOver
    property color historyComposeButtonBgRipple: model.historyComposeButtonBgRipple
    property color overviewCheckBg: model.overviewCheckBg
    property color overviewCheckFg: model.overviewCheckFg
    property color overviewCheckFgActive: model.overviewCheckFgActive
    property color overviewPhotoSelectOverlay: model.overviewPhotoSelectOverlay
    property color profileStatusFgOver: model.profileStatusFgOver
    property color profileVerifiedCheckBg: model.profileVerifiedCheckBg
    property color profileVerifiedCheckFg: model.profileVerifiedCheckFg
    property color profileAdminStartFg: model.profileAdminStartFg
    property color notificationsBoxMonitorFg: model.notificationsBoxMonitorFg
    property color notificationsBoxScreenBg: model.notificationsBoxScreenBg
    property color notificationSampleUserpicFg: model.notificationSampleUserpicFg
    property color notificationSampleCloseFg: model.notificationSampleCloseFg
    property color notificationSampleTextFg: model.notificationSampleTextFg
    property color notificationSampleNameFg: model.notificationSampleNameFg
    property color changePhoneSimcardFrom: model.changePhoneSimcardFrom
    property color changePhoneSimcardTo: model.changePhoneSimcardTo
    property color mainMenuBg: model.mainMenuBg
    property color mainMenuCoverBg: model.mainMenuCoverBg
    property color mainMenuCoverFg: model.mainMenuCoverFg
    property color mainMenuCloudFg: model.mainMenuCloudFg
    property color mainMenuCloudBg: model.mainMenuCloudBg
    property color mediaPlayerBg: model.mediaPlayerBg
    property color mediaPlayerActiveFg: model.mediaPlayerActiveFg
    property color mediaPlayerInactiveFg: model.mediaPlayerInactiveFg
    property color mediaPlayerDisabledFg: model.mediaPlayerDisabledFg
    property color mediaviewFileBg: model.mediaviewFileBg
    property color mediaviewFileNameFg: model.mediaviewFileNameFg
    property color mediaviewFileSizeFg: model.mediaviewFileSizeFg
    property color mediaviewFileRedCornerFg: model.mediaviewFileRedCornerFg
    property color mediaviewFileYellowCornerFg: model.mediaviewFileYellowCornerFg
    property color mediaviewFileGreenCornerFg: model.mediaviewFileGreenCornerFg
    property color mediaviewFileBlueCornerFg: model.mediaviewFileBlueCornerFg
    property color mediaviewFileExtFg: model.mediaviewFileExtFg
    property color mediaviewMenuBg: model.mediaviewMenuBg
    property color mediaviewMenuBgOver: model.mediaviewMenuBgOver
    property color mediaviewMenuBgRipple: model.mediaviewMenuBgRipple
    property color mediaviewMenuFg: model.mediaviewMenuFg
    property color mediaviewBg: model.mediaviewBg
    property color mediaviewVideoBg: model.mediaviewVideoBg
    property color mediaviewControlBg: model.mediaviewControlBg
    property color mediaviewControlFg: model.mediaviewControlFg
    property color mediaviewCaptionBg: model.mediaviewCaptionBg
    property color mediaviewCaptionFg: model.mediaviewCaptionFg
    property color mediaviewTextLinkFg: model.mediaviewTextLinkFg
    property color mediaviewSaveMsgBg: model.mediaviewSaveMsgBg
    property color mediaviewSaveMsgFg: model.mediaviewSaveMsgFg
    property color mediaviewPlaybackActive: model.mediaviewPlaybackActive
    property color mediaviewPlaybackInactive: model.mediaviewPlaybackInactive
    property color mediaviewPlaybackActiveOver: model.mediaviewPlaybackActiveOver
    property color mediaviewPlaybackInactiveOver: model.mediaviewPlaybackInactiveOver
    property color mediaviewPlaybackProgressFg: model.mediaviewPlaybackProgressFg
    property color mediaviewPlaybackIconFg: model.mediaviewPlaybackIconFg
    property color mediaviewPlaybackIconFgOver: model.mediaviewPlaybackIconFgOver
    property color mediaviewTransparentBg: model.mediaviewTransparentBg
    property color mediaviewTransparentFg: model.mediaviewTransparentFg
    property color notificationBg: model.notificationBg
    property color callBg: model.callBg
    property color callNameFg: model.callNameFg
//    property color callFingerprintBg: model.callFingerprintBg
    property color callStatusFg: model.callStatusFg
    property color callIconFg: model.callIconFg
    property color callAnswerBg: model.callAnswerBg
    property color callAnswerRipple: model.callAnswerRipple
    property color callAnswerBgOuter: model.callAnswerBgOuter
    property color callHangupBg: model.callHangupBg
    property color callHangupRipple: model.callHangupRipple
//    property color callCancelBg: model.callCancelBg
//    property color callCancelFg: model.callCancelFg
//    property color callCancelRipple: model.callCancelRipple
    property color callMuteRipple: model.callMuteRipple
    property color callBarBg: model.callBarBg
    property color callBarMuteRipple: model.callBarMuteRipple
    property color callBarBgMuted: model.callBarBgMuted
    property color callBarUnmuteRipple: model.callBarUnmuteRipple
    property color callBarFg: model.callBarFg
    property color importantTooltipBg: model.importantTooltipBg
    property color importantTooltipFg: model.importantTooltipFg
    property color importantTooltipFgLink: model.importantTooltipFgLink
    property color filterInputActiveBg: model.filterInputActiveBg
    property color botKbBg: model.botKbBg
    property color botKbDownBg: model.botKbDownBg
    property color emojiIconFg: model.emojiIconFg
    property color emojiIconFgActive: model.emojiIconFgActive
    property color overviewCheckBorder: model.overviewCheckBorder
    property color sideBarBg: model.sideBarBg
    property color sideBarBgActive: model.sideBarBgActive
    property color sideBarBgRipple: model.sideBarBgRipple
    property color sideBarTextFg: model.sideBarTextFg
    property color sideBarTextFgActive: model.sideBarTextFgActive
    property color sideBarIconFg: model.sideBarIconFg
    property color sideBarIconFgActive: model.sideBarIconFgActive
    property color sideBarBadgeBg: model.sideBarBadgeBg
    property color sideBarBadgeBgMuted: model.sideBarBadgeBgMuted
    property string chatBackgroundImg: model.chatBackgroundImg
    property string appBackgroundImg: model.appBackgroundImg

    Behavior on windowBg { ColorAnimation { duration: 500 } }
    Behavior on windowFg { ColorAnimation { duration: 500 } }
    Behavior on windowBgOver { ColorAnimation { duration: 500 } }
    Behavior on windowBgRipple { ColorAnimation { duration: 500 } }
    Behavior on windowFgOver { ColorAnimation { duration: 500 } }
    Behavior on windowSubTextFg { ColorAnimation { duration: 500 } }
    Behavior on windowSubTextFgOver { ColorAnimation { duration: 500 } }
    Behavior on windowBoldFg { ColorAnimation { duration: 500 } }
    Behavior on windowBoldFgOver { ColorAnimation { duration: 500 } }
    Behavior on windowBgActive { ColorAnimation { duration: 500 } }
    Behavior on windowFgActive { ColorAnimation { duration: 500 } }
    Behavior on windowActiveTextFg { ColorAnimation { duration: 500 } }
    Behavior on windowShadowFg { ColorAnimation { duration: 500 } }
    Behavior on windowShadowFgFallback { ColorAnimation { duration: 500 } }
    Behavior on shadowFg { ColorAnimation { duration: 500 } }
    Behavior on slideFadeOutBg { ColorAnimation { duration: 500 } }
    Behavior on slideFadeOutShadowFg { ColorAnimation { duration: 500 } }
    Behavior on imageBg { ColorAnimation { duration: 500 } }
    Behavior on imageBgTransparent { ColorAnimation { duration: 500 } }
    Behavior on activeButtonBg { ColorAnimation { duration: 500 } }
    Behavior on activeButtonBgOver { ColorAnimation { duration: 500 } }
    Behavior on activeButtonBgRipple { ColorAnimation { duration: 500 } }
    Behavior on activeButtonFg { ColorAnimation { duration: 500 } }
    Behavior on activeButtonFgOver { ColorAnimation { duration: 500 } }
    Behavior on activeButtonSecondaryFg { ColorAnimation { duration: 500 } }
    Behavior on activeButtonSecondaryFgOver { ColorAnimation { duration: 500 } }
    Behavior on activeLineFg { ColorAnimation { duration: 500 } }
    Behavior on activeLineFgError { ColorAnimation { duration: 500 } }
    Behavior on lightButtonBg { ColorAnimation { duration: 500 } }
    Behavior on lightButtonBgOver { ColorAnimation { duration: 500 } }
    Behavior on lightButtonBgRipple { ColorAnimation { duration: 500 } }
    Behavior on lightButtonFg { ColorAnimation { duration: 500 } }
    Behavior on lightButtonFgOver { ColorAnimation { duration: 500 } }
    Behavior on attentionButtonFg { ColorAnimation { duration: 500 } }
    Behavior on attentionButtonFgOver { ColorAnimation { duration: 500 } }
    Behavior on attentionButtonBgOver { ColorAnimation { duration: 500 } }
    Behavior on attentionButtonBgRipple { ColorAnimation { duration: 500 } }
//    Behavior on outlineButtonBg { ColorAnimation { duration: 500 } }
//    Behavior on outlineButtonBgOver { ColorAnimation { duration: 500 } }
//    Behavior on outlineButtonOutlineFg { ColorAnimation { duration: 500 } }
//    Behavior on outlineButtonBgRipple { ColorAnimation { duration: 500 } }
    Behavior on menuBg { ColorAnimation { duration: 500 } }
    Behavior on menuBgOver { ColorAnimation { duration: 500 } }
    Behavior on menuBgRipple { ColorAnimation { duration: 500 } }
    Behavior on menuIconFg { ColorAnimation { duration: 500 } }
    Behavior on menuIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on menuSubmenuArrowFg { ColorAnimation { duration: 500 } }
    Behavior on menuFgDisabled { ColorAnimation { duration: 500 } }
    Behavior on menuSeparatorFg { ColorAnimation { duration: 500 } }
    Behavior on scrollBarBg { ColorAnimation { duration: 500 } }
    Behavior on scrollBarBgOver { ColorAnimation { duration: 500 } }
    Behavior on scrollBg { ColorAnimation { duration: 500 } }
    Behavior on scrollBgOver { ColorAnimation { duration: 500 } }
    Behavior on smallCloseIconFg { ColorAnimation { duration: 500 } }
    Behavior on smallCloseIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on radialFg { ColorAnimation { duration: 500 } }
    Behavior on radialBg { ColorAnimation { duration: 500 } }
    Behavior on placeholderFg { ColorAnimation { duration: 500 } }
    Behavior on placeholderFgActive { ColorAnimation { duration: 500 } }
    Behavior on inputBorderFg { ColorAnimation { duration: 500 } }
    Behavior on filterInputBorderFg { ColorAnimation { duration: 500 } }
    Behavior on filterInputInactiveBg { ColorAnimation { duration: 500 } }
    Behavior on checkboxFg { ColorAnimation { duration: 500 } }
    Behavior on sliderBgInactive { ColorAnimation { duration: 500 } }
    Behavior on sliderBgActive { ColorAnimation { duration: 500 } }
    Behavior on tooltipBg { ColorAnimation { duration: 500 } }
    Behavior on tooltipFg { ColorAnimation { duration: 500 } }
    Behavior on tooltipBorderFg { ColorAnimation { duration: 500 } }
    Behavior on titleShadow { ColorAnimation { duration: 500 } }
    Behavior on titleBg { ColorAnimation { duration: 500 } }
    Behavior on titleBgActive { ColorAnimation { duration: 500 } }
    Behavior on titleButtonBg { ColorAnimation { duration: 500 } }
    Behavior on titleButtonFg { ColorAnimation { duration: 500 } }
    Behavior on titleButtonBgOver { ColorAnimation { duration: 500 } }
    Behavior on titleButtonFgOver { ColorAnimation { duration: 500 } }
    Behavior on titleButtonBgActive { ColorAnimation { duration: 500 } }
    Behavior on titleButtonFgActive { ColorAnimation { duration: 500 } }
    Behavior on titleButtonBgActiveOver { ColorAnimation { duration: 500 } }
    Behavior on titleButtonFgActiveOver { ColorAnimation { duration: 500 } }
    Behavior on titleButtonCloseBg { ColorAnimation { duration: 500 } }
    Behavior on titleButtonCloseFg { ColorAnimation { duration: 500 } }
    Behavior on titleButtonCloseBgOver { ColorAnimation { duration: 500 } }
    Behavior on titleButtonCloseFgOver { ColorAnimation { duration: 500 } }
    Behavior on titleButtonCloseBgActive { ColorAnimation { duration: 500 } }
    Behavior on titleButtonCloseFgActive { ColorAnimation { duration: 500 } }
    Behavior on titleButtonCloseBgActiveOver { ColorAnimation { duration: 500 } }
    Behavior on titleButtonCloseFgActiveOver { ColorAnimation { duration: 500 } }
    Behavior on titleFg { ColorAnimation { duration: 500 } }
    Behavior on titleFgActive { ColorAnimation { duration: 500 } }
    Behavior on trayCounterBg { ColorAnimation { duration: 500 } }
    Behavior on trayCounterBgMute { ColorAnimation { duration: 500 } }
    Behavior on trayCounterFg { ColorAnimation { duration: 500 } }
    Behavior on trayCounterBgMacInvert { ColorAnimation { duration: 500 } }
    Behavior on trayCounterFgMacInvert { ColorAnimation { duration: 500 } }
    Behavior on layerBg { ColorAnimation { duration: 500 } }
    Behavior on cancelIconFg { ColorAnimation { duration: 500 } }
    Behavior on cancelIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on boxBg { ColorAnimation { duration: 500 } }
    Behavior on boxTextFg { ColorAnimation { duration: 500 } }
    Behavior on boxTextFgGood { ColorAnimation { duration: 500 } }
    Behavior on boxTextFgError { ColorAnimation { duration: 500 } }
    Behavior on boxTitleFg { ColorAnimation { duration: 500 } }
    Behavior on boxSearchBg { ColorAnimation { duration: 500 } }
    Behavior on boxTitleAdditionalFg { ColorAnimation { duration: 500 } }
    Behavior on boxTitleCloseFg { ColorAnimation { duration: 500 } }
    Behavior on boxTitleCloseFgOver { ColorAnimation { duration: 500 } }
    Behavior on membersAboutLimitFg { ColorAnimation { duration: 500 } }
    Behavior on contactsBg { ColorAnimation { duration: 500 } }
    Behavior on contactsBgOver { ColorAnimation { duration: 500 } }
    Behavior on contactsNameFg { ColorAnimation { duration: 500 } }
    Behavior on contactsStatusFg { ColorAnimation { duration: 500 } }
    Behavior on contactsStatusFgOver { ColorAnimation { duration: 500 } }
    Behavior on contactsStatusFgOnline { ColorAnimation { duration: 500 } }
    Behavior on photoCropFadeBg { ColorAnimation { duration: 500 } }
    Behavior on photoCropPointFg { ColorAnimation { duration: 500 } }
    Behavior on callArrowFg { ColorAnimation { duration: 500 } }
    Behavior on callArrowMissedFg { ColorAnimation { duration: 500 } }
    Behavior on introBg { ColorAnimation { duration: 500 } }
    Behavior on introTitleFg { ColorAnimation { duration: 500 } }
    Behavior on introDescriptionFg { ColorAnimation { duration: 500 } }
    Behavior on introErrorFg { ColorAnimation { duration: 500 } }
    Behavior on introCoverTopBg { ColorAnimation { duration: 500 } }
    Behavior on introCoverBottomBg { ColorAnimation { duration: 500 } }
    Behavior on introCoverIconsFg { ColorAnimation { duration: 500 } }
    Behavior on introCoverPlaneTrace { ColorAnimation { duration: 500 } }
    Behavior on introCoverPlaneInner { ColorAnimation { duration: 500 } }
    Behavior on introCoverPlaneOuter { ColorAnimation { duration: 500 } }
    Behavior on introCoverPlaneTop { ColorAnimation { duration: 500 } }
    Behavior on dialogsMenuIconFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsMenuIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsBg { ColorAnimation { duration: 500 } }
    Behavior on dialogsNameFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsChatIconFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsDateFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsTextFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsTextFgService { ColorAnimation { duration: 500 } }
    Behavior on dialogsDraftFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsVerifiedIconBg { ColorAnimation { duration: 500 } }
    Behavior on dialogsVerifiedIconFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsSendingIconFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsSentIconFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadBg { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadBgMuted { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsBgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsOnlineBadgeFg { ColorAnimation { duration: 500 } }
    Behavior on dialogsNameFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsChatIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsDateFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsTextFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsTextFgServiceOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsDraftFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsVerifiedIconBgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsVerifiedIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsSendingIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsSentIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadBgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadBgMutedOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadFgOver { ColorAnimation { duration: 500 } }
    Behavior on dialogsBgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsNameFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsChatIconFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsDateFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsTextFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsTextFgServiceActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsDraftFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsVerifiedIconBgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsVerifiedIconFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsSendingIconFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsSentIconFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadBgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadBgMutedActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsUnreadFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsOnlineBadgeFgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsRippleBg { ColorAnimation { duration: 500 } }
    Behavior on dialogsRippleBgActive { ColorAnimation { duration: 500 } }
    Behavior on dialogsForwardBg { ColorAnimation { duration: 500 } }
    Behavior on dialogsForwardFg { ColorAnimation { duration: 500 } }
    Behavior on searchedBarBg { ColorAnimation { duration: 500 } }
    Behavior on searchedBarFg { ColorAnimation { duration: 500 } }
    Behavior on topBarBg { ColorAnimation { duration: 500 } }
    Behavior on emojiPanBg { ColorAnimation { duration: 500 } }
    Behavior on emojiPanCategories { ColorAnimation { duration: 500 } }
    Behavior on emojiPanHeaderFg { ColorAnimation { duration: 500 } }
    Behavior on emojiPanHeaderBg { ColorAnimation { duration: 500 } }
    Behavior on stickerPanDeleteBg { ColorAnimation { duration: 500 } }
    Behavior on stickerPanDeleteFg { ColorAnimation { duration: 500 } }
    Behavior on stickerPreviewBg { ColorAnimation { duration: 500 } }
    Behavior on historyTextInFg { ColorAnimation { duration: 500 } }
    Behavior on historyTextInFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyTextOutFg { ColorAnimation { duration: 500 } }
    Behavior on historyTextOutFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyLinkInFg { ColorAnimation { duration: 500 } }
    Behavior on historyLinkInFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyLinkOutFg { ColorAnimation { duration: 500 } }
    Behavior on historyLinkOutFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyFileNameInFg { ColorAnimation { duration: 500 } }
    Behavior on historyFileNameInFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyFileNameOutFg { ColorAnimation { duration: 500 } }
    Behavior on historyFileNameOutFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyOutIconFg { ColorAnimation { duration: 500 } }
    Behavior on historyOutIconFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyIconFgInverted { ColorAnimation { duration: 500 } }
    Behavior on historySendingOutIconFg { ColorAnimation { duration: 500 } }
    Behavior on historySendingInIconFg { ColorAnimation { duration: 500 } }
    Behavior on historySendingInvertedIconFg { ColorAnimation { duration: 500 } }
    Behavior on historyCallArrowInFg { ColorAnimation { duration: 500 } }
    Behavior on historyCallArrowInFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyCallArrowMissedInFg { ColorAnimation { duration: 500 } }
    Behavior on historyCallArrowMissedInFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyCallArrowOutFg { ColorAnimation { duration: 500 } }
    Behavior on historyCallArrowOutFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyUnreadBarBg { ColorAnimation { duration: 500 } }
    Behavior on historyUnreadBarBorder { ColorAnimation { duration: 500 } }
    Behavior on historyUnreadBarFg { ColorAnimation { duration: 500 } }
    Behavior on historyForwardChooseBg { ColorAnimation { duration: 500 } }
    Behavior on historyForwardChooseFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer1NameFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer1NameFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyPeer1UserpicBg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer2NameFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer2NameFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyPeer2UserpicBg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer3NameFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer3NameFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyPeer3UserpicBg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer4NameFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer4NameFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyPeer4UserpicBg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer5NameFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer5NameFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyPeer5UserpicBg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer6NameFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer6NameFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyPeer6UserpicBg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer7NameFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer7NameFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyPeer7UserpicBg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer8NameFg { ColorAnimation { duration: 500 } }
    Behavior on historyPeer8NameFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyPeer8UserpicBg { ColorAnimation { duration: 500 } }
    Behavior on historyPeerUserpicFg { ColorAnimation { duration: 500 } }
    Behavior on historyScrollBarBg { ColorAnimation { duration: 500 } }
    Behavior on historyScrollBarBgOver { ColorAnimation { duration: 500 } }
    Behavior on historyScrollBg { ColorAnimation { duration: 500 } }
    Behavior on historyScrollBgOver { ColorAnimation { duration: 500 } }
    Behavior on msgInBg { ColorAnimation { duration: 500 } }
    Behavior on msgInBgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgOutBg { ColorAnimation { duration: 500 } }
    Behavior on msgOutBgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgSelectOverlay { ColorAnimation { duration: 500 } }
    Behavior on msgStickerOverlay { ColorAnimation { duration: 500 } }
    Behavior on msgInServiceFg { ColorAnimation { duration: 500 } }
    Behavior on msgInServiceFgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgOutServiceFg { ColorAnimation { duration: 500 } }
    Behavior on msgOutServiceFgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgInShadow { ColorAnimation { duration: 500 } }
    Behavior on msgInShadowSelected { ColorAnimation { duration: 500 } }
    Behavior on msgOutShadow { ColorAnimation { duration: 500 } }
    Behavior on msgOutShadowSelected { ColorAnimation { duration: 500 } }
    Behavior on msgInDateFg { ColorAnimation { duration: 500 } }
    Behavior on msgInDateFgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgOutDateFg { ColorAnimation { duration: 500 } }
    Behavior on msgOutDateFgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgServiceFg { ColorAnimation { duration: 500 } }
    Behavior on msgServiceBg { ColorAnimation { duration: 500 } }
    Behavior on msgServiceBgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgInReplyBarColor { ColorAnimation { duration: 500 } }
    Behavior on msgInReplyBarSelColor { ColorAnimation { duration: 500 } }
    Behavior on msgOutReplyBarColor { ColorAnimation { duration: 500 } }
    Behavior on msgOutReplyBarSelColor { ColorAnimation { duration: 500 } }
    Behavior on msgImgReplyBarColor { ColorAnimation { duration: 500 } }
    Behavior on msgInMonoFg { ColorAnimation { duration: 500 } }
    Behavior on msgOutMonoFg { ColorAnimation { duration: 500 } }
    Behavior on msgInMonoFgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgOutMonoFgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgDateImgFg { ColorAnimation { duration: 500 } }
    Behavior on msgDateImgBg { ColorAnimation { duration: 500 } }
    Behavior on msgDateImgBgOver { ColorAnimation { duration: 500 } }
    Behavior on msgDateImgBgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgFileThumbLinkInFg { ColorAnimation { duration: 500 } }
    Behavior on msgFileThumbLinkInFgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgFileThumbLinkOutFg { ColorAnimation { duration: 500 } }
    Behavior on msgFileThumbLinkOutFgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgFileInBg { ColorAnimation { duration: 500 } }
    Behavior on msgFileInBgOver { ColorAnimation { duration: 500 } }
    Behavior on msgFileInBgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgFileOutBg { ColorAnimation { duration: 500 } }
    Behavior on msgFileOutBgOver { ColorAnimation { duration: 500 } }
    Behavior on msgFileOutBgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgFile1Bg { ColorAnimation { duration: 500 } }
    Behavior on msgFile1BgDark { ColorAnimation { duration: 500 } }
    Behavior on msgFile1BgOver { ColorAnimation { duration: 500 } }
    Behavior on msgFile1BgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgFile2Bg { ColorAnimation { duration: 500 } }
    Behavior on msgFile2BgDark { ColorAnimation { duration: 500 } }
    Behavior on msgFile2BgOver { ColorAnimation { duration: 500 } }
    Behavior on msgFile2BgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgFile3Bg { ColorAnimation { duration: 500 } }
    Behavior on msgFile3BgDark { ColorAnimation { duration: 500 } }
    Behavior on msgFile3BgOver { ColorAnimation { duration: 500 } }
    Behavior on msgFile3BgSelected { ColorAnimation { duration: 500 } }
    Behavior on msgFile4Bg { ColorAnimation { duration: 500 } }
    Behavior on msgFile4BgDark { ColorAnimation { duration: 500 } }
    Behavior on msgFile4BgOver { ColorAnimation { duration: 500 } }
    Behavior on msgFile4BgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyFileInIconFg { ColorAnimation { duration: 500 } }
    Behavior on historyFileInIconFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyFileInRadialFg { ColorAnimation { duration: 500 } }
    Behavior on historyFileInRadialFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyFileOutIconFg { ColorAnimation { duration: 500 } }
    Behavior on historyFileOutIconFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyFileOutRadialFg { ColorAnimation { duration: 500 } }
    Behavior on historyFileOutRadialFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyFileThumbIconFg { ColorAnimation { duration: 500 } }
    Behavior on historyFileThumbIconFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyFileThumbRadialFg { ColorAnimation { duration: 500 } }
    Behavior on historyFileThumbRadialFgSelected { ColorAnimation { duration: 500 } }
    Behavior on historyVideoMessageProgressFg { ColorAnimation { duration: 500 } }
    Behavior on msgWaveformInActive { ColorAnimation { duration: 500 } }
    Behavior on msgWaveformInActiveSelected { ColorAnimation { duration: 500 } }
    Behavior on msgWaveformInInactive { ColorAnimation { duration: 500 } }
    Behavior on msgWaveformInInactiveSelected { ColorAnimation { duration: 500 } }
    Behavior on msgWaveformOutActive { ColorAnimation { duration: 500 } }
    Behavior on msgWaveformOutActiveSelected { ColorAnimation { duration: 500 } }
    Behavior on msgWaveformOutInactive { ColorAnimation { duration: 500 } }
    Behavior on msgWaveformOutInactiveSelected { ColorAnimation { duration: 500 } }
    Behavior on msgBotKbOverBgAdd { ColorAnimation { duration: 500 } }
    Behavior on msgBotKbIconFg { ColorAnimation { duration: 500 } }
    Behavior on msgBotKbRippleBg { ColorAnimation { duration: 500 } }
    Behavior on mediaInFg { ColorAnimation { duration: 500 } }
    Behavior on mediaInFgSelected { ColorAnimation { duration: 500 } }
    Behavior on mediaOutFg { ColorAnimation { duration: 500 } }
    Behavior on mediaOutFgSelected { ColorAnimation { duration: 500 } }
    Behavior on youtubePlayIconBg { ColorAnimation { duration: 500 } }
    Behavior on youtubePlayIconFg { ColorAnimation { duration: 500 } }
    Behavior on videoPlayIconBg { ColorAnimation { duration: 500 } }
    Behavior on videoPlayIconFg { ColorAnimation { duration: 500 } }
    Behavior on toastBg { ColorAnimation { duration: 500 } }
    Behavior on toastFg { ColorAnimation { duration: 500 } }
    Behavior on reportSpamBg { ColorAnimation { duration: 500 } }
    Behavior on reportSpamFg { ColorAnimation { duration: 500 } }
    Behavior on historyToDownBg { ColorAnimation { duration: 500 } }
    Behavior on historyToDownBgOver { ColorAnimation { duration: 500 } }
    Behavior on historyToDownBgRipple { ColorAnimation { duration: 500 } }
    Behavior on historyToDownFg { ColorAnimation { duration: 500 } }
    Behavior on historyToDownFgOver { ColorAnimation { duration: 500 } }
    Behavior on historyToDownShadow { ColorAnimation { duration: 500 } }
    Behavior on historyComposeAreaBg { ColorAnimation { duration: 500 } }
    Behavior on historyComposeAreaFg { ColorAnimation { duration: 500 } }
    Behavior on historyComposeAreaFgService { ColorAnimation { duration: 500 } }
    Behavior on historyComposeIconFg { ColorAnimation { duration: 500 } }
    Behavior on historyComposeIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on historySendIconFg { ColorAnimation { duration: 500 } }
    Behavior on historySendIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on historyPinnedBg { ColorAnimation { duration: 500 } }
    Behavior on historyReplyBg { ColorAnimation { duration: 500 } }
    Behavior on historyReplyIconFg { ColorAnimation { duration: 500 } }
    Behavior on historyReplyCancelFg { ColorAnimation { duration: 500 } }
    Behavior on historyReplyCancelFgOver { ColorAnimation { duration: 500 } }
    Behavior on historyComposeButtonBg { ColorAnimation { duration: 500 } }
    Behavior on historyComposeButtonBgOver { ColorAnimation { duration: 500 } }
    Behavior on historyComposeButtonBgRipple { ColorAnimation { duration: 500 } }
    Behavior on overviewCheckBg { ColorAnimation { duration: 500 } }
    Behavior on overviewCheckFg { ColorAnimation { duration: 500 } }
    Behavior on overviewCheckFgActive { ColorAnimation { duration: 500 } }
    Behavior on overviewPhotoSelectOverlay { ColorAnimation { duration: 500 } }
    Behavior on profileStatusFgOver { ColorAnimation { duration: 500 } }
    Behavior on profileVerifiedCheckBg { ColorAnimation { duration: 500 } }
    Behavior on profileVerifiedCheckFg { ColorAnimation { duration: 500 } }
    Behavior on profileAdminStartFg { ColorAnimation { duration: 500 } }
    Behavior on notificationsBoxMonitorFg { ColorAnimation { duration: 500 } }
    Behavior on notificationsBoxScreenBg { ColorAnimation { duration: 500 } }
    Behavior on notificationSampleUserpicFg { ColorAnimation { duration: 500 } }
    Behavior on notificationSampleCloseFg { ColorAnimation { duration: 500 } }
    Behavior on notificationSampleTextFg { ColorAnimation { duration: 500 } }
    Behavior on notificationSampleNameFg { ColorAnimation { duration: 500 } }
    Behavior on changePhoneSimcardFrom { ColorAnimation { duration: 500 } }
    Behavior on changePhoneSimcardTo { ColorAnimation { duration: 500 } }
    Behavior on mainMenuBg { ColorAnimation { duration: 500 } }
    Behavior on mainMenuCoverBg { ColorAnimation { duration: 500 } }
    Behavior on mainMenuCoverFg { ColorAnimation { duration: 500 } }
    Behavior on mainMenuCloudFg { ColorAnimation { duration: 500 } }
    Behavior on mainMenuCloudBg { ColorAnimation { duration: 500 } }
    Behavior on mediaPlayerBg { ColorAnimation { duration: 500 } }
    Behavior on mediaPlayerActiveFg { ColorAnimation { duration: 500 } }
    Behavior on mediaPlayerInactiveFg { ColorAnimation { duration: 500 } }
    Behavior on mediaPlayerDisabledFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewFileBg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewFileNameFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewFileSizeFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewFileRedCornerFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewFileYellowCornerFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewFileGreenCornerFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewFileBlueCornerFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewFileExtFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewMenuBg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewMenuBgOver { ColorAnimation { duration: 500 } }
    Behavior on mediaviewMenuBgRipple { ColorAnimation { duration: 500 } }
    Behavior on mediaviewMenuFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewBg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewVideoBg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewControlBg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewControlFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewCaptionBg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewCaptionFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewTextLinkFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewSaveMsgBg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewSaveMsgFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewPlaybackActive { ColorAnimation { duration: 500 } }
    Behavior on mediaviewPlaybackInactive { ColorAnimation { duration: 500 } }
    Behavior on mediaviewPlaybackActiveOver { ColorAnimation { duration: 500 } }
    Behavior on mediaviewPlaybackInactiveOver { ColorAnimation { duration: 500 } }
    Behavior on mediaviewPlaybackProgressFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewPlaybackIconFg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewPlaybackIconFgOver { ColorAnimation { duration: 500 } }
    Behavior on mediaviewTransparentBg { ColorAnimation { duration: 500 } }
    Behavior on mediaviewTransparentFg { ColorAnimation { duration: 500 } }
    Behavior on notificationBg { ColorAnimation { duration: 500 } }
    Behavior on callBg { ColorAnimation { duration: 500 } }
    Behavior on callNameFg { ColorAnimation { duration: 500 } }
//    Behavior on callFingerprintBg { ColorAnimation { duration: 500 } }
    Behavior on callStatusFg { ColorAnimation { duration: 500 } }
    Behavior on callIconFg { ColorAnimation { duration: 500 } }
    Behavior on callAnswerBg { ColorAnimation { duration: 500 } }
    Behavior on callAnswerRipple { ColorAnimation { duration: 500 } }
    Behavior on callAnswerBgOuter { ColorAnimation { duration: 500 } }
    Behavior on callHangupBg { ColorAnimation { duration: 500 } }
    Behavior on callHangupRipple { ColorAnimation { duration: 500 } }
//    Behavior on callCancelBg { ColorAnimation { duration: 500 } }
//    Behavior on callCancelFg { ColorAnimation { duration: 500 } }
//    Behavior on callCancelRipple { ColorAnimation { duration: 500 } }
    Behavior on callMuteRipple { ColorAnimation { duration: 500 } }
    Behavior on callBarBg { ColorAnimation { duration: 500 } }
    Behavior on callBarMuteRipple { ColorAnimation { duration: 500 } }
    Behavior on callBarBgMuted { ColorAnimation { duration: 500 } }
    Behavior on callBarUnmuteRipple { ColorAnimation { duration: 500 } }
    Behavior on callBarFg { ColorAnimation { duration: 500 } }
    Behavior on importantTooltipBg { ColorAnimation { duration: 500 } }
    Behavior on importantTooltipFg { ColorAnimation { duration: 500 } }
    Behavior on importantTooltipFgLink { ColorAnimation { duration: 500 } }
    Behavior on filterInputActiveBg { ColorAnimation { duration: 500 } }
    Behavior on botKbBg { ColorAnimation { duration: 500 } }
    Behavior on botKbDownBg { ColorAnimation { duration: 500 } }
    Behavior on emojiIconFg { ColorAnimation { duration: 500 } }
    Behavior on emojiIconFgActive { ColorAnimation { duration: 500 } }
    Behavior on overviewCheckBorder { ColorAnimation { duration: 500 } }
    Behavior on sideBarBg { ColorAnimation { duration: 500 } }
    Behavior on sideBarBgActive { ColorAnimation { duration: 500 } }
    Behavior on sideBarBgRipple { ColorAnimation { duration: 500 } }
    Behavior on sideBarTextFg { ColorAnimation { duration: 500 } }
    Behavior on sideBarTextFgActive { ColorAnimation { duration: 500 } }
    Behavior on sideBarIconFg { ColorAnimation { duration: 500 } }
    Behavior on sideBarIconFgActive { ColorAnimation { duration: 500 } }
    Behavior on sideBarBadgeBg { ColorAnimation { duration: 500 } }
    Behavior on sideBarBadgeBgMuted { ColorAnimation { duration: 500 } }
}
// generated with python code:
// inputFile = open("Theme.qml")
// newFile = open("copyTheme.qml", "w")

// names = []
// for line in inputFile.readlines():
//     print(line.split(" ")[2][0:-1])
//     newFile.write(f"property color {line.split(' ')[2][0:-1]}: model.{line.split(' ')[2][0:-1]}\n")
//     names.append(line.split(' ')[2][0:-1] )


// for name in names:
//     newFile.write("Behavior on "+ name+ " { ColorAnimation { duration: 500 } }\n")

// newFile.close()
// inputFile.close()
