import XMonad
import XMonad.Actions.SpawnOn
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.FadeInactive
import XMonad.Hooks.SetWMName
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.FadeInactive
import System.IO



floatHook :: ManageHook
floatHook = composeAll 
  [ className =? "Gimp" --> doFloat
  , resource =? "pyprompt" --> doFloat
  , resource =? "evince"   --> doFloat
  , resource =? "plugin-container" --> doFloat
  , resource =? "minecraft" --> doFloat
  ]
myLogHook :: X ()
myLogHook = fadeInactiveLogHook fadeAmount
  where fadeAmount = 0.85

workspaceNames = ["1:su", "2:comm", "3:web", "4:vi", "5:dev", "6", "7", "8", "9:bg"]

main = do
    xmproc <- spawnPipe "/usr/bin/xmobar /home/wisp/.xmobarrc"
    xmonad $ defaultConfig
      { manageHook =  manageDocks <+> floatHook <+> manageHook defaultConfig
        , workspaces = workspaceNames
        , terminal = "urxvt"
        , modMask = mod4Mask
        , startupHook = setWMName "LG3D"
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = (dynamicLogWithPP $ xmobarPP
            { ppOutput = hPutStrLn xmproc
            , ppTitle = xmobarColor "green" "" . shorten 50
            }) >> (myLogHook) 
      } `additionalKeys`
        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
        , ((controlMask, xK_Print), spawn "cd ~/Pictures/screenshots && sleep 0.2; scrot -s ")
        , ((0,       xK_Print), spawn "cd ~/Pictures/screenshots && scrot ")
        , ((mod4Mask, xK_p   ), spawn "exe=`dmenu_run` && eval \"exec $exe\"")
        , ((mod4Mask, xK_Up  ), spawn "mpc volume +10")
        , ((mod4Mask, xK_Down), spawn "mpc volume -10")
        , ((mod4Mask,  xK_d),    spawn "~/.scripts/toggle-display.sh")
        , ((mod4Mask,  xK_e),   spawnOn "8" "xterm")
        , ((mod4Mask .|. controlMask, xK_m), spawn "mplayer ~/.resources/nyeah.mp3")
        ]
