; Script by powdahound (powdahound@planetside-universe.com) Modded and updated by Hamma (hamma@planetside-universe.com)
; Version released on: 1/2/2003
; Updated: 10/20/2003

alias PSUSSabout {
  /echo -a 0,2 • • • • •
  /echo -a 0,2 • PSUSS - PSU Services Script
  /echo -a 0,2 • by PSU-powdahound modded by PSU-Hamma
  /echo -a 0,2 • Designed on and for irc.planetside-universe.com:6667
  /echo -a 0,2 • Please report bugs to powdahound@planetside-universe.com / hamma@planetside-universe.com
  /echo -a 0,2 • http://www.planetside-universe.com
  /echo -a 0,2 • • • • •
}
menu channel {
  -
  PSU Chanserv ( $+ # $+ )
  .Set Prefs
  ..Founder:/cs set # founder $?="Nick?"
  ..Password:/cs set # password $?="New Password?"
  ..Successor
  ...Set Successor:/cs set # successor $?="Nick?"
  ..-
  ..Chan Description:/cs set # desc $?="Channel description for # $+ ?"
  ..URL:/cs set # URL $?="URL for # $+ ?"
  ..Email:/cs set # desc $?="Email for # $+ ?"
  ..Welcome Message
  ...Set:/cs set # ENTRYMSG $?="Welcome message for # $+ ?"
  ...-
  ...Help:/cs help set entrymsg
  ..-
  ..Topic
  ...Keep Topic
  ....On:/cs set # keeptopic on
  ....Off:/cs set # keeptopic off
  ....-
  ....Help:/cs help set keeptopic 


  ..Secure Ops
  ...On:/cs set # secureops on
  ...Off:/cs set # secureops off
  ...-
  ...Help:/cs help set secureops 

  ..Leave Op
  ...On:/cs set # leaveops on
  ...Off:/cs set # leaveops off
  ...-
  ...Help:/cs help set leaveops 

  ..Enforce Ops
  ...On:/cs set # enforce on
  ...Off:/cs set # enforce off
  ...-
  ...Help:/cs help set enforce 


  ..Mode Lock
  ...Set MLOCK for #:/cs set # mlock $?="Modes to lock for # $+ ?"
  ...Clear MLOCK:/cs set # mlock +
  ...-
  ...Help:/cs help set mlock

  ..Restricted
  ...On:/cs set # restricted on
  ...Off:/cs set # restricted off
  ...-
  ...Help:/cs help set restricted

  ..Op Notice
  ...On:/cs set # opnotice on
  ...Off:/cs set # opnotice off
  ...-
  ...Help:/cs help set opnotice 

  ..Private
  ...On:/cs set # private on
  ...Off:/cs set # private off
  ...-
  ...Help:/cs help set private 
  ..-

  .Core Commands
  ..Register:/cs register # $?="Password?" $?="Description?"
  ..Identify:/cs identify # $?="Password?"
  ..Drop:/cs drop #
  ..Info:/cs info #
  .Clear Commands
  ..Clear Bans:/cs clear # bans
  ..Clear Modes:/cs clear # modes
  ..Clear Exceptions:/cs clear # exceptions
  ..Clear Ops:/cs clear # ops
  ..Clear HalfOps:/cs clear # halfops
  ..Clear Voices:/cs clear # voices
  ..Clear all Users (Mass Kick):/cs clear # users

  .Other Commands
  ..Unban
  ...Unban Self:/cs unban $?="In channel?"
  ...Clear Bans in #:/cs unban # all
  .-
  .Script
  ..About:/PSUSSabout

  PSU Nickserv ( $+ $me $+ )
  .Register:/ns register $?="Password?" $?="Email Address?"
  .Identify:/ns identify $?="Password?"
  .Drop (Delete Nick):/ns drop $?="Password?"
  .Link Nick to ( $+ $me $+ )
  ..Link:/ns link $?="Other Nickname?"
  ..Unlink:/ns unlink $?="From Nick?"
  ..List Links:/ns listlinks
  .AutoJoin Channels
  ..Add #:/ns ajoin add #
  ..Delete #:/ns ajoin del #
  ..List:/ns ajoin list
  .Set Options
  ..Password:/ns set password $?="Password?"
  ..URL:/ns set url $?="URL?"
  ..EMAIL:/ns set email $?="New Email?"
  ..Info:/ns set info $?="Info?"
  ..Kill
  ...On:/ns set kill on
  ...Quick:/ns set kill quick
  ...Off:/ns set kill off
  ...-
  ...Help:/ns help set kill

  About Script:/PSUSSabout
}

menu nicklist {
  -
  PSU Chanserv ( $+ # $+ )
  .Status
  ..Voice:/cs voice # $$1
  ..Devoice:/cs devoice # $$1
  ..-
  ..Half-Op:/cs halfop # $$1
  ..De-Half-op:/cs dehalfop # $$1
  ..-
  ..Op:/cs op # $$1
  ..Deop:/cs deop # $$1
  .Access
  ..VOP (Auto Voice)
  ...Add:/cs vop # add $$1
  ...Delete:/cs vop # del $$1
  ...-
  ...List:/cs vop # list
  ...Help:/cs help vop

  ..HOP (Auto Half-Op)
  ...Add:/cs hop # add $$1
  ...Delete:/cs hop # del $$1
  ...-
  ...List:/cs hop # list
  ...Help:/cs help hop 

  ..AOP (Auto Op)
  ...Add:/cs aop # add $$1
  ...Delete:/cs aop # del $$1
  ...-
  ...List:/cs aop # list
  ...Help:/cs help aop 

  ..SOP (Super Op)
  ...Add:/cs sop # add $$1
  ...Delete:/cs sop # del $$1
  ...-
  ...List:/cs sop # list
  ...Help:/cs help sop 

  ..Successor
  ...Set as # Successor:/cs set # successor $$1
  ..-
  ..Protected
  ...Protect Nick:/cs protect # $$1
  ...Deprotect Nick:/cs deprotect # $$1
  ...-
  ...Help:/cs help protect | /cs help deprotect

  .AKICK (Auto Kick)
  ..Add:/cs akick # add $address($$1,5) $?="Reason?"
  ..Delete:/cs akick # del $?="Host (user@host)"
  ..-
  ..List:/cs akick # list
  ..Help:/cs help akick

}
