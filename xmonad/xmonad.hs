import System.IO
import XMonad
import XMonad.Actions.SpawnOn
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers (isFullscreen, doFullFloat, doCenterFloat)
import XMonad.Hooks.UrgencyHook
import qualified XMonad.Layout.Fullscreen as Fullscreen
import XMonad.Layout.NoBorders
import XMonad.Layout.Spiral
import XMonad.Layout.LayoutHints
import XMonad.Layout.Tabbed
import Graphics.X11.ExtraTypes.XF86
import XMonad.Util.EZConfig
import XMonad.Util.Run(spawnPipe)

monokaiBlue = "#66D9EF"

myWorkspaces = ["1", "2", "3", "4", "5", "6", "7"]

myLayout = (
    Tall 1 (3/100) (1/2) |||
    Full |||
    Mirror (Tall 1 (3/100) (1/2)) |||
    noBorders (Fullscreen.fullscreenFull Full)
    )

startup = do
  spawnOn "1" "urxvt -e tmux"

nManageHook = composeAll . concat $
                [ [ className =? "Steam" --> doShift "user"]
                  ,[ className =? c --> doShift "com" | c <- communication ]
                  ,[ className =? c --> doIgnore | c <- ignore ]
                  ,[ className =? c --> doFloat | c <- floats ]
                  ,[ isFullscreen --> doFullFloat ]
                ] where ignore = ["panel", "Trayer", "trayer"]
                        floats = ["Xmessage", "Steam"]
                        communication = ["Empathy", "Gajim", "irssi"]
                        web = ["Google-chrome", "firefox"]

main = do
  xmproc <- spawnPipe "xmobar ~/.xmonad/xmobarrc"
  xmonad $ withUrgencyHook NoUrgencyHook $ ewmh defaultConfig
    { borderWidth = 2
      , modMask = mod4Mask
      , workspaces = myWorkspaces
      , normalBorderColor  = "#cccccc"
      , focusedBorderColor = "#cd8b00"
      , startupHook = startup
      , manageHook = manageDocks <+> nManageHook
      , layoutHook = avoidStruts $ smartBorders $ myLayout
      , logHook = dynamicLogWithPP $ xmobarPP
            { ppOutput = hPutStrLn xmproc
              , ppTitle = xmobarColor monokaiBlue "" . shorten 100
              , ppHiddenNoWindows = xmobarColor "grey" "" . wrap "" ""
              , ppUrgent = xmobarColor "black" "#FD971F" . wrap "" ""
              , ppCurrent = xmobarColor monokaiBlue "" . wrap "" ""
              , ppVisible = xmobarColor "grey" "" . wrap "(" ")"
              , ppLayout = xmobarColor "#999" "" . wrap "|" "|"
              , ppSep = " · "
            }
    } `additionalKeys`
    [ ((mod4Mask .|. shiftMask, xK_l), spawn "xscreensaver-command -lock")
     , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
     , ((0, xK_Print), spawn "scrot")
     , ((0, xF86XK_AudioRaiseVolume), spawn "amixer sset Master 3%+")
     , ((0, xF86XK_AudioLowerVolume), spawn "amixer sset Master 3%-")
     , ((0, xF86XK_AudioMute), spawn "amixer sset Master toggle")
    ]

