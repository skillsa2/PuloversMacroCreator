﻿# Pulover's Macro Creator
*An Interface-Based Automation Tool & Script Writer.*

[www.autohotkey.net/~Pulover](http://www.autohotkey.net/~Pulover)  
[Forum Thread](http://www.autohotkey.com/board/topic/79763-macro-creator)  

Author: Pulover \[Rodolfo U. Batista\]  
[rodolfoub@gmail.com](mailto:rodolfoub@gmail.com)  
Copyright © 2012-2013 Rodolfo U. Batista  

Version: 3.7.0 
Release Date: May, 2013  
AutoHotkey Version: 1.1.10.00  

Software License: [GNU General Public License](License.html)  

## Thanks to

Chris and Lexikos for [AutoHotkey](http://www.autohotkey.com/).  
tic (Tariq Porter) for his [GDI+ Library](http://www.autohotkey.com/board/topic/29449-gdi-standard-library).  
tkoi & majkinetor for the [ILButton function](http://www.autohotkey.com/board/topic/37147-ilbutton-image-buttons).  
just me for [LV_Colors Class](http://www.autohotkey.com/board/topic/88699-class-lv-colors), GuiCtrlAddTab and for updating ILButton to 64bit.  
diebagger and Obi-Wahn for the [function to move rows](http://www.autohotkey.com/board/topic/56396-techdemo-move-rows-in-a-listview).  
Kdoske & trueski for the [CSV functions](http://www.autohotkey.com/board/topic/51681-csv-library-lib).  
jaco0646 for the [function](http://www.autohotkey.com/board/topic/47439-user-defined-dynamic-hotkeys) to make hotkey controls detect other keys.  
Laszlo for the [Monster function](http://www.autohotkey.com/board/topic/15675-monster) to solve expressions.  
Jethrow for the [IEGet Function](http://www.autohotkey.com/board/topic/47052-basic-webpage-controls).  
fincs for [GenDocs](http://www.autohotkey.com/board/topic/71751-gendocs-v30-alpha002).  
T800 for [Html Help utils](http://www.autohotkey.com/board/topic/17984-html-help-utils).  


# Change Log

## Version 3.7.0

* Added new Loop commands: *FilePattern*, *Parse*, *Read* and *Registry*.
* Added *Break* to Image/Pixel Search options.
* Added *Break loop if image is found* option to Image/Pixel Search.
* Added support to set an Infinite Loop for Macros.
* Added *Controls Toolbar*.
* Added *Clear List* option for *Record New Macro* to restart the current Macro.
* Added *Play Selected Rows* option.
* Added *Apply* button to command windows.
* Added *Icon*, *Always On Top* and *Cancel* options to *Message* command.
* Added *Check for updates* feature.
* Added Help and button and F1 Help to Command windows.
* Added *Quick Select* to *Action* column (double-click for indentation).
* Added option to choose between 64-bit and 32-bit versions during setup.
* Added more icons and shortcuts.
* Added translations to Croatian, Catalan, Greek, Serbian, Ukrainian and Traditional Chinese.
* Fixed bug: *Goto* command not working inside Loops.
* Fixed an error with *A_Index* variable inside loops.
* Fixed some translation errors.
* Macro Loop counter is now independent of Quick-Edit Repeat counter in the Main Window.
* Corrected Version format to comply with software standards.
* Improved Help File.

## Version 3.6.3

* Added Dragging Rows with mouse.
* Added hotkeys (Ctrl/Shift + Arrow keys) to adjust search/screenshot area when *Press Enter to capture* option is selected.
* Added Screenshot Options button to *Image/Pixel Search* command window.
* Added *Recent Files* submenu in *File Menu*.
* *Repeat* and *Delay* fields now accept variables and functions for all commands.
* Improved handling of associated files.
* Fixed a bug with *GetElementByID* method of *Internet Explorer*.
* Fixed an issue with wrong coordinates recorded in background windows clicks.
* Fixed an issue with *Set as Default Hotkeys* option.
* Fixed *External Functions* not working inside loops.
* Fixed syntax errors in Expressions and Functions.
* Fixed some redrawing issues with listviews.
* Fixed various glitches and issues.
* Changed location of settings file (MacroCreator.ini) to AppData folder.
* Changed default location of Screenshots folder to AppData folder.
* Removed auto-escape commas for *Mouse* actions due to incompatibility with expressions.

## Version 3.6.2

* Added *Gosub* command to *Loop* command Window.
* Added *ExitApp* and *SendLevel* commands to *Run* command Window.
* Added *Copy* button to *Preview* window.
* Added *Create EXE File* option in *Export* window (requires AutoHotkey installed).
* *Label* and *Goto/Gosub* are now editable.
* Repeat field of *Loop* commands now accept variables and functions.
* Commas are now automatically escaped inside all commands.
* Restored *Windows Messages* button to Main Window.
* Reduced Memory Usage.
* Fixed a bug when adding *If Statements* on multiple rows.
* Fixed a bug when capturing Up Keys in Main Window.
* Fixed a bug when editing multiple commands.
* Fixed some issues with Functions inside commands.

## Version 3.6.1

* Added *Quick Select*: Select a row and click a column header to select similar rows.
* Fixed *Pixel Search* button not working for languages other then English.
* Fixed an issue when editing comments.
* Fixed some issues with Hotkeys.
* Fixed some issues with exported scripts.
* Fixed some gui issues.

## Version 3.6.0

* Added support to use Functions from external files (requires AutoHotkey installed).
* Added *Play From* and *Play Until Selected Row* options in *Macro* menu.
* Added support for WinText, ExcludeTitle and ExcludeText in the *Window* field.
* Added *WinSetTitle* command.
* Added *Timer* command line parameter: -t*N* (*N* = Time Interval in miliseconds).
* *Pause Key* can now be used to Pause/Resume Recording.
* Editing the *Window* of multiple commands now affects *Win* commands.
* Fixed a syntax error of WinSet command in exported scripts.
* Fixed syntax errors of Functions in exported scripts.
* Fixed issues with command line parameters.
* Fixed Change History not updating after adding commands to selected rows.
* Fixed an issue when recording accents.
* Removed accents from default *Virtual Keys* to prevent recording issues.

## Version 3.5.3

* Added Indentation option to the *Action* column in the Main Window.
* Added option in *Settings* to display a Progress Bar during Playback.
* Added *Env* commands to the *Run* command window.
* Added *Close* command line parameter: -c (Exits program after Macro execution).
* Added *Silent* command line parameter: -s (Combines -a, -h and -c parameters).
* *Save Macro* dialog will no longer prompt for unchanged projects.
* Fixed Change History not updating after editing an existing command.

## Version 3.5.2

* Added *Play* command line parameter: -p (Activate Hotkeys on start up).
* Added *AutoPlay* command line parameter: -a*N* (*N* = Number of the Macro to run on start up).
* Added *Hide* command line parameter: -h (Hide Main Window on start up).
* Fixed an issue when resizing columns.
* Fixed a syntax error in recorded Click commands.

## Version 3.5.1

* Fixed bug: Variables not working.
* Fixed an issue with *Wait for page to load* function.
* Fixed some glitches in GUI's.

## Version 3.5.0

* Added *unverified* translations to Spanish, German, French, Italian, Russian, Polish, Dutch, Danish, Norwegian, Finnish, Swedish, Czech, Turkish, Hungarian, Bulgarian, Chinese, Japanese and Korean.
* Updated *Internet Explorer* COM functions to allow JavaScript calls via Navigate Method.
* *Stop*, *Speed Up* and *Slow Down* keys are now activated when using *Play Current Macro*.

## Version 3.4.2

* Fixed a bug with *Apply* buttons in the Main Window.
* Fixed a bug with *Duplicate Rows* function.

## Version 3.4.1

* Added Colors to *Loops* and *Statements* rows when Help Marks are activated.
* Added a list to select target window in *Internet Explorer* command window.
* Improved performance of the *Recorder*.

## Version 3.4.0

* Added *Play Current Macro* button to Main Window (run w/o hotkey).
* Added *Timer* button to Main Window (run current macro in a repeated interval).
* Added *Hide/Show Window* in TrayIcon Menu.
* Added *Regular Expression* option to *Find/Replace* window.
* Changed behavior of *Connect* button in *COM Interface (Advanced)* to allow user to select IE or Excel window to connect to.
* *Get* Button of *Internet Explorer* command window can now fetch elements and return the script for *COM Interface (Advanced)* as well.
* Added a help button to the list of functions in *Functions*.
* Fixed some issues with commas inside commands.
* Fixed switched order of *Pause* and *Control* buttons in the main window.
* Added a [FAQ](p0-Faq.html) to the Help file.

## Version 3.3.4

* Added *Evaluate Expression* to *If Statements* list (uses [Eval()](http://www.autohotkey.com/board/topic/15675-monster)).
* Improved performance of *Duplicate* command.
* Fixed some minor issues.
* Revised and reorganized Language files.

## Version 3.3.3

* Fixed Hotkeys not being deactivated when main window was active.
* Fixed a bug with Comments column during saving and paste.

## Version 3.3.2

* Added *Undo/Redo* commands with individual history per Macro.
* Added more options to *Find/Replace* window.
* Added more options to *Multi-Edit* window.
* Added option to show *Loop* and *If Statement* Help Marks in row index.
* Added a message warning about Record/Playback Hotkeys.
* Fixed a bug when closing Macros.
* Fixed an issue with *Break* command inside loops.

## Version 3.3.1

* Added buttons for Cut/Copy/Paste in main window.
* Fixed Manual Key stop working when Auto Key was pressed.
* Fixed an issue with *Break* command not working in the main loop.
* Fixed *A_Index* variable returning wrong value in nested loops.

## Version 3.3.0

* Added checkboxes to Macros rows to disable/enable specific actions.
* Added *Labels* and *Goto* command to *Loop* command Window.
* Added new edit commands: Copy, Cut and Paste.
* Added new *Select* menu.
* Fixed an issue with the InputBox command stopping execution.

## Version 3.2.6

* Fixed an issue that was causing the main window to freeze randomly.
* Added a PayPal Donation link in the menu bar.

## Version 3.2.5

* Added support for Multi-Line commands in COM Interface (Advanced). You can enter a sequence of COM commands in a single Action.
* Fixed an issue with Variables Assignment.

## Version 3.2.4

* Fixed an issue with exported scripts when parsing parameters from COM commands.

## Version 3.2.3

* Added *Connect* button to COM Interface (Advanced): Tries to connect to an Active COM Object.
* Fixed an issue when recording RAlt key in some keyboards.

## Version 3.2.2

* Fixed a bug with COM Interface in playback.
* *Get Button* in Internet Explorer Command window will try to connect to the last IE window instead of creating a new instance.

## Version 3.2.1

* Added more properties to Internet Explorer COM list.
* Fixed error when using IE Elements without index in Internet Explorer commands.
* Fixed some bugs.

## Version 3.2.0

* Added COM Interface support for any application in dotted syntax (IE command window).
* Fixed font size to avoid overlapping on different DPI sizes.
* Fixed some bugs with Variables.

## Version 3.1.0

* Added Internet Explorer command window with IE COM automation commands.
* Words enclosed in percent signs inside variables are no longer dereferenced.
* Changed some icons for better compatibility.
* Fixed some bugs.

## Version 3.0.5

* Added *Pause* and *Set[Caps/Num/Scroll]LockState* commands to Run Command Window.
* Fixed bug when editing Hotkeys in Export Window.

## Version 3.0.4

* Added *Input* and *KeyWait* commands to Run Command Window.

## Version 3.0.3

* Fixed an issue when saving project during Playback.

## Version 3.0.2

* Fixed problem with *Always Active* option.
* Added function to Pause Execution/Recording by Middle-Clicking the TrayIcon.

## Version 3.0.1

* Fixed problem with *Set As Default Hotkeys* option.
* Fixed unpausing when TrayIcon was clicked.

## Version 3.0.0

* Added support for multiple Macros & HotKeys.
* Added support for Functions Assignment.
* Added support for Functions inside command parameters (e.g.: *% SubStr(AHK, 2)*).
* Added support for Math Expressions in Variables Assignment using *Eval()*.
* Added Button to make Hotkeys Window Sensitive (optionally).
* Added option to Keep Hotkeys Active.
* Added Hotkey to Start New Record on a different Tab.
* Added more commands to the Run Window.
* Added option to keep Default Hotkeys.
* Added option to set Default Project File.
* Added option to Pause script with the StopKey.
* StopKey no longer deactivates Hotkeys.
* Playback Speed Buttons will now toggle On/Off.
* New *Import* command in File Menu.
* Fixed some issues with *Loop*, *Break* and *Continue*.
* Added an optional installer for download.
* Help File is now available for download and included in installer.

## Version 2.5.4

* Fixed Settings not being saved on exit.

## Version 2.5.3

* Fixed: Variables not working on some commands.
* Fixed and improved DynamicVars references.
* Fixed some issues with capture/record of Alt keys.

## Version 2.5.2

* Added option record/capture Down & Up state for all keys (it must be activated in options window).
* Fixed some parameters for better working of variables.

## Version 2.5.1

* Added support for Nested Loops in Playback.
* Added support for Dynamic Variables references in Playback (e.g. *% Var%counter%*). Field must start with "% " and must contain only ONE reference.
* Fixed some minor issues.

## Version 2.5.0

* Added new commands to Run Window. It now features also 20 File Commands.
* Added ProcessID (ahk_PID) identifier for Window selections.
* Fixed missing parameters for some commands in exported script.

## Version 2.4.0

* Added new commands: ControlGetPos, Break, Continue & more Window Commands.
* Added shortcuts to Command Windows (F2-F12).
* Added option to include PMC code in exported scripts (import them by opening the ahk file).
* Added option to disable shortcuts in Options (Misc. tab).

## Version 2.3.4

* Fixed: Pressing RButton while recording would send a Left Click down.

## Version 2.3.3

* Fixed: Playback Speed Controls not working for Sleep Commands.

## Version 2.3.2

* Added option to define line width for screenshots.
* Fixed some issues adding Mouse Commands.

## Version 2.3.1

* Added Indentation Option for Preview and Export.
* Fixed/improved some minor things in the script.

## Version 2.3.0

* Fixed and Improved Mouse Recording.
* Modified Wait commands to allow abort waiting in Playback.
* Added option to change Draw Button (to define search/screenshot area).
* Added option to press Enter to take screenshot.
* Added *ConrolSetText*, *ControlGet*, *ControlGetText* and *ControlGetFocus* to *Control Commands* window
* Moved *ControlGetText* from *Variables* window to *Control Commands* window.
* Changed *Start Record* & *Stop Record* keys to *Start/Stop Record* key.

## Version 2.2.2

* Fixed: Sleep commands taking twice the specified time.

## Version 2.2.1

* Fixed some issues with Mouse Recording.

## Version 2.2.0

* Added New Command Window: *Control Commands* with *Control*, *ControlFocus* and *ControlMove*.
* Added *ControlGetText* to *If / Variables* window.
* Fixed *Control, EditPaste* playback error.
* Fixed a bug when setting up a Control Command with a blank control.
* Fixed some other bugs.

## Version 2.1.5

* Added *Control, EditPaste* to send options in Text command window.
* Fixed and Improved Variables Translation in Playback.

## Version 2.1.4

* Changed error message when using ControlSend/Click without the control name to a warning to allow use of control's HWND in window's title.

## Version 2.1.3

* Fixed: Program's hotkeys being triggered when window is not active.
* Fixed: Duplicate hotkey not working properly.

## Version 2.1.2

* Fixed: Playback not matching variables names with less than 4 characters.
* Remove input limits for some edit controls to allow variables.
* *Get Control Button* now auto gets window's class.

## Version 2.1.1

* Added support for Boolean Assignment. Variable must be enclosed in percent signs (e.g. *MyVar := !%MyVar%*).
* Extended the use of variables to the Control and Window columns.
* Fixed: Trying to compare built-in variables would show an error.
* Added more shortcuts (see help window).

## Version 2.1.0

* Added Make Screenshot button to ImageSearch.
* Assign Variables: The *If* button can be used to assign and compare variables.
* Send Variables: Use percent signs in Text command to send variables.
* Show Variables: Use percent signs in MsgBox Prompt option of the Pause menu to show variables values.
* Changed the Post/SendMessage command window to allow the use of any message number.
* Added shortcut to *ListVars* command in File menu.
* Fixed: Wrong window activated when marking search area.
* Fixed: Last window not activated after selection target window for control commands.
* Fixed: No line feed in MsgBox prompt of Pause menu.

## Version 2.0.5

* Fixed syntax problems in Image/Pixel search.

## Version 2.0.4

* Made some minor changes in gui.

## Version 2.0.3

* Updated Graphic Buttons function to work with AHK_L 64bit (thanks to just me)
* Added Auto-execute Section to context help of Export Window.

## Version 2.0.2

* Added NoActivate (NA) option to ControlClick relative to window.
* Fixed PostMessage/SendMessage syntax error in exported scripts.

## Version 2.0.1

* Fixed some issues.

## Version 2.0.0

* Added SearchImage and SearchPixel commands.
* Added some If Statements commands.
* Added SendMessage and PostMessage commands.
* Added KeyWait option in Pause.
* Added Window-Sensitive Hotkey option in Export Menu.
* Added Clipboard Send in Text Command (removed Script option).
* Added option to return Mouse to initial position after playback.
* Added Context-Menu Help: Right-Click on a button or window to show links to AHK Online Help.
* ControlClick can now be used with position in window.
* Improved Mouse and Key Recording reliability.
* Loop now works for Playblack (Nested Loops won't work).
* Control Records can now record Window Title and Classes.
* Fixed: Control Record issues.
* Fixed: Up Keys not being recorded sometimes.
* Fixed: Program consuming too much CPU.
* Fixed some other issues.

## Version 1.6.4

* Added option to create Step-By-Step Macros: Each command of the list will be executed in sequence everytime you press the Hotkey (as in manual playback).

## Version 1.6.3

* Added option to select between Relative and Screen Mouse CoordMode.
* Fixed various issues.

## Version 1.6.2

* Corrected Sintax error in ControlClick.

## Version 1.6.1

* Added some tooltips with help from documentation.
* Added RunWait option in Run Command.

## Version 1.6.0

* Fixed not recording accurate mouse movements and intervals.
* Removed WinWaitActive from Window Recording.

## Version 1.5.3

* Fixed minor issues.

## Version 1.5.2

* Added option to use hotstrings in Export menu.
* Changed exported scripts to normal hotkeys (::) instead of the Hotkey command.
* Added option to select Speed Multiplier.
* Added Process (ahk_exe) identifier for Window selections.

## Version 1.5.1

* Added Playback Speed Control: Fast Forward & Slow Down keys.
* Added WinMove command.
* Fixed WinSet Top not working.

## Version 1.5.0

* Added Join option in Export window: it can append the current macro to another with different hotkeys.
* Added Record Controls Options.
* Added Find/Replace function in Edit Menu (Ctrl+F will open it too if Capture is off).
* Added Hotkeys to move rows: PageUp/PageDown can be used to move rows when Capture is off.
* Fixed an issue with the Hotkey insert box.
* Fixed: Tooltip not showing Previous Step in Manual Playback.
* Changed *Duplicate* behavior: Selected rows will now be duplicated right after the last selected row.

## Version 1.4.2

* Fixed line breaks in exported scripts with Text/Script lines.

## Version 1.4.1

* Fixed an issue with Run command.
* Fixed an issue with delete key when Capture is off.
* Changed AborKey command in export from *Reload* to *ExitApp*.

## Version 1.4.0

* Added Ini Support: Current Settings will be saved on exit.
* Added Click Down/Up record option: It allows movement recording while holding a button (useful for Hand-Drawing).
* Added option to use Key Toggle State to set Relative Recording On/Off.
* Added Timed Interval Recording.
* Fixed: Minimum interval for mouse movement recording.

## Version 1.3.0

* Added Relative Mouse Clicks Recording (Hold CapsLock to record clicks and drags relative to the initial position).
* Added Window Class and Title recording.
* Added Window default delay (can be changed in Options Menu).
* Fixed: Record Mouse Movement bug.

## Version 1.2.1

* Fixed: Modification Keys not updating list correctly.

## Version 1.2.0

* Added Beta Recording Function (settings can be changed in Options Menu).
* Made Mouse Actions editable.
* Changed *Loop* function behavior. It will now automatically create the loop start and end around selected rows.
* Added Icons to ListView.
* Changed default Delay value back to 0 and created a separate value for Mouse Delay. It can be changed in Options Menu.
* Fixed: Holding a modification key would cause a false input.
* Changed Column name *Command* to *Action*.
* Changed File Extension to *pmc* to allow future association with the Macro Creator.

## Version 1.1.0

* Fixed delay for entering combinations with Ctrl, Shift and Alt. Direct input no longer depends on the hotkey box but it can still be used with the Insert button.

## Version 1.0.1

* Changed default AbortKey to F9 because pressing the Ctrl key during execution would interfere with macro.
* Changed default Delay value to 1 for mouse performance reasons.
* Corrected some minor mistakes in guis.

