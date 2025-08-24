#! /bin/bash
# quakestart.sh - quake live multiple server spawning script.
# created by Thomas Jones on 09/09/15.
# thomas@tomtecsolutions.com


# Defining variables.
export location="DE"
export qPathToStartScript="~/steamcmd/steamapps/common/qlds/run_server_x86.sh"
sponsortag="$location"

gameport=`expr $1 + 27960`
rconport=`expr $1 + 28960`
servernum=`expr $1 + 0`

# Executing a random delay to stagger the spawning of each server, as
# supervisord starts everything at once, thus lowering the load surge.
#    echo "Sleeping for random delay (5-30 seconds) before spawning..."
#    sleep $(((RANDOM%120)+10))
# No-one cares about this anymore, sleeping on a per-server basis now?
# Finally works, should mean that all servers should be up after 45 seconds.

# Starts servers with different settings, based off the process number parsed
# as argument 1 by supervisord. 

echo "========== QuakeStart.sh has started. =========="
echo "========= $(date) ========="
#echo "arg1 is equal to $1"
cd ~/steamcmd/steamapps/common/qlds/baseq3

if [ $1 -eq 0 ]
# starting PQL CA 1
then
echo "TEST CTF"
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum CTF TEST" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "CTF, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlca.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 1 ]
# starting VQL CA 1
then
echo "Starting PQL CTF server 1..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking PQL - Capture the Flag" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "PQL, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_pqlctf.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 2 ]
# starting PQL Race 1...
then
echo "Starting race server 1..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking PQL - Race" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "PQL, defrag, grappling hook, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_pqlrace.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 3 ]
# starting PQL FFA 1...
then
echo "Starting Free for all server 1..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking Free For All" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "VQL, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlffa.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 4 ]
# starting PQL CTF 1...
then
echo "Starting Free for all server 2..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking Free for All | loadouts" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "VQL, loadouts, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlffa.txt" \
    +set serverstartup "loadouts on" \
    +set serverstartup "startRandomMap" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 5 ]
# starting PQL DOM 1...
then
echo "Starting PQL clan arena server 1..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking PQL - Clan Arena" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "PQL, CA, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_pqlca.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 6 ]
# starting PQL INFECTED 1...
then
echo "Starting PQL FFA server 1..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking PQL - Free For All" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "PQL, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_pqlffa.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 7 ]
# starting PQL TDM 1...
then
echo "Starting PQL A&D server 1..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking PQL - Attack & Defend" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "PQL, Attack&Defend, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_pqlad.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 8 ]
# starting PQL MultiGame 1...
then
echo "Starting multi game type server 1..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking $qServerLocation PQL - Multi-Gametype Turbo" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "PQL, multi-mode, $sponsortag" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_pqlmulti.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 9 ]
# starting vql duel 1...
then
echo "Starting VQL duel server 1..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking Duel" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "VQL, $sponsortag" \
    +set g_voteFlags "13320" \
    +set g_allowSpecVote 0 \
    +set g_allowVoteMidGame 0 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlduel.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 10 ]
# starting VQL iCTF 1...
then
echo "Starting VQL duel server 2..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "#$servernum let's start cooking Duel" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPasswordPurgery" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPasswordPurgery" \
    +set zmq_stats_port $gameport \
    +set sv_tags "VQL, $sponsortag" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_purgery.txt" \
    +set sv_mappoolFile "mappool_vqlduel.txt" \
    +set fs_homepath ~/.quakelive/$gameport
elif [ $1 -eq 11 ]
# starting mickzerofive's brisbane server 1...
then
if [ $(hostname) == "brisbane.quakelive.tomtecsolutions.com.au" ]
then
echo "Starting mickzerofive's server..."
exec $qPathToStartScript \
    +set net_strict 1 \
    +set net_port $gameport \
    +set sv_hostname "http://4SeasonsGaming.com $qServerLocation" \
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "$qRconPassword4sg" \
    +set zmq_rcon_port $rconport \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "$qRconPassword4sg" \
    +set zmq_stats_port $gameport \
    +set sv_tags "4Seasons Gaming,$qServerLocation" \
    +set g_allowSpecVote 1 \
    +set g_allowVoteMidGame 1 \
    +set bot_enable 1 \
    +set bot_nochat 1 \
    #+set qlx_owner "76561198032849113" \
    +set g_accessFile "access_mickzerofive.txt" \
    +set sv_mappoolFile "mappool_default.txt" \
    +set fs_homepath ~/.quakelive/$gameport
else
echo "This system is not intended to host MickZeroFive's server."
fi

fi
