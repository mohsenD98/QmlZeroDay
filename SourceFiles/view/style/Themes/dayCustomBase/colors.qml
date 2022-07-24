import QtQuick 2.12

Item
{
	property color windowBg: "#ffffff"
	property color windowFg: "#000000"
	property color windowBgOver: "#f1f1f1"
	property color windowBgRipple: "#e5e5e5"
	property color windowFgOver: windowFg
	property color windowSubTextFg: "#999999"
	property color windowSubTextFgOver: "#919191"
	property color windowBoldFg: "#222222"
	property color windowBoldFgOver: "#222222"
	property color windowBgActive: "#40a7e3"
	property color windowFgActive: "#ffffff"
	property color windowActiveTextFg: "#168acd"
	property color windowShadowFg: "#000000"
	property color windowShadowFgFallback: "#f1f1f1"
	property color shadowFg: "#00000018"
	property color slideFadeOutBg: "#0000003c"
	property color slideFadeOutShadowFg: windowShadowFg
	property color imageBg: "#000000"
	property color imageBgTransparent: "#ffffff"
	property color activeButtonBg: windowBgActive
	property color activeButtonBgOver: "#39a5db"
	property color activeButtonBgRipple: "#2095d0"
	property color activeButtonFg: windowFgActive
	property color activeButtonFgOver: activeButtonFg
	property color activeButtonSecondaryFg: "#cceeff"
	property color activeButtonSecondaryFgOver: activeButtonSecondaryFg
	property color activeLineFg: "#37a1de"
	property color activeLineFgError: "#e48383"
	property color lightButtonBg: windowBg
	property color lightButtonBgOver: "#e3f1fa"
	property color lightButtonBgRipple: "#c9e4f6"
	property color lightButtonFg: windowActiveTextFg
	property color lightButtonFgOver: lightButtonFg
	property color attentionButtonFg: "#d14e4e"
	property color attentionButtonFgOver: "#d14e4e"
	property color attentionButtonBgOver: "#fcdfde"
	property color attentionButtonBgRipple: "#f4c3c2"
	property color menuBg: windowBg
	property color menuBgOver: windowBgOver
	property color menuBgRipple: windowBgRipple
	property color menuIconFg: "#999999"
	property color menuIconFgOver: "#8a8a8a"
	property color menuSubmenuArrowFg: "#373737"
	property color menuFgDisabled: "#cccccc"
	property color menuSeparatorFg: "#f1f1f1"
	property color scrollBarBg: "#00000053"
	property color scrollBarBgOver: "#0000007a"
	property color scrollBg: "#0000001a"
	property color scrollBgOver: "#0000002c"
	property color smallCloseIconFg: "#c7c7c7"
	property color smallCloseIconFgOver: "#a3a3a3"
	property color radialFg: windowFgActive
	property color radialBg: "#00000056"
	property color placeholderFg: windowSubTextFg
	property color placeholderFgActive: "#aaaaaa"
	property color inputBorderFg: "#e0e0e0"
	property color filterInputBorderFg: "#54c3f3"
	property color filterInputActiveBg: windowBg
	property color filterInputInactiveBg: windowBgOver
	property color checkboxFg: "#b3b3b3"
	property color botKbBg: menuBgOver
	property color botKbDownBg: menuBgRipple
	property color botKbColor: windowBoldFgOver
	property color sliderBgInactive: "#e1eaef"
	property color sliderBgActive: windowBgActive
	property color tooltipBg: "#eef2f5"
	property color tooltipFg: "#5d6c80"
	property color tooltipBorderFg: "#c9d1db"
	property color titleShadow: "#00000003"
	property color titleBg: windowBgOver
	property color titleBgActive: titleBg
	property color titleButtonBg: titleBg
	property color titleButtonFg: "#ababab"
	property color titleButtonBgOver: "#e5e5e5"
	property color titleButtonFgOver: "#9a9a9a"
	property color titleButtonBgActive: titleButtonBg
	property color titleButtonFgActive: titleButtonFg
	property color titleButtonBgActiveOver: titleButtonBgOver
	property color titleButtonFgActiveOver: titleButtonFgOver
	property color titleButtonCloseBg: titleButtonBg
	property color titleButtonCloseFg: titleButtonFg
	property color titleButtonCloseBgOver: "#e81123"
	property color titleButtonCloseFgOver: windowFgActive
	property color titleButtonCloseBgActive: titleButtonCloseBg
	property color titleButtonCloseFgActive: titleButtonCloseFg
	property color titleButtonCloseBgActiveOver: titleButtonCloseBgOver
	property color titleButtonCloseFgActiveOver: titleButtonCloseFgOver
	property color titleFg: "#acacac"
	property color titleFgActive: "#3e3c3e"
	property color trayCounterBg: "#f23c34"
	property color trayCounterBgMute: "#888888"
	property color trayCounterFg: "#ffffff"
	property color trayCounterBgMacInvert: "#ffffff"
	property color trayCounterFgMacInvert: "#ffffff01"
	property color layerBg: "#0000007f"
	property color cancelIconFg: menuIconFg
	property color cancelIconFgOver: menuIconFgOver
	property color boxBg: windowBg
	property color boxTextFg: windowFg
	property color boxTextFgGood: "#4ab44a"
	property color boxTextFgError: "#d84d4d"
	property color boxTitleFg: "#404040"
	property color boxSearchBg: boxBg
	property color boxTitleAdditionalFg: "#808080"
	property color boxTitleCloseFg: cancelIconFg
	property color boxTitleCloseFgOver: cancelIconFgOver
	property color paymentsTipActive: "#01ad0f"
	property color membersAboutLimitFg: windowSubTextFgOver
	property color contactsBg: windowBg
	property color contactsBgOver: windowBgOver
	property color contactsNameFg: boxTextFg
	property color contactsStatusFg: windowSubTextFg
	property color contactsStatusFgOver: windowSubTextFgOver
	property color contactsStatusFgOnline: windowActiveTextFg
	property color photoCropFadeBg: layerBg
	property color photoCropPointFg: "#ffffff7f"
	property color callArrowFg: "#2dad2d"
	property color callArrowMissedFg: "#dd5b4a"
	property color introBg: windowBg
	property color introTitleFg: windowBoldFg
	property color introDescriptionFg: windowSubTextFg
	property color introErrorFg: windowSubTextFg
	property color introCoverTopBg: "#0f89d0"
	property color introCoverBottomBg: "#39b0f0"
	property color introCoverIconsFg: "#5ec6ff"
	property color introCoverPlaneTrace: "#5ec6ff69"
	property color introCoverPlaneInner: "#c6d8e8"
	property color introCoverPlaneOuter: "#a1bed4"
	property color introCoverPlaneTop: "#ffffff"
	property color dialogsMenuIconFg: menuIconFg
	property color dialogsMenuIconFgOver: menuIconFgOver
	property color dialogsBg: windowBg
	property color dialogsNameFg: windowBoldFg
	property color dialogsChatIconFg: dialogsNameFg
	property color dialogsDateFg: windowSubTextFg
	property color dialogsTextFg: windowSubTextFg
	property color dialogsTextFgService: windowActiveTextFg
	property color dialogsDraftFg: "#dd4b39"
	property color dialogsVerifiedIconBg: windowBgActive
	property color dialogsVerifiedIconFg: windowFgActive
	property color dialogsSendingIconFg: "#c1c1c1"
	property color dialogsSentIconFg: "#5dc452"
	property color dialogsUnreadBg: windowBgActive
	property color dialogsUnreadBgMuted: "#bbbbbb"
	property color dialogsUnreadFg: windowFgActive
	property color dialogsArchiveFg: "#525252"
	property color dialogsOnlineBadgeFg: "#4dc920"
	property color dialogsScamFg: dialogsDraftFg
	property color dialogsBgOver: windowBgOver
	property color dialogsNameFgOver: windowBoldFgOver
	property color dialogsChatIconFgOver: dialogsNameFgOver
	property color dialogsDateFgOver: windowSubTextFgOver
	property color dialogsTextFgOver: windowSubTextFgOver
	property color dialogsTextFgServiceOver: dialogsTextFgService
	property color dialogsDraftFgOver: dialogsDraftFg
	property color dialogsVerifiedIconBgOver: dialogsVerifiedIconBg
	property color dialogsVerifiedIconFgOver: dialogsVerifiedIconFg
	property color dialogsSendingIconFgOver: dialogsSendingIconFg
	property color dialogsSentIconFgOver: "#58b84d"
	property color dialogsUnreadBgOver: dialogsUnreadBg
	property color dialogsUnreadBgMutedOver: dialogsUnreadBgMuted
	property color dialogsUnreadFgOver: dialogsUnreadFg
	property color dialogsArchiveFgOver: "#525252"
	property color dialogsScamFgOver: dialogsDraftFgOver
	property color dialogsBgActive: "#419fd9"
	property color dialogsNameFgActive: windowFgActive
	property color dialogsChatIconFgActive: dialogsNameFgActive
	property color dialogsDateFgActive: windowFgActive
	property color dialogsTextFgActive: windowFgActive
	property color dialogsTextFgServiceActive: dialogsTextFgActive
	property color dialogsDraftFgActive: "#c6e1f7"
	property color dialogsVerifiedIconBgActive: dialogsTextFgActive
	property color dialogsVerifiedIconFgActive: dialogsBgActive
	property color dialogsSendingIconFgActive: "#ffffff99"
	property color dialogsSentIconFgActive: dialogsTextFgActive
	property color dialogsUnreadBgActive: dialogsTextFgActive
	property color dialogsUnreadBgMutedActive: dialogsDraftFgActive
	property color dialogsUnreadFgActive: dialogsBgActive
	property color dialogsOnlineBadgeFgActive: "#ffffff"
	property color dialogsScamFgActive: dialogsDraftFgActive
	property color dialogsRippleBg: windowBgRipple
	property color dialogsRippleBgActive: activeButtonBgRipple
	property color dialogsForwardBg: dialogsBgActive
	property color dialogsForwardFg: dialogsNameFgActive
	property color searchedBarBg: windowBgOver
	property color searchedBarFg: windowSubTextFgOver
	property color topBarBg: windowBg
	property color emojiPanBg: windowBg
	property color emojiPanCategories: "#f7f7f7"
	property color emojiPanHeaderFg: windowSubTextFg
	property color emojiPanHeaderBg: "#fffffff2"
	property color emojiIconFg: "#999999"
	property color emojiIconFgActive: windowBgActive
	property color stickerPanDeleteBg: "#000000"
	property color stickerPanDeleteFg: windowFgActive
	property color stickerPreviewBg: "#ffffffb0"
	property color historyTextInFg: windowFg
	property color historyTextInFgSelected: historyTextInFg
	property color historyTextOutFg: windowFg
	property color historyTextOutFgSelected: historyTextOutFg
	property color historyLinkInFg: windowActiveTextFg
	property color historyLinkInFgSelected: historyLinkInFg
	property color historyLinkOutFg: "#4b9432"
	property color historyLinkOutFgSelected: "#32946b"
	property color historyFileNameInFg: historyTextInFg
	property color historyFileNameInFgSelected: historyFileNameInFg
	property color historyFileNameOutFg: historyTextOutFg
	property color historyFileNameOutFgSelected: historyFileNameOutFg
	property color historyOutIconFg: "#5ab54e"
	property color historyOutIconFgSelected: "#5ab54e"
	property color historyIconFgInverted: windowFgActive
	property color historySendingOutIconFg: "#98d292"
	property color historySendingInIconFg: "#a0adb5"
	property color historySendingInvertedIconFg: "#ffffffc8"
	property color historyCallArrowInFg: "#32b032"
	property color historyCallArrowInFgSelected: "#2592a8"
	property color historyCallArrowMissedInFg: callArrowMissedFg
	property color historyCallArrowMissedInFgSelected: callArrowMissedFg
	property color historyCallArrowOutFg: historyCallArrowInFg
	property color historyCallArrowOutFgSelected: historyCallArrowInFgSelected
	property color historyUnreadBarBg: "#fcfbfa"
	property color historyUnreadBarBorder: shadowFg
	property color historyUnreadBarFg: "#538bb4"
	property color historyForwardChooseBg: "#0000004c"
	property color historyForwardChooseFg: windowFgActive
	property color historyPeer1NameFg: "#c03d33"
	property color historyPeer1NameFgSelected: historyPeer1NameFg
	property color historyPeer1UserpicBg: "#e17076"
	property color historyPeer2NameFg: "#4fad2d"
	property color historyPeer2NameFgSelected: historyPeer2NameFg
	property color historyPeer2UserpicBg: "#7bc862"
	property color historyPeer3NameFg: "#d09306"
	property color historyPeer3NameFgSelected: historyPeer3NameFg
	property color historyPeer3UserpicBg: "#e5ca77"
	property color historyPeer4NameFg: windowActiveTextFg
	property color historyPeer4NameFgSelected: historyPeer4NameFg
	property color historyPeer4UserpicBg: "#65aadd"
	property color historyPeer5NameFg: "#8544d6"
	property color historyPeer5NameFgSelected: historyPeer5NameFg
	property color historyPeer5UserpicBg: "#a695e7"
	property color historyPeer6NameFg: "#cd4073"
	property color historyPeer6NameFgSelected: historyPeer6NameFg
	property color historyPeer6UserpicBg: "#ee7aae"
	property color historyPeer7NameFg: "#2996ad"
	property color historyPeer7NameFgSelected: historyPeer7NameFg
	property color historyPeer7UserpicBg: "#6ec9cb"
	property color historyPeer8NameFg: "#ce671b"
	property color historyPeer8NameFgSelected: historyPeer8NameFg
	property color historyPeer8UserpicBg: "#faa774"
	property color historyPeerUserpicFg: windowFgActive
	property color historyPeerSavedMessagesBg: historyPeer4UserpicBg
	property color historyPeerArchiveUserpicBg: dialogsUnreadBgMuted
	property color historyScrollBarBg: "#517c417a"
	property color historyScrollBarBgOver: "#517c41bc"
	property color historyScrollBg: "#517c414c"
	property color historyScrollBgOver: "#517c416b"
	property color msgInBg: windowBg
	property color msgInBgSelected: "#c2dcf2"
	property color msgOutBg: "#effdde"
	property color msgOutBgSelected: "#cbebb5"
	property color msgSelectOverlay: "#358cd44c"
	property color msgStickerOverlay: "#358cd47f"
	property color msgInServiceFg: windowActiveTextFg
	property color msgInServiceFgSelected: windowActiveTextFg
	property color msgOutServiceFg: "#529e39"
	property color msgOutServiceFgSelected: "#529e39"
	property color msgInShadow: "#748ea229"
	property color msgInShadowSelected: "#548dbb29"
	property color msgOutShadow: "#3ac3461d"
	property color msgOutShadowSelected: "#3ac3461d"
	property color msgInDateFg: "#a0acb6"
	property color msgInDateFgSelected: "#6a9cc5"
	property color msgOutDateFg: "#6fab69"
	property color msgOutDateFgSelected: "#6fab69"
	property color msgServiceFg: windowFgActive
	property color msgServiceBg: "#527c416a"
	property color msgServiceBgSelected: "#96b38b83"
	property color msgInReplyBarColor: activeLineFg
	property color msgInReplyBarSelColor: activeLineFg
	property color msgOutReplyBarColor: "#64b05c"
	property color msgOutReplyBarSelColor: "#64b05c"
	property color msgImgReplyBarColor: msgServiceFg
	property color msgInMonoFg: "#4e7391"
	property color msgOutMonoFg: "#459866"
	property color msgInMonoFgSelected: msgInMonoFg
	property color msgOutMonoFgSelected: msgOutMonoFg
	property color msgDateImgFg: msgServiceFg
	property color msgDateImgBg: "#00000054"
	property color msgDateImgBgOver: "#00000074"
	property color msgDateImgBgSelected: "#1c4a7187"
	property color msgFileThumbLinkInFg: lightButtonFg
	property color msgFileThumbLinkInFgSelected: lightButtonFgOver
	property color msgFileThumbLinkOutFg: "#529e39"
	property color msgFileThumbLinkOutFgSelected: "#529e39"
	property color msgFileInBg: windowBgActive
	property color msgFileInBgOver: "#4eade3"
	property color msgFileInBgSelected: "#51a3d3"
	property color msgFileOutBg: "#60b867"
	property color msgFileOutBgOver: "#60b867"
	property color msgFileOutBgSelected: "#60b867"
	property color msgFile1Bg: "#72b1df"
	property color msgFile1BgDark: "#5c9ece"
	property color msgFile1BgOver: "#5294c4"
	property color msgFile1BgSelected: "#5099d0"
	property color msgFile2Bg: "#5fbe67"
	property color msgFile2BgDark: "#60b867"
	property color msgFile2BgOver: "#60b867"
	property color msgFile2BgSelected: "#60b867"
	property color msgFile3Bg: "#e47272"
	property color msgFile3BgDark: "#cd5b5e"
	property color msgFile3BgOver: "#c35154"
	property color msgFile3BgSelected: "#9f6a82"
	property color msgFile4Bg: "#efc274"
	property color msgFile4BgDark: "#e6a561"
	property color msgFile4BgOver: "#dc9c5a"
	property color msgFile4BgSelected: "#b19d84"
	property color historyFileInIconFg: msgInBg
	property color historyFileInIconFgSelected: msgInBgSelected
	property color historyFileInRadialFg: historyFileInIconFg
	property color historyFileInRadialFgSelected: historyFileInIconFgSelected
	property color historyFileOutIconFg: msgOutBg
	property color historyFileOutIconFgSelected: msgOutBgSelected
	property color historyFileOutRadialFg: historyFileOutIconFg
	property color historyFileOutRadialFgSelected: historyFileOutIconFgSelected
	property color historyFileThumbIconFg: msgInBg
	property color historyFileThumbIconFgSelected: msgInBgSelected
	property color historyFileThumbRadialFg: historyFileThumbIconFg
	property color historyFileThumbRadialFgSelected: historyFileThumbIconFgSelected
	property color historyVideoMessageProgressFg: historyFileThumbIconFg
	property color msgWaveformInActive: windowBgActive
	property color msgWaveformInActiveSelected: "#51a3d3"
	property color msgWaveformInInactive: "#d4dee6"
	property color msgWaveformInInactiveSelected: "#9cc1e1"
	property color msgWaveformOutActive: "#5ebd66"
	property color msgWaveformOutActiveSelected: "#5ebd66"
	property color msgWaveformOutInactive: "#ade3ae"
	property color msgWaveformOutInactiveSelected: "#a3d9a3"
	property color msgBotKbOverBgAdd: "#ffffff20"
	property color msgBotKbIconFg: msgServiceFg
	property color msgBotKbRippleBg: "#00000020"
	property color mediaInFg: msgInDateFg
	property color mediaInFgSelected: msgInDateFgSelected
	property color mediaOutFg: msgOutDateFg
	property color mediaOutFgSelected: msgOutDateFgSelected
	property color youtubePlayIconBg: "#e83131c8"
	property color youtubePlayIconFg: windowFgActive
	property color videoPlayIconBg: "#0000007f"
	property color videoPlayIconFg: "#ffffff"
	property color toastBg: "#000000b2"
	property color toastFg: windowFgActive
	property color reportSpamBg: emojiPanHeaderBg
	property color reportSpamFg: windowFg
	property color historyToDownBg: windowBg
	property color historyToDownBgOver: windowBgOver
	property color historyToDownBgRipple: windowBgRipple
	property color historyToDownFg: menuIconFg
	property color historyToDownFgOver: menuIconFgOver
	property color historyToDownShadow: "#00000040"
	property color historyComposeAreaBg: msgInBg
	property color historyComposeAreaFg: historyTextInFg
	property color historyComposeAreaFgService: msgInDateFg
	property color historyComposeIconFg: menuIconFg
	property color historyComposeIconFgOver: menuIconFgOver
	property color historySendIconFg: windowBgActive
	property color historySendIconFgOver: windowBgActive
	property color historyPinnedBg: historyComposeAreaBg
	property color historyReplyBg: historyComposeAreaBg
	property color historyReplyIconFg: windowBgActive
	property color historyReplyCancelFg: cancelIconFg
	property color historyReplyCancelFgOver: cancelIconFgOver
	property color historyComposeButtonBg: historyComposeAreaBg
	property color historyComposeButtonBgOver: windowBgOver
	property color historyComposeButtonBgRipple: windowBgRipple
	property color mapPointDrop: "#fd4444"
	property color mapPointDot: "#ffffff"
	property color overviewCheckBg: "#00000040"
	property color overviewCheckBgActive: windowBgActive
	property color overviewCheckBorder: windowBg
	property color overviewCheckFg: windowBg
	property color overviewCheckFgActive: windowBg
	property color overviewPhotoSelectOverlay: "#40ace333"
	property color profileStatusFgOver: "#7c99b2"
	property color profileVerifiedCheckBg: windowBgActive
	property color profileVerifiedCheckFg: windowFgActive
	property color profileAdminStartFg: windowBgActive
	property color profileAdminStarFgOver: profileAdminStartFg
	property color profileOtherAdminStarFg: windowSubTextFg
	property color profileOtherAdminStarFgOver: profileStatusFgOver
	property color notificationsBoxMonitorFg: windowFg
	property color notificationsBoxScreenBg: "dialogsBgActive"
	property color notificationSampleUserpicFg: windowBgActive
	property color notificationSampleCloseFg: "#d7d7d7"
	property color notificationSampleTextFg: "#d7d7d7"
	property color notificationSampleNameFg: "#939393"
	property color changePhoneSimcardFrom: notificationSampleTextFg
	property color changePhoneSimcardTo: notificationSampleNameFg
	property color mainMenuBg: windowBg
	property color mainMenuCoverBg: dialogsBgActive
	property color mainMenuCoverFg: windowFgActive
	property color mainMenuCloudFg: activeButtonFg
	property color mainMenuCloudBg: "#2785bf"
	property color mediaPlayerBg: windowBg
	property color mediaPlayerActiveFg: windowBgActive
	property color mediaPlayerInactiveFg: sliderBgInactive
	property color mediaPlayerDisabledFg: "#9dd1ef"
	property color mediaviewFileBg: windowBg
	property color mediaviewFileNameFg: windowFg
	property color mediaviewFileSizeFg: windowSubTextFg
	property color mediaviewFileRedCornerFg: "#d55959"
	property color mediaviewFileYellowCornerFg: "#e8a659"
	property color mediaviewFileGreenCornerFg: "#49a957"
	property color mediaviewFileBlueCornerFg: "#599dcf"
	property color mediaviewFileExtFg: activeButtonFg
	property color mediaviewMenuBg: "#383838"
	property color mediaviewMenuBgOver: "#505050"
	property color mediaviewMenuBgRipple: "#676767"
	property color mediaviewMenuFg: windowFgActive
	property color mediaviewBg: "#222222eb"
	property color mediaviewVideoBg: imageBg
	property color mediaviewControlBg: "#0000003c"
	property color mediaviewControlFg: windowFgActive
	property color mediaviewCaptionBg: "#11111180"
	property color mediaviewCaptionFg: mediaviewControlFg
	property color mediaviewTextLinkFg: "#91d9ff"
	property color mediaviewSaveMsgBg: toastBg
	property color mediaviewSaveMsgFg: toastFg
	property color mediaviewPlaybackActive: "#c7c7c7"
	property color mediaviewPlaybackInactive: "#252525"
	property color mediaviewPlaybackActiveOver: "#ffffff"
	property color mediaviewPlaybackInactiveOver: "#474747"
	property color mediaviewPlaybackProgressFg: "#ffffffc7"
	property color mediaviewPlaybackIconFg: mediaviewPlaybackActive
	property color mediaviewPlaybackIconFgOver: mediaviewPlaybackActiveOver
	property color mediaviewPlaybackIconRipple: "#ffffff14"
	property color mediaviewPipControlsFg: "#ffffffd9"
	property color mediaviewPipControlsFgOver: "#ffffff"
	property color mediaviewPipFade: "#00000095"
	property color mediaviewPipPlaybackActive: "#ffffffda"
	property color mediaviewPipPlaybackInactive: "#ffffff26"
	property color mediaviewTransparentBg: "#ffffff"
	property color mediaviewTransparentFg: "#cccccc"
	property color notificationBg: windowBg
	property color callBg: "#26282cf2"
	property color callBgOpaque: "#1b1f23"
	property color callBgButton: "#1b1f237f"
	property color callNameFg: "#ffffff"
	property color callStatusFg: "#aaabac"
	property color callIconBg: "#ffffff1f"
	property color callIconFg: "#ffffff"
	property color callIconBgActive: "#ffffffe5"
	property color callIconFgActive: "#222222"
	property color callIconActiveRipple: "#f1f1f1"
	property color callAnswerBg: "#66c95b"
	property color callAnswerRipple: "#52b149"
	property color callAnswerBgOuter: "#50eb4126"
	property color callHangupBg: "#d75a5a"
	property color callHangupRipple: "#c04646"
	property color callMuteRipple: "#ffffff12"
	property color groupCallBg: "#1a2026"
	property color groupCallActiveFg: "#4db8ff"
	property color groupCallMembersBg: "#2c333d"
	property color groupCallMembersBgOver: "#323a45"
	property color groupCallMembersBgRipple: "#39424f"
	property color groupCallMembersFg: "#ffffff"
	property color groupCallMemberActiveIcon: "#8deb90"
	property color groupCallMemberActiveStatus: "#8deb90"
	property color groupCallMemberInactiveIcon: "#84888f"
	property color groupCallMemberInactiveStatus: "#61c0ff"
	property color groupCallMemberMutedIcon: "#ed7372"
	property color groupCallMemberNotJoinedStatus: "#91979e"
	property color groupCallIconFg: "#ffffff"
	property color groupCallLive1: "#0dcc39"
	property color groupCallLive2: "#0bb6bd"
	property color groupCallMuted1: "#0992ef"
	property color groupCallMuted2: "#16ccfb"
	property color groupCallForceMutedBar1: "#c65493"
	property color groupCallForceMutedBar2: "#7a6af1"
	property color groupCallForceMutedBar3: "#5f95e8"
	property color groupCallForceMuted1: "#4f9cff"
	property color groupCallForceMuted2: "#9b52e9"
	property color groupCallForceMuted3: "#eb5353"
	property color groupCallMenuBg: "#292d33"
	property color groupCallMenuBgOver: "#343940"
	property color groupCallMenuBgRipple: "#3a4047"
	property color groupCallLeaveBg: "#f75c5c7f"
	property color groupCallLeaveBgRipple: "#f75c5c9e"
	property color groupCallVideoTextFg: "#ffffffe0"
	property color groupCallVideoSubTextFg: "#ffffffc0"
	property color callBarBg: dialogsBgActive
	property color callBarMuteRipple: dialogsRippleBgActive
	property color callBarBgMuted: "#8f8f8f"
	property color callBarUnmuteRipple: "#7f7f7f"
	property color callBarFg: dialogsNameFgActive
	property color importantTooltipBg: toastBg
	property color importantTooltipFg: toastFg
	property color importantTooltipFgLink: mediaviewTextLinkFg
	property color outdatedFg: "#ffffff"
	property color outdateSoonBg: "#e08543"
	property color outdatedBg: "#e05745"
	property color spellUnderline: "#ff000088"
	property color walletTitleBg: "#121213"
	property color walletTitleBgActive: walletTitleBg
	property color walletTitleButtonBg: walletTitleBg
	property color walletTitleButtonFg: "#5a5a5b"
	property color walletTitleButtonBgOver: "#373738"
	property color walletTitleButtonFgOver: "#747475"
	property color walletTitleButtonBgActive: walletTitleButtonBg
	property color walletTitleButtonFgActive: walletTitleButtonFg
	property color walletTitleButtonBgActiveOver: walletTitleButtonBgOver
	property color walletTitleButtonFgActiveOver: walletTitleButtonFgOver
	property color walletTitleButtonCloseBg: walletTitleButtonBg
	property color walletTitleButtonCloseFg: walletTitleButtonFg
	property color walletTitleButtonCloseBgOver: titleButtonCloseBgOver
	property color walletTitleButtonCloseFgOver: titleButtonCloseFgOver
	property color walletTitleButtonCloseBgActive: walletTitleButtonCloseBg
	property color walletTitleButtonCloseFgActive: walletTitleButtonCloseFg
	property color walletTitleButtonCloseBgActiveOver: walletTitleButtonCloseBgOver
	property color walletTitleButtonCloseFgActiveOver: walletTitleButtonCloseFgOver
	property color walletTopBg: "#1e1f21"
	property color walletBalanceFg: "#ffffff"
	property color walletSubBalanceFg: "#f9f9f9"
	property color walletTopLabelFg: "#999999"
	property color walletTopIconFg: walletTopLabelFg
	property color walletTopIconRipple: "#ffffff12"
	property color sideBarBg: "#293a4c"
	property color sideBarBgActive: "#17212b"
	property color sideBarBgRipple: "#1e2b38"
	property color sideBarTextFg: "#8897a6"
	property color sideBarTextFgActive: "#64b9fa"
	property color sideBarIconFg: "#8393a3"
	property color sideBarIconFgActive: "#5eb5f7"
	property color sideBarBadgeBg: "#5eb5f7"
	property color sideBarBadgeBgMuted: "#8393a3"
	property color sideBarBadgeFg: "#ffffff"
	property color songCoverOverlayFg: "#00000066"
	property color photoEditorBg: boxTitleAdditionalFg
	property color photoEditorItemBaseHandleFg: "#3ccaef"
}
