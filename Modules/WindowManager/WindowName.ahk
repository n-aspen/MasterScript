oldTitle = noneYouMoron

*^!F15::
WinGetActiveTitle, Window ;getting active (selected) window and placing title in the variable %Window%
WinSetTitle, %Window%, , %oldTitle% ;Setting window acquired previously to old title
return

*^!F17::
WinGetActiveTitle, Window ;getting active (selected) window and placing title in the variable %Window%
oldTitle = %Window%
WinSetTitle, %Window%, , %instance1% ;Setting window acquired previously to appropriate instance
return

;repeating for the rest of the instances

*^!F18::
WinGetActiveTitle, Window
oldTitle = %Window%
WinSetTitle, %Window%, , %instance2%
return

*^!F16::
WinGetActiveTitle, Window
oldTitle = %Window%
WinSetTitle, %Window%, , %instance3%
return

*^!F14::
WinGetActiveTitle, Window
oldTitle = %Window%
WinSetTitle, %Window%, , %instance4%
return

*^!F20::
WinGetActiveTitle, Window
oldTitle = %Window%
WinSetTitle, %Window%, , mov51-sprout
return
