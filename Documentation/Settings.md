﻿# Settings

## Table of Contents

* [Recording](#Recording)
* [Playback](#Playback)
* [Defaults](#Defaults)
* [Screenshots](#Screenshots)
* [Misc.](#Misc.)

## Recording

See [Record Page](p2-Record.html#recording-options).

## Playback

See [Playback Page](p3-Playback.html#playback-options).

## Defaults

**Mouse Coordinates**: Sets coordinate mode for Mouse commands and records to be relative to either the active window or the screen. This option is global and will affect both Recording and Playback so it should be set before adding any commands for the project.  
*Note*: This setting will be saved to the PMC file.

**Default Mouse Delay**: Sets the default delay for each Mouse Command. This affects new commands added from the Mouse Command window and will only affect recording if 'Timed Intervals' is disabled.

**Default Window Delay**: Sets the default delay for each Window (Set) Command. This affects new commands added from the Window Command window and Recording.

**Max History per Macro**: Sets the maximum History steps to keep for each macro. Changing this might have little impact in performance. It's recommended to restart Macro Creator after changing this setting.

**Clear History**: Clears and resets History for all Macros.

## Screenshots

**Draw Button**: Selects the Draw Button to be used for Screenshots tool and Get Area in Image Search.

**Line Width (Px)**: Defines the pixel width of the rectangle when using the Screenshots tool.

**Capture on release**: Captures Screenshots when the Draw button is released.

**Press Enter to capture**: Waits for the user to press Enter to confirm the rectangle area of the Screenshot. Enabling this option allows you to adjust the search/capture area using hotkeys (**Ctrl + Arrow keys** to move the selection area and **Shift + Arrow keys** to resize it).

**Screenshots Directory**: Selects the default folder for Screenshots taken.

## Misc.

**Set As Default Hotkeys**: If checked the current Hotkeys will be loaded on each run of the program and when 'Default Settings' are loaded.

**Disable Window Shortcuts**: Disable Shortcuts for commands in the main window.

**Allow Multiple Instances**: Determines whether Macro Creator is allowed to run concurrent instances.

**Reset Columns Size**: Resets the sizes of the columns for the currently selected Macro.

**Use Eval() by default for Variables Assignment**: Determines whether the *Use Eval() to solve expressions* option will be enabled by default for new Variable Assignments.

**Allow Dragging Rows**: Enables / Disables row dragging with mouse in the Macro lists.

**Show Colors & Help Marks for Loops and Statements**: When activated rows inside Loops and text of rows inside Statements will be shown in colors, also braces and wildcards will be placed in front of command's index as representation to help visualize which rows are nested. Braces represent Loops and Wildcards represent If Statements, so for example *N* \*{\*{ is equivalent to:  
> If
> {
> 	Loop
> 	{
> 		If
> 		{
> 			Loop
> 			{
> 				N
> 			}
> 		}
> 	}
> }
You can also click on the *Index* Column Header to turn this option On/Off.  
You can change the default colors clicking on the color shown here and picking one from anywhere on the screen.  

**Show Indentation for Loops and Statements**: When activated Actions inside Loops or Statements will be shown with indentation.  
You can also double-click on the *Action* Column Header to turn this option On/Off.  

**Default Macro File**: If a valid file with a PMC code is set it will be loaded on program start up.

**Set As Default File**: Sets the current Macro Project to be loaded on program start up.

**Virtual Keys**: System keys and Modifiers that will be recognized during Recording and when Capture keys is enabled.
