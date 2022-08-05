import QtQuick 2.12

Item
{
	property color windowBg: "#17212b"
	property color windowFg: "#f5f5f5"
	property color windowBgOver: "#232e3c"
	property color windowBgRipple: "#24303d"
	property color windowFgOver: "#e9ecf0"
	property color windowSubTextFg: "#708499"
	property color windowSubTextFgOver: "#7c90a4"
	property color windowBoldFg: "#e9e8e8"
	property color windowBoldFgOver: "#e9e9e9"
	property color windowBgActive: "#5288c1"
	property color windowFgActive: "#ffffff"
	property color windowActiveTextFg: "#6ab3f3"
	property color windowShadowFg: "#000000"
	property color windowShadowFgFallback: "#17212b"
	property color shadowFg: "#04080e56"
	property color slideFadeOutBg: "#0000003c"
	property color slideFadeOutShadowFg: windowShadowFg
	property color imageBg: "#000000"
	property color imageBgTransparent: "#ffffff"
	property color activeButtonBg: "#2f6ea5"
	property color activeButtonBgOver: "#3476ab"
	property color activeButtonBgRipple: "#3b7cb1"
	property color activeButtonFg: "#ffffff"
	property color activeButtonFgOver: "#ffffff"
	property color activeButtonSecondaryFg: "#9abfe7"
	property color activeButtonSecondaryFgOver: activeButtonSecondaryFg
	property color activeLineFg: "#6396cb"
	property color activeLineFgError: "#ef5959"
	property color lightButtonBg: "#17212b"
	property color lightButtonBgOver: "#1d2a39"
	property color lightButtonBgRipple: "#223143"
	property color lightButtonFg: "#6ab2f2"
	property color lightButtonFgOver: lightButtonFg
	property color attentionButtonFg: "#ec3942"
	property color attentionButtonFgOver: "#ec3942"
	property color attentionButtonBgOver: "#592a2a64"
	property color attentionButtonBgRipple: "#68323264"
	property color outlineButtonBg: windowBg
	property color outlineButtonBgOver: "#202b37"
	property color outlineButtonOutlineFg: "#3983c3"
	property color outlineButtonBgRipple: "#27323f"
	property color menuBg: "#17212b"
	property color menuBgOver: "#ffffff"
	property color menuBgRipple: "#1f2934"
	property color menuIconFg: "#6c7883"
	property color menuIconFgOver: "#dcdcdc"
	property color menuSubmenuArrowFg: "#637c95"
	property color menuFgDisabled: "#3d4e5c"
	property color menuSeparatorFg: "#232f39"
	property color scrollBarBg: "#ffffff53"
	property color scrollBarBgOver: "#ffffff7a"
	property color scrollBg: "#ffffff1a"
	property color scrollBgOver: "#ffffff2c"
	property color smallCloseIconFg: "#55616c"
	property color smallCloseIconFgOver: "#a3a3a3"
	property color radialFg: windowFgActive
	property color radialBg: "#00000056"
	property color placeholderFg: "#6d7883"
	property color placeholderFgActive: "#4f5b67"
	property color inputBorderFg: "#313c49"
	property color filterInputBorderFg: "#242f3d"
	property color filterInputInactiveBg: "#242f3d"
	property color checkboxFg: "#4f6276"
	property color sliderBgInactive: "#364554"
	property color sliderBgActive: "#4a81bc"
	property color tooltipBg: "#16222d"
	property color tooltipFg: "#d4e0ea"
	property color tooltipBorderFg: "#16222d"
	property color titleShadow: "#00000000"
	property color titleBg: "#1f2936"
	property color titleBgActive: "#242f3d"
	property color titleButtonBg: titleBg
	property color titleButtonFg: "#576673"
	property color titleButtonBgOver: "#25303e"
	property color titleButtonFgOver: "#e0e0e0"
	property color titleButtonBgActive: "#242f3d"
	property color titleButtonFgActive: titleButtonFg
	property color titleButtonBgActiveOver: "#2c3847"
	property color titleButtonFgActiveOver: titleButtonFgOver
	property color titleButtonCloseBg: titleButtonBg
	property color titleButtonCloseFg: titleButtonFg
	property color titleButtonCloseBgOver: "#e92539"
	property color titleButtonCloseFgOver: windowFgActive
	property color titleButtonCloseBgActive: "#242f3d"
	property color titleButtonCloseFgActive: titleButtonCloseFg
	property color titleButtonCloseBgActiveOver: "#e92539"
	property color titleButtonCloseFgActiveOver: titleButtonCloseFgOver
	property color titleFg: "#6a7680"
	property color titleFgActive: "#91a3b3"
	property color trayCounterBg: "#f23c34"
	property color trayCounterBgMute: "#888888"
	property color trayCounterFg: "#ffffff"
	property color trayCounterBgMacInvert: "#ffffff"
	property color trayCounterFgMacInvert: "#ffffff01"
	property color layerBg: "#0000007f"
	property color cancelIconFg: "#737e87"
	property color cancelIconFgOver: "#dcdcdc"
	property color boxBg: "#17212b"
	property color boxTextFg: windowFg
	property color boxTextFgGood: "#5598db"
	property color boxTextFgError: "#dc3d3d"
	property color boxTitleFg: "#ebebeb"
	property color boxSearchBg: "#17212b"
	property color boxTitleAdditionalFg: "#6d7f8f"
	property color boxTitleCloseFg: cancelIconFg
	property color boxTitleCloseFgOver: cancelIconFgOver
	property color membersAboutLimitFg: "#677a8b"
	property color contactsBg: "#17212b"
	property color contactsBgOver: "#1f2c39"
	property color contactsNameFg: boxTextFg
	property color contactsStatusFg: "#677a8b"
	property color contactsStatusFgOver: "#677a8b"
	property color contactsStatusFgOnline: "#559be0"
	property color photoCropFadeBg: layerBg
	property color photoCropPointFg: "#ffffff7f"
	property color callArrowFg: "#49a2f0"
	property color callArrowMissedFg: "#ed5050"
	property color introBg: windowBg
	property color introTitleFg: "#eeeeee"
	property color introDescriptionFg: "#72879b"
	property color introErrorFg: "#e94040"
	property color introCoverTopBg: "#124a82"
	property color introCoverBottomBg: "#23659f"
	property color introCoverIconsFg: "#3b7cbd"
	property color introCoverPlaneTrace: "#3870a8"
	property color introCoverPlaneInner: "#ced9e2"
	property color introCoverPlaneOuter: "#97a9b5"
	property color introCoverPlaneTop: "#ffffff"
	property color dialogsMenuIconFg: menuIconFg
	property color dialogsMenuIconFgOver: menuIconFgOver
	property color dialogsBg: windowBg
	property color dialogsNameFg: "#f5f5f5"
	property color dialogsChatIconFg: dialogsNameFg
	property color dialogsDateFg: "#8696a8"
	property color dialogsTextFg: "#7f91a4"
	property color dialogsTextFgService: "#73b9f5"
	property color dialogsDraftFg: "#ff525d"
	property color dialogsVerifiedIconBg: "#6ab3f3"
	property color dialogsVerifiedIconFg: "#17212b"
	property color dialogsSendingIconFg: "#647d96"
	property color dialogsSentIconFg: "#72bcfd"
	property color dialogsUnreadBg: "#4082bc"
	property color dialogsUnreadBgMuted: "#3e546a"
	property color dialogsUnreadFg: "#ffffff"
	property color dialogsBgOver: "#202b36"
	property color dialogsOnlineBadgeFg: "#63b6ff"
	property color dialogsNameFgOver: windowBoldFgOver
	property color dialogsChatIconFgOver: dialogsNameFgOver
	property color dialogsDateFgOver: "#8495a9"
	property color dialogsTextFgOver: "#91a3b5"
	property color dialogsTextFgServiceOver: "#73b9f5"
	property color dialogsDraftFgOver: dialogsDraftFg
	property color dialogsVerifiedIconBgOver: "#6ab3f3"
	property color dialogsVerifiedIconFgOver: dialogsVerifiedIconFg
	property color dialogsSendingIconFgOver: dialogsSendingIconFg
	property color dialogsSentIconFgOver: "#72bcfd"
	property color dialogsUnreadBgOver: "#4082bc"
	property color dialogsUnreadBgMutedOver: "#4d5762"
	property color dialogsUnreadFgOver: dialogsUnreadFg
	property color dialogsBgActive: "#2b5278"
	property color dialogsNameFgActive: windowFgActive
	property color dialogsChatIconFgActive: dialogsNameFgActive
	property color dialogsDateFgActive: windowFgActive
	property color dialogsTextFgActive: windowFgActive
	property color dialogsTextFgServiceActive: dialogsTextFgActive
	property color dialogsDraftFgActive: "#a9caf0"
	property color dialogsVerifiedIconBgActive: dialogsTextFgActive
	property color dialogsVerifiedIconFgActive: dialogsBgActive
	property color dialogsSendingIconFgActive: "#ffffff99"
	property color dialogsSentIconFgActive: dialogsTextFgActive
	property color dialogsUnreadBgActive: dialogsTextFgActive
	property color dialogsUnreadBgMutedActive: "#7aa3ca"
	property color dialogsUnreadFgActive: "#2a5378"
	property color dialogsOnlineBadgeFgActive: "#ffffff"
	property color dialogsRippleBg: "#25313d"
	property color dialogsRippleBgActive: "#315a80"
	property color dialogsForwardBg: dialogsBgActive
	property color dialogsForwardFg: dialogsNameFgActive
	property color searchedBarBg: "#202b38"
	property color searchedBarFg: "#8c98a4"
	property color topBarBg: "#17212b"
	property color emojiPanBg: windowBg
	property color emojiPanCategories: "#17212b"
	property color emojiPanHeaderFg: "#7c8d9e"
	property color emojiPanHeaderBg: "#fffffff2"
	property color stickerPanDeleteBg: "#000000cc"
	property color stickerPanDeleteFg: windowFgActive
	property color stickerPreviewBg: "#000000b0"
	property color historyTextInFg: windowFg
	property color historyTextInFgSelected: "#ffffff"
	property color historyTextOutFg: "#ffffff"
	property color historyTextOutFgSelected: "#ffffff"
	property color historyLinkInFg: "#70baf5"
	property color historyLinkInFgSelected: "#aadcff"
	property color historyLinkOutFg: "#ffffff"
	property color historyLinkOutFgSelected: "#ffffff"
	property color historyFileNameInFg: historyTextInFg
	property color historyFileNameInFgSelected: "#ffffff"
	property color historyFileNameOutFg: historyTextOutFg
	property color historyFileNameOutFgSelected: "#ffffff"
	property color historyOutIconFg: "#ffffffe5"
	property color historyOutIconFgSelected: "#ffffff"
	property color historyIconFgInverted: "#ffffffe5"
	property color historySendingOutIconFg: "#ffffff66"
	property color historySendingInIconFg: "#76838b"
	property color historySendingInvertedIconFg: "#ffffffc8"
	property color historyCallArrowInFg: "#5093d6"
	property color historyCallArrowInFgSelected: "#ffffff"
	property color historyCallArrowMissedInFg: "#ffffff"
	property color historyCallArrowMissedInFgSelected: "#ffffff"
	property color historyCallArrowOutFg: "#ffffff"
	property color historyCallArrowOutFgSelected: "#ffffff"
	property color historyUnreadBarBg: "#182433"
	property color historyUnreadBarBorder: "#03080d00"
	property color historyUnreadBarFg: "#ffffff"
	property color historyForwardChooseBg: "#0000004c"
	property color historyForwardChooseFg: windowFgActive
	property color historyPeer1NameFg: "#fb6169"
	property color historyPeer1NameFgSelected: "#ffffff"
	property color historyPeer1UserpicBg: "#dd4554"
	property color historyPeer2NameFg: "#85de85"
	property color historyPeer2NameFgSelected: "#ffffff"
	property color historyPeer2UserpicBg: "#63aa55"
	property color historyPeer3NameFg: "#f3bc5c"
	property color historyPeer3NameFgSelected: "#ffffff"
	property color historyPeer3UserpicBg: "#d0973c"
	property color historyPeer4NameFg: "#65bdf3"
	property color historyPeer4NameFgSelected: "#ffffff"
	property color historyPeer4UserpicBg: "#4388b9"
	property color historyPeer5NameFg: "#b48bf2"
	property color historyPeer5NameFgSelected: "#ffffff"
	property color historyPeer5UserpicBg: "#7965c1"
	property color historyPeer6NameFg: "#ff5694"
	property color historyPeer6NameFgSelected: "#ffffff"
	property color historyPeer6UserpicBg: "#cb4f87"
	property color historyPeer7NameFg: "#62d4e3"
	property color historyPeer7NameFgSelected: "#ffffff"
	property color historyPeer7UserpicBg: "#41a4a6"
	property color historyPeer8NameFg: "#faa357"
	property color historyPeer8NameFgSelected: "#ffffff"
	property color historyPeer8UserpicBg: "#db863b"
	property color historyPeerUserpicFg: windowFgActive
	property color historyScrollBarBg: "#7f84897a"
	property color historyScrollBarBgOver: "#64686cbc"
	property color historyScrollBg: "#565a5e4c"
	property color historyScrollBgOver: "#5a5d616b"
	property color msgInBg: "#24292e"
	property color msgInBgSelected: "#2e70a5"
	property color msgOutBg: "#265e8c"
	property color msgOutBgSelected: "#387aad"
	property color msgSelectOverlay: "#3585d44c"
	property color msgStickerOverlay: "#3585d47f"
	property color msgInServiceFg: "#71bafa"
	property color msgInServiceFgSelected: "#ffffff"
	property color msgOutServiceFg: "#ffffff"
	property color msgOutServiceFgSelected: "#ffffff"
	property color msgInShadow: "#748ea200"
	property color msgInShadowSelected: "#538ebb00"
	property color msgOutShadow: "#00000000"
	property color msgOutShadowSelected: "#366ea600"
	property color msgInDateFg: "#7a858f"
	property color msgInDateFgSelected: "#ffffff85"
	property color msgOutDateFg: "#c2e4ffad"
	property color msgOutDateFgSelected: "#c2e4ffad"
	property color msgServiceFg: windowFgActive
	property color msgServiceBg: "#1e2429d5"
	property color msgServiceBgSelected: "#2e7ab4"
	property color msgInReplyBarColor: "#429bdb"
	property color msgInReplyBarSelColor: "#ffffff"
	property color msgOutReplyBarColor: "#ffffff"
	property color msgOutReplyBarSelColor: "#ffffff"
	property color msgImgReplyBarColor: msgServiceFg
	property color msgInMonoFg: "#5a8cb7"
	property color msgOutMonoFg: "#bad9f6"
	property color msgInMonoFgSelected: "#a3cdf7"
	property color msgOutMonoFgSelected: "#bad9f6"
	property color msgDateImgFg: "#fffffff2"
	property color msgDateImgBg: "#00000054"
	property color msgDateImgBgOver: "#00000074"
	property color msgDateImgBgSelected: "#204f7887"
	property color msgFileThumbLinkInFg: "#4aabf5"
	property color msgFileThumbLinkInFgSelected: "#ffffff"
	property color msgFileThumbLinkOutFg: "#ffffff"
	property color msgFileThumbLinkOutFgSelected: "#ffffff"
	property color msgFileInBg: "#3f96d0"
	property color msgFileInBgOver: "#489ed7"
	property color msgFileInBgSelected: "#6ab4f4"
	property color msgFileOutBg: "#ffffff"
	property color msgFileOutBgOver: "#ffffff"
	property color msgFileOutBgSelected: "#ffffff"
	property color msgFile1Bg: "#3e7eba"
	property color msgFile1BgDark: "#24679e"
	property color msgFile1BgOver: "#1d5e93"
	property color msgFile1BgSelected: "#ffffff"
	property color msgFile2Bg: "#3ea34a"
	property color msgFile2BgDark: "#298835"
	property color msgFile2BgOver: "#1b7725"
	property color msgFile2BgSelected: "#1b7725"
	property color msgFile3Bg: "#d6454c"
	property color msgFile3BgDark: "#bf333a"
	property color msgFile3BgOver: "#b2282f"
	property color msgFile3BgSelected: "#b2282f"
	property color msgFile4Bg: "#d99546"
	property color msgFile4BgDark: "#c17d39"
	property color msgFile4BgOver: "#ac6b29"
	property color msgFile4BgSelected: "#ac6b29"
	property color historyFileInIconFg: "#ffffff"
	property color historyFileInIconFgSelected: "#ffffff"
	property color historyFileInRadialFg: "#ffffff"
	property color historyFileInRadialFgSelected: historyFileInIconFgSelected
	property color historyFileOutIconFg: "#035e90"
	property color historyFileOutIconFgSelected: "#2a6da1"
	property color historyFileOutRadialFg: "#035e90"
	property color historyFileOutRadialFgSelected: "#2a6da1"
	property color historyFileThumbIconFg: "#efefef"
	property color historyFileThumbIconFgSelected: "#ffffff"
	property color historyFileThumbRadialFg: historyFileThumbIconFg
	property color historyFileThumbRadialFgSelected: "#ffffff"
	property color historyVideoMessageProgressFg: historyFileThumbIconFg
	property color msgWaveformInActive: "#549cd7"
	property color msgWaveformInActiveSelected: "#ffffff"
	property color msgWaveformInInactive: "#4c5661"
	property color msgWaveformInInactiveSelected: "#6fa5d4"
	property color msgWaveformOutActive: "#ffffff"
	property color msgWaveformOutActiveSelected: "#ffffff"
	property color msgWaveformOutInactive: "#ffffff2d"
	property color msgWaveformOutInactiveSelected: "#ffffff2d"
	property color msgBotKbOverBgAdd: "#80b1db0f"
	property color msgBotKbIconFg: msgServiceFg
	property color msgBotKbRippleBg: "#92c0e50b"
	property color mediaInFg: "#7b868f"
	property color mediaInFgSelected: msgInDateFgSelected
	property color mediaOutFg: msgOutDateFg
	property color mediaOutFgSelected: msgOutDateFgSelected
	property color youtubePlayIconBg: "#e83131c8"
	property color youtubePlayIconFg: windowFgActive
	property color videoPlayIconBg: "#0000007f"
	property color videoPlayIconFg: "#ffffff"
	property color toastBg: "#000000b2"
	property color toastFg: windowFgActive
	property color reportSpamBg: "#363c42"
	property color reportSpamFg: windowFg
	property color historyToDownBg: "#1d2b3a"
	property color historyToDownBgOver: "#243446"
	property color historyToDownBgRipple: "#2b3c4f"
	property color historyToDownFg: "#adb4ba"
	property color historyToDownFgOver: menuIconFgOver
	property color historyToDownShadow: "#00000040"
	property color historyComposeAreaBg: "#17212b"
	property color historyComposeAreaFg: historyTextInFg
	property color historyComposeAreaFgService: msgInDateFg
	property color historyComposeIconFg: menuIconFg
	property color historyComposeIconFgOver: menuIconFgOver
	property color historySendIconFg: windowBgActive
	property color historySendIconFgOver: windowBgActive
	property color historyPinnedBg: "#181e24"
	property color historyReplyBg: historyComposeAreaBg
	property color historyReplyIconFg: windowBgActive
	property color historyReplyCancelFg: cancelIconFg
	property color historyReplyCancelFgOver: cancelIconFgOver
	property color historyComposeButtonBg: historyComposeAreaBg
	property color historyComposeButtonBgOver: "#1c2835"
	property color historyComposeButtonBgRipple: "#222f3e"
	property color overviewCheckBg: "#00000040"
	property color overviewCheckFg: "#ffffff"
	property color overviewCheckFgActive: "#ffffff"
	property color overviewPhotoSelectOverlay: "#3fa2e333"
	property color profileStatusFgOver: "#677a8b"
	property color profileVerifiedCheckBg: windowBgActive
	property color profileVerifiedCheckFg: "#ffffff"
	property color profileAdminStartFg: "#62a9e6"
	property color notificationsBoxMonitorFg: windowFg
    property color notificationsBoxScreenBg: dialogsBgActive
	property color notificationSampleUserpicFg: windowBgActive
	property color notificationSampleCloseFg: "#d7d7d7"
	property color notificationSampleTextFg: "#d7d7d7"
	property color notificationSampleNameFg: "#939393"
	property color changePhoneSimcardFrom: notificationSampleTextFg
	property color changePhoneSimcardTo: notificationSampleNameFg
	property color mainMenuBg: windowBg
	property color mainMenuCoverBg: "#276899"
	property color mainMenuCoverFg: windowFgActive
	property color mainMenuCloudFg: activeButtonFg
	property color mainMenuCloudBg: "#185680"
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
	property color mediaviewTextLinkFg: "#70baf5"
	property color mediaviewSaveMsgBg: toastBg
	property color mediaviewSaveMsgFg: toastFg
	property color mediaviewPlaybackActive: "#c7c7c7"
	property color mediaviewPlaybackInactive: "#252525"
	property color mediaviewPlaybackActiveOver: "#ffffff"
	property color mediaviewPlaybackInactiveOver: "#474747"
	property color mediaviewPlaybackProgressFg: "#ffffffc7"
	property color mediaviewPlaybackIconFg: mediaviewPlaybackActive
	property color mediaviewPlaybackIconFgOver: mediaviewPlaybackActiveOver
	property color mediaviewTransparentBg: "#ffffff"
	property color mediaviewTransparentFg: "#cccccc"
	property color notificationBg: windowBg
	property color callBg: "#14191ff5"
	property color callNameFg: "#ffffff"
	property color callFingerprintBg: "#00000066"
	property color callStatusFg: "#aaabac"
	property color callIconFg: "#ffffff"
	property color callAnswerBg: "#488fc9"
	property color callAnswerRipple: "#4286c2"
	property color callAnswerBgOuter: "#3f95eb26"
	property color callHangupBg: "#cc4646"
	property color callHangupRipple: "#ca4141"
	property color callCancelBg: "#ffffff"
	property color callCancelFg: "#536271"
	property color callCancelRipple: "#435363"
	property color callMuteRipple: "#ffffff12"
	property color callBarBg: "#366693"
	property color callBarMuteRipple: "#4b7dab"
	property color callBarBgMuted: "#35495d"
	property color callBarUnmuteRipple: "#435b73"
	property color callBarFg: dialogsNameFgActive
	property color importantTooltipBg: toastBg
	property color importantTooltipFg: toastFg
	property color importantTooltipFgLink: "#65b6fc"
	property color filterInputActiveBg: "#242f3d"
	property color botKbBg: "#242f3d"
	property color botKbDownBg: "#2d3a49"
	property color emojiIconFg: "#6c7883"
	property color emojiIconFgActive: "#51a0e5"
	property color overviewCheckBorder: "#e4eaef"
	property color sideBarBg: "#0e1621"
	property color sideBarBgActive: "#25303e"
	property color sideBarBgRipple: "#1e2733"
	property color sideBarTextFg: "#768c9e"
	property color sideBarTextFgActive: "#64b9fa"
	property color sideBarIconFg: "#768c9e"
	property color sideBarIconFgActive: "#5eb5f7"
	property color sideBarBadgeBg: "#5eb5f7"
	property color sideBarBadgeBgMuted: "#768c9e"

    property string chatBackgroundImg: "qrc:/style/themes/nightCustomBase/background.jpg"
}
