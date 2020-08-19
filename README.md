# BDPA-Peeps-Bedrock-Server
This is the Official Repository of the Official BDPA Peeps Bedrock Server


# Command/Feature Cheat Sheet

FOR MEMBERS:

1. Custom Sounds When being "@" mentioned (No commands needed)
1. Support System:
    * ```/support [Message]``` - Send a help message to a Staff-Member
  
3. Head-Up-Display: This will show above your hotbar. It includes Your Display Name, Your Coordinates, updating once per second, Number of players online, and your ping in ```ms```. 

4. Friend System:
    * use ```/friends``` to get to the friend menu. It should be self-explanatory after that.
5. MIDIPlayer:
    * use ```/midi list``` to show the available
    * ```/midi play [songName]``` to play the song in note-block
6. Upgradable Furnaces:
    * *SNEAK* + *USE* to upgrade. Costs XP.
    * *USE* to use
    * **IMPORTANT:** You HAVE to *SNEAK* and THEN start breaking the furnace.
    
7. Enchantment Table GUI:
    * Self-Explanatory, but it's changed from the normal one
    
8. BDPA Anti-Cheat:
    * You don't need to worry about it, but just know it's there for peace-of-mind
    
9. Custom Sounds For Player Join, Leave, and Die:
    * No commands are necessary, but you can just know it's there
    
# Additional Information for Staff and Above (Staff and Above Rank *REQUIRED*):

10. Staff Chat:
    * You are able to talk only to Staff and above using ```/sc [Message]```.
    
# Additional Information for Chat-Mods and Above (Chat-Mod and Above Rank *REQUIRED*)

11. BDPA Ban System:

Keys:
  * ```[NEEDED]```
  * ```<OPTIONAL>```
  * ```|``` = or
  * ```-s``` = Silent punishemnt (no notification to others)
  
Commands:
   * ```/kick [PLAYER] <-s> <REASON | @LAYOUT>``` - Kick a Player
   * ```/ban /mute /warn [PLAYER] <-s> <REASON | @LAYOUT>``` - Ban/Mute/Warn a player
   * ```/banip [PLAYER/IP] <-s> <REASON | @LAYOUT>``` - Ban a player's IP. If you enter a name (ex: MagmaCube20) it will use the cached IP
   * ```/tempban /tempmute /tempwarn [PLAYER] [Xmo|Xd|Xh|Xm|Xs|#TIMELAYOUT] <-s> <REASON | @LAYOUT>``` - Tempban/mute/warn a player for a given time or with a time-layout for automatic-time-calcualtion
   * ```/tempipban [PLAYER/IP] [Xmo|Xd|Xh|Xm|Xs|#TIMELAYOUT] <-s> <REASON | @LAYOUT>``` - Temippban a player for a given time or with a time-layout for automatic-time-calcualtion
Alias: /tipban
   * ```/change-reason [ID] [New reason]``` - Change the reason for a punishment by id
   * ```/change-reason [ban/mute] [PLAYER] [New reason]``` - Change the reason for a players punishment
   * ```/unban /unmute [PLAYER]``` - Unban/Unmute a Player
   * ```/unwarn [ID]``` - Delete a warn
   * ```/unpunish [ID]``` - Delete a punishment
   * ```/warns <PLAYER>``` - See your own or a player's warnings.
   * ```/check [PLAYER]``` - Get player-status: UUID/IP/Country/Ban-Status/Mute-Status/Warn-Count
   * ```/banlist <PAGE>``` - See all currently active punishments
   * ```/history [PLAYER] <PAGE>``` - See all currently active punishments
   * ```/history [PLAYER] <PAGE>``` - To use the command - ab.history
   * ```/advancedban reload``` - Reloads the messages from file and "some" settings
   * ```/advancedban help``` - Shows a list of all commands and a brief explanation
   * ```/systemprefs``` - Displays some System-Information which are useful for the configuration

# Additional Information for Mods and Above (Mod and Above Rank *REQUIRED*):

12. Player Freeze System
   * ```/freeze [player|all]``` - Freeze a player (or *ALL*)
   * ```/unfreeze [player|all]``` - Unfreeze a player (or *ALL*)
