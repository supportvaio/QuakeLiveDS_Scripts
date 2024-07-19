#! /bin/bash
# quakestart.sh - quake live multiple server spawning script.
# created by Thomas Jones on 09/09/15.
# purger@tomtecsolutions.com


# Defining variables.
export qServerLocation=$(<localConfig-serverLocation.txt)
export qPathToMinqlxStartScript="~/steamcmd/steamapps/common/qlds/run_server_x64_minqlx.sh"
export qPathToVanillaStartScript="~/steamcmd/steamapps/common/qlds/run_server_x64.sh"
export qRconPasswordPurgery=$(<~/localConfig-rconPassword-purgery.txt)
sponsortag="RU,EKB"

gameport=`expr $1 + 27960`
rconport=`expr $1 + 28960`
servernum=`expr $1 + 0`

# Starts servers with different settings, based off the process number parsed
# as argument 1 by supervisord. 

echo "========== QuakeStart.sh has started. =========="
echo "========= $(date) ========="
echo "arg1 is equal to $1"
cd ~/steamcmd/steamapps/common/qlds/baseq3

if [ $1 -eq 0 ]
# starting PQL CA 1
then
echo "Starting CA server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking Clan Arena" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,VQL,PQL,CA,$sponsortag" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!elo^7, ^1!elos^7, ^1!teams^7,"\
    +set qlx_serverBrandBottomField "^1!sounds^7, ^3/cv nextmap^7, ^3/cv ruleset ^2vql^7/^1pql^7, ^3/cv gamemode triweapon ^2on^7/^1off^7" \
    +set qlx_defaultMapToChangeTo "campgrounds" \
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, solorace, log, silence, docs, fun, balance, branding, votestats, translate, player_info, checkplayers, vote, votemanager, custom_votes, ips, changemap, aliases, funlimit, mybalance, myban, myessentials, afk, q3resolver, gamemode_triweapon, gamemode_secondchance, killingspree" \
    +set qlx_elo_limit_min "0" \
    +set qlx_elo_limit_max "5000" \
    +set qlx_elo_games_needed "1" \
    +set qlx_mybalance_autoshuffle "1" \
    +set qlx_afk_warning_seconds "45" \
    +set qlx_afk_detection_seconds "90" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    +set g_loadout 0 \
    +set sv_includeCurrentMapInVote "1" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlca.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 1 ]
# starting VQL CA 1
then
echo "Starting VQL race server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking VQL - Race" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "VQL,defrag,QLRace,classic,$sponsortag" \
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, log, silence, docs, fun, balance, branding, checkplayers, votestats, race, translate, votemanager, custom_votes, ips, aliases" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!top^7, ^1!stop^7", \
    +set qlx_serverBrandBottomField "^1!help^7, ^1!sounds^7, ^3/cv nextmap^7" \
    +set qlx_raceMode "2" \
    +set qlx_raceBrand "let's start cooking" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_qlrace_classic.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 2 ]
# starting PQL Race 1...
then
echo "Starting PQL race server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking PQL - Race" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "PQL,defrag,QLRace,turbo,$sponsortag" \
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, log, silence, docs, fun, balance, branding, checkplayers, votestats, race, translate, votemanager, custom_votes, ips, aliases" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!top^7, ^1!stop^7", \
    +set qlx_serverBrandBottomField "^1!help^7, ^1!sounds^7, ^3/cv nextmap^7" \
    +set qlx_raceMode "0" \
    +set qlx_raceBrand "let's start cooking" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_qlrace_turbo.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 3 ]
# starting PQL FFA 1...
then
echo "Starting Free for all server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking FFA | classic" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,VQL,classic,$sponsortag" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!elo^7, ^1!elos^7", \
    +set qlx_serverBrandBottomField "^1!sounds^7, ^3/cv nextmap^7, ^3/cv allready^7" \
    +set qlx_defaultMapToChangeTo "asylum" \
    +set g_voteFlags "29800" \
    +set g_itemTimers "0" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    +set qlx_workshopReferences "701783942" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlffa.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 4 ]
# starting PQL CTF 1...
then
echo "Starting Free for all server 2..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking FFA | loadouts" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,VQL,loadouts,$sponsortag" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!elo^7, ^1!elos^7", \
    +set qlx_serverBrandBottomField "^1!sounds^7, ^3/cv nextmap^7, ^3/cv allready^7" \
    +set qlx_defaultMapToChangeTo "hiddenfortress" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set g_loadout 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    +set qlx_workshopReferences "701783942" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlffa.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 5 ]
# starting PQL DOM 1...
then
echo "Starting iFT server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking InstaFreeze" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,VQL,freezetag,iFT,instafreezetag,$sponsortag" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!elo^7, ^1!elos^7, ^1!teams^7,"\
    +set qlx_serverBrandBottomField "^1!sounds^7, ^3/cv nextmap^7" \
    +set qlx_defaultMapToChangeTo "retribution" \
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, solorace, log, silence, docs, fun, balance, branding, votestats, translate, player_info, checkplayers, vote, votemanager, custom_votes, ips, changemap, aliases, funlimit, mybalance, myban, myessentials, afk, q3resolver, killingspree" \
    +set qlx_elo_limit_min "0" \
    +set qlx_elo_limit_max "5000" \
    +set qlx_elo_games_needed "0" \
    +set qlx_mybalance_autoshuffle "1" \
    +set qlx_afk_warning_seconds "30" \
    +set qlx_afk_detection_seconds "60" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    +set sv_includeCurrentMapInVote "1" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlift.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 6 ]
# starting PQL INFECTED 1...
then
echo "Starting VQL duel server 3..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking Duel" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,VQL,$sponsortag" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!elo^7, ^1!elos^7", \
    +set qlx_serverBrandBottomField "^1!sounds^7, ^3/cv nextmap^7" \
    +set qlx_defaultMapToChangeTo "lostworld" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_timeoutCount 3 \
    +set g_timeoutLen 90 \
    +set sv_includeCurrentMapInVote "1" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlduelextra.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 7 ]
# starting PQL TDM 1...
then
echo "Starting Instagib All server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking Instagib FUN" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,instagib,instabounce,$sponsortag" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!elo^7, ^1!elos^7", \
    +set qlx_serverBrandBottomField "^1!sounds^7, ^3/cv nextmap^7, ^3/cv allready^7" \
    +set qlx_defaultMapToChangeTo "quarantine" \
    +set g_voteFlags "29792" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set qlx_workshopReferences "701783942" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_insta_all.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 8 ]
# starting PQL MultiGame 1...
then
echo "Starting Midair server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking Midair FFA/Duel" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    +set sv_tags "Elo,VQL,Midair,rocketinstagib,$sponsortag" \
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, solorace, log, silence, docs, fun, balance, branding, votestats, translate, player_info, midair_only, checkplayers, vote, votemanager, custom_votes, ips, aliases, funlimit, myban, myessentials, q3resolver, botmanager, killingspree" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!top^7, ^1!mytop^7, ^1!kills^7," \
    +set qlx_serverBrandBottomField "^3/cv nextmap^7, ^3/cv allready^7, ^1!addbot^7, ^1!rembot^7" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set qlx_workshopReferences "701783942" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_midair.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 9 ]
# starting vql duel 1...
then
echo "Starting VQL duel server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking Duel" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,QL,$sponsortag" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!elo^7, ^1!elos^7", \
    +set qlx_serverBrandBottomField "^1!sounds^7, ^3/cv nextmap^7" \
    +set qlx_defaultMapToChangeTo "cure" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_timeoutCount 3 \
    +set g_timeoutLen 90 \
    +set sv_includeCurrentMapInVote "1" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlduelextra.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 10 ]
# starting VQL iCTF 1...
then
echo "Starting VQL duel server 2..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking Duel" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,VQL,$sponsortag" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!elo^7, ^1!elos^7", \
    +set qlx_serverBrandBottomField "^1!sounds^7, ^3/cv nextmap^7" \
    +set qlx_defaultMapToChangeTo "sinister" \
    +set g_voteFlags "29800" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_timeoutCount 3 \
    +set g_timeoutLen 90 \
    +set sv_includeCurrentMapInVote "1" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlduelextra.txt" \
    +set fs_homepath ~/.quakelive/$gameport
fi
