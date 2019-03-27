# AutoLiF  v1.3
### _*Automated scripts for LiF*_ 
##### _*Created by [God Almighty](https://i.kym-cdn.com/photos/images/original/001/171/120/b2d.jpg) — [STEAM_0:0:7572](https://steamcommunity.com/id/mcbenis/) — [github/rydland](https://github.com/rydland)*_
* Optimised for clients running at 60 FPS in "Windowed Borderless" display mode.
* Optimised for __6__/11 Windows mouse sensitivity and disabled "enhanced pointer precision" aka mouse acceleration.
* __10__/100 mouse sensitivity in-game.
  * You may want to modify your mouse DPI if the aforementioned sensitivities are too fast/slow for you. Mouse DPI is usually based on hardware and not within Windows, so changing it will not affect the performance of scripts.
* Optimised for characters with 10 agility, without "Barefoot" debuff. If you've got more than 10 agility on your PvE characters, you should reconsider using macros that require movement.
  * __1*∞__ = 1 tile by infinite tiles walking pattern (straight pattern).
  * __2*∞__ = 2 tiles by infinite tiles walking pattern (zigzag pattern).
* We're using VoiceAttack to avoid being flagged by process sniffers as this is a totally legit tool mainly used for simulators and users with disabilities like myself.
### Disclaimer
[AutoLiF](https://github.com/rydland/autolif) is stricly for __educational purposes only__ — standard copyrights© still apply.
Do not use these scripts to alter your gameplay in any way, shape or form. I, the author, do not use any scripts/macros, nor will you ever find me using them. Automating gameplay is stricly forbidden and may result in a game ban. LiF's Rules of Conduct reads as follows: _"You may not use any third-party program (such as a “bot”) in order to automate gameplay functions, including playing, chatting, interacting, or gathering items within LiF. You may not assist, relay, or store currency or items for other players who are using these processes. However the use of simple ‘autoclickers’ is allowed for repetitive single step actions. Using an ‘autoclicker’ to automate anything beyond simple one step processes is considered botting and is forbidden"._
## Instructions
1. [Download AutoLiF scripts](https://github.com/rydland/autolif/archive/master.zip) from my GitHub repository.
2. Download & install [VoiceAttack](https://voiceattack.com/Default.aspx#download-1).
3. Launch VoiceAttack.
4. Select the 'Import Profile' item in the profile list.
5. Browse & select the .vap-file (autolif-master\scripts\autolif_v✗.✗-Profile.vap) you've downloaded from my GitHub.
6. Select the profile and click, 'Open'.
* _Scripts are now imported and ready to be used as soon as you've selected the correct VoiceAttack profile._
* _You can execute scripts by pressing hotkeys for the corresponding features._
## Features & Hotkeys
* __Boost__
  * _[Shift + F12]_
    * Boosts your FPS & Ping in LiF - assigns high/128 priority to "cm_client" & kills "launcher.exe" via PowerShell. We are using high/128 priority instead of realtime/256 priority due to it's high chance of causing pixel skipping and problems with alt-tabbing as the rest of your system will not recieve enough resource power during high load. Terminating the LiF launcher is also beneficial because it's forced P2P-connection will bottleneck your bandwidth. This script will do all of this for you once executed after launching LiF.
* __Stop__
  * _[Shift + Esc]_
    * Cancel all running scripts.
* __AutoFarm 1*∞__
  * _[Shift + F1]_
    * Automatically sows seeds or harvests crops on current and the next tiles in a straight walking pattern. Requires "Sow" as your left-click option on soil tiles and "Harvest" as your left-click option on crop tiles.
* __AutoHerb__
  * _[Shift + F2]_
    * Automatically looks for herbs on current tile and gathers them. Requires "Look for Herbs" as your left-click option on grass tile. Make sure you're standing in the centre of a grass tile.
## WIP a/o 26/03/2019
* AutoGather
  * AutoGather_FiberOnly
* AutoPlant
* AutoFish
* AutoMinorExp
* Sensitivity-, resolution- & FPS presets
* QuickLootGraves
* QuickLootIB
* PvP combos w/ animation cancels & hold last hit until key release
* Backswing-Stamina abuse
* Swordsman special attack abuse
* Freelook w/ camera reset upon key release
## Changelogs
* _25/03/2019_
  1. Project created.
  2. Added AutoFarm_1*∞.
* _26/03/2019_
  1. Added Boost
  2. Added AutoHerb

