vrp_court by mr_cpu_geek Version 1.0
Based on:
Jailer by Albo1125 (LUA, FXServer, FiveM). Version 1.1.0.0.



The Jail location is the Bolingbroke State Penitentiary.

Commands to type in chat (T):
/jailme SECS -- Jails yourself, if SECS not given defaults to the default jail time.
/jail PLAYERID SECS | REASON -- Jails the player with PLAYERID (hold up arrow ingame to see).  If SECS not given, defaults to the default jail time.  A "police_record" is recorded in the user_data table
/unjail PLAYERID | REASON -- Unjails the player with PLAYERID (hold up arrow ingame to see).
/ticket PLAYERID FINE| REASON -- Create a Ticket and charges user the FINE amount.  If user does not have enought money, they will have a negitive balance.  A "police_record" is recorded in the user_data table
/warrant PLAYERID | REASON -- Add to user's "police_record" that they have an active warrant.  **Note:  as of right now, the warrant will not "clear" from the users list.  Use /unwarrant to not that the warrant is cleared
/unwarrant PLAYERID | NOTES -- Notes that Active warrants have been cleared int he user's "police_record" table.
