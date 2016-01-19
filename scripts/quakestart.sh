#! /bin/bash
# quakestart.sh - quake live multiple server spawning script.
# created by Thomas Jones on 09/09/15.
# purger@tomtecsolutions.com


# Defining variables.
export qServerLocation=$(<localConfig-serverLocation.txt)
export qPathToMinqlxStartScript="~/steamcmd/steamapps/common/qlds/run_server_x64_minqlx.sh"
export qPathToVanillaStartScript="~/steamcmd/steamapps/common/qlds/run_server_x64.sh"
export qRconPasswordPurgery=$(<~/localConfig-rconPassword-purgery.txt)
export qRconPassword4sg=$(<~/localConfig-rconPassword-mickzerofive.txt)
sponsortag="RU,EKB"

gameport=`expr $1 + 27960`
rconport=`expr $1 + 28960`
servernum=`expr $1 + 0`

# Starts servers with different settings, based off the process number parsed
# as argument 1 by supervisord. 

echo "========== QuakeStart.sh has started. =========="
echo "========= $(date) ========="
#echo "arg1 is equal to $1"
cd ~/steamcmd/steamapps/common/qlds/baseq3

if [ $1 -eq 0 ]
# starting PQL CA 1
then
echo "Starting clan arena server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking CA Classic | Elo shuffle" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,VQL,CA,$sponsortag" \
    +set g_voteFlags "8" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
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
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, solorace, log, silence, docs, fun, balance, aliases, branding, votestats, race" \
    +set qlx_raceMode "2" \
    +set qlx_raceBrand "let's start cooking" \
    +set g_voteFlags "8" \
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
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, solorace, log, silence, docs, fun, balance, aliases, branding, votestats, race, translate" \
    +set qlx_raceMode "0" \
    +set qlx_raceBrand "let's start cooking" \
    +set g_voteFlags "8" \
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
    +set g_voteFlags "8" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
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
    +set g_voteFlags "8" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_loadout 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlffa.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 5 ]
# starting PQL DOM 1...
then
echo "Starting Clan arena server 2..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking CA Easy | Anti-rape" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,VQL,CA,anti-rape,$sponsortag" \
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, solorace, log, silence, docs, fun, balance, aliases, branding, votestats, autospec, translate, player_info, anti_rape, referee, checkplayers, vote" \
    +set g_voteFlags "8" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlca.txt" \
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
    +set g_voteFlags "8" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_timeoutCount 3 \
    +set g_timeoutLen 30 \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlduelextra.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 7 ]
# starting PQL TDM 1...
then
echo "Starting InstaBounce server 1..."
exec $qPathToMinqlxStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "    #$servernum let's start cooking InstaBounce FFA" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "Elo,instagib,instabounce,$sponsortag" \
    +set g_voteFlags "8" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_instabounce.txt" \
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
    +set sv_tags "Elo,VQL,Midair,rocketinstagib,$sponsortag" \
    +set qlx_plugins "plugin_manager, essentials, motd, permission, ban, clan, names, solorace, log, silence, docs, fun, balance, aliases, branding, votestats, autospec, translate, player_info, midair_only, referee, checkplayers, vote" \
    +set qlx_serverBrandTopField "^7This is ^3darksab^20^3r^7's server. Commands: ^1!top^7, ^1!mytop^7, ^1!kills^7," \
    +set qlx_serverBrandBottomField "^3/cv nextmap^7, ^3/cv rocketinstagib ^2on^7/^1off^7" \
    +set g_voteFlags "8" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
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
    +set g_voteFlags "8" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_timeoutCount 3 \
    +set g_timeoutLen 30 \
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
    +set g_voteFlags "8" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_timeoutCount 3 \
    +set g_timeoutLen 30 \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlduelextra.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 11 ]
# starting mickzerofive's brisbane server 1...
then
if [ $(hostname) == "brisbane.quakelive.tomtecsolutions.com.au" ]
then
echo "Starting mickzerofive's server..."
exec $qPathToVanillaStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "http://4SeasonsGaming.com $qServerLocation" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$(<localConfig-rconPassword-mickzerofive.txt)" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$(<localConfig-rconPassword-mickzerofive.txt)" \
    +set zmq_stats_port $gameport \
    +set sv_tags "4Seasons Gaming,$qServerLocation" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 1 \
    +set g_accessFile "access_mickzerofive.txt" \
    +set sv_mappoolFile "mappool_default.txt" \
    +set fs_homepath ~/.quakelive/$gameport
else
echo "This system is not intended to host MickZeroFive's server."
fi

fi


# Unused cvars.
# +set sv_mapPoolFile "mappool_pqlca.txt" \
# +set net_ip "quakelive.tomtecsolutions.com.au" \
# +set com_hunkMegs 30 \
# +set sv_idleExit 0
