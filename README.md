# ZeroDay
offline database for Kanban Boards (in gitkraken style) and conversation pages (in telegram style).


![image](https://user-images.githubusercontent.com/36326627/184008369-8a9bb3c0-48c8-4873-89ae-3c38a49f9174.png)

[icon link](https://jennirenas.com/zero-day)

## Demo

https://github.com/mohsenD98/QmlZeroDay/assets/36326627/635544b2-14d5-4810-9646-ddf747d0ce95


## Requirements:
* Qt6
* Clang for Android release 

## Current features:   
- [x] Initial Unit test's
- [x] Seperate Lib's from project
- [x] Build for android, Windows, linux 
- [x] using SQLite as database
- [x] Conversation(chatting) page
 
## work in progress: 
- [ ] Weekly boards
- [ ] Time lines
- [ ] Use android api's for gallery and music player

## Linux release: 
* clone the project
* open `ZeroDay.pro` with qtCreator
* use `LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib.a` in ZeroDayProject.pro and ZeroDayTests.pro


## Windows release: 
* clone the project
* open `ZeroDay.pro` with qtCreator
* open `ZeroDayLib.pro`
* comment `CONFIG += static`
* use `LIBS += $$PWD/../ZeroDayLib/Build/ZeroDayLib.dll` in ZeroDayProject.pro and ZeroDayTests.pro

## android release: 
* clone the project
* open `ZeroDay.pro` with qtCreator
* use `LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib_arm64-v8a.a` in ZeroDayProject.pro and ZeroDayTests.pro
