﻿LV_GetTexts(Index, ByRef Act="", ByRef Det="", ByRef Tim="", ByRef Del="", ByRef Typ="", ByRef Tar="", ByRef Win="", ByRef Com="")
{
		LV_GetText(Act, Index, 2)
		Act := LTrim(Act)
		LV_GetText(Det, Index, 3)
		LV_GetText(Tim, Index, 4)
		LV_GetText(Del, Index, 5)
		LV_GetText(Typ, Index, 6)
		LV_GetText(Tar, Index, 7)
		LV_GetText(Win, Index, 8)
		LV_GetText(Com, Index, 9)
}

IncludeFiles(L, N)
{
	global cType21
	
	Gui, 1:Default
	Gui, ListView, InputList%L%
	Loop, %N%
	{
		If (LV_GetNext(A_Index-1, "Checked") <> A_Index)
			continue
		LV_GetText(Row_Type, A_Index, 6)
		If (Row_Type <> cType21)
			continue
		LV_GetText(IncFile, A_Index, 7)
		If (IncFile <> "")
			IncList .= "`#`Include " IncFile "`n"
	}
	Sort, IncList, U
	return IncList
}

ShowTooltip()
{
	static CurrControl, PrevControl, _TT, TT_A
	CurrControl := A_GuiControl
	If (CurrControl <> PrevControl && !RegExMatch(CurrControl, "\W"))
	{
		TT_A := WinExist("A")
		ToolTip
		SetTimer, DisplayToolTip, -500
		PrevControl := CurrControl
		If InStr(A_GuiControl, "Static")
			SetTimer, HandCursor, 0
		Else
			SetTimer, HandCursor, Off
	}
	return

	DisplayToolTip:
	If (TT_A <> WinExist("A"))
		return
	Try
		ToolTip, % %CurrControl%_TT
	SetTimer, RemoveToolTip, -3000
	return
}

ShowContextHelp()
{
	MouseGetPos,,,, Control
	If InStr(Control, "Edit")
		return
	If A_Gui in 3,5,7,8,10,11,12,14,16,19,21,22,23,24
	{
		Menu, % Help%A_Gui%, Show
		return
	}
	Else If A_GuiControl not in MouseB,TextB,ControlB
	,SpecialB,PauseB,WindowB,ImageB,RunB,ComLoopB
	,IfStB,SendMsgB,IEComB,IfDirB
		return
	Menu, %A_GuiControl%, Show
}

CmdHelp()
{
	local Gui,Pag,Title

	If HotkeyCtrlHasFocus()
		return
	Gui := ActiveGui(WinActive("A"))
	If (Gui = 0)
		return
	Gui, %Gui%:Submit, NoHide
	If (Gui = 19)
		Pag := (PixelS = 1) ? 2 : 1
	Else If (Gui = 12)
	{
		GuiControlGet, Pag,, TabControl
		If (Pag = 1)
		{
			If (LFilePattern = 1)
				Pag := 4
			Else If (LParse = 1)
				Pag := 5
			Else If (LRead = 1)
				Pag := 6
			Else If (LRegistry = 1)
				Pag := 7
		}
	}
	Else
		GuiControlGet, Pag,, TabControl
	Title := ContHTitle[Gui][Pag ? Pag : 1]
	If !Title
		Title := "index"
	IfExist, MacroCreator_Help.chm
		Run, hh.exe mk:@MSITStore:MacroCreator_Help.chm::/%Title%.html
	Else
		Run, http://www.autohotkey.net/~Pulover/Docs/%Title%.html
	return 0
}

ActiveGui(Hwnd)
{
	Loop, 99
	{
		Gui %A_Index%:+LastFoundExist
		If (Hwnd = WinExist())
			return A_Index
	}
	return 0
}

HotkeyCtrlHasFocus()
{
	global GuiA := ActiveGui(WinActive("A"))
	GuiControlGet, ctrl, %GuiA%:Focus
	If InStr(ctrl,"hotkey")
	{
		GuiControlGet, ctrl, %GuiA%:FocusV
		Return, ctrl
	}
}

MarkArea(LineW)
{
	global c_Lang004, c_Lang059, d_Lang057
	
	MouseGetPos,,, id, control
	ControlGetPos, cX, cY, cW, cH, %control%, ahk_id %id%
	WinGetPos, wX, wY, wW, wH, ahk_id %id%
	If (control <> "")
	{
		cX += wX, cY += wY
		X1 := cX, Y1 := cY
		W1 := cW, H1 := cH
		W2 := W1 - LineW, H2 := H1 - LineW
		Tooltip,
		(LTrim
		%c_Lang059%: %W1% x %H1%
		%c_Lang004%: %control%
		%d_Lang057%
		)
	}
	Else
	{
		WinGet, WMS, MinMax, A
		If WMS = 1
		{
			SysGet, MWA, MonitorWorkArea
			wX := MWALeft, wY := MWATop, wW := MWARight, wH := MWABottom
		}
		X1 := wX, Y1 := wY
		W1 := wW, H1 := wH
		W2 := W1 - LineW, H2 := H1 - LineW
		Tooltip,
		(LTrim
		%c_Lang059%: %W1% x %H1%
		%d_Lang057%
		)
	}
	CoordMode, Mouse, Screen
	Gui, 20:+LastFound
	WinSet, Region, 0-0 %W1%-0 %W1%-%H1% 0-%H1% 0-0  %LineW%-%LineW% %W2%-%LineW% %W2%-%H2% %LineW%-%H2% %LineW%-%LineW%
	Gui, 20:Show, NA x%X1% y%Y1% w%W1% h%H1%
	WinMove, , , X1, Y1, W1, H1
}

MoveRectangle(o, p, LineW)
{
	Gui, 20:+LastFound
	WinGetPos, wX, wY, wW, wH
	w%o% := (p) ? w%o%+1 : w%o%-1
	X1 := wX, Y1 := wY
	W1 := wW, H1 := wH
	W2 := W1 - LineW, H2 := H1 - LineW
	WinSet, Region, 0-0 %W1%-0 %W1%-%H1% 0-%H1% 0-0  %LineW%-%LineW% %W2%-%LineW% %W2%-%H2% %LineW%-%H2% %LineW%-%LineW%
	WinMove,,, %wX%, %wY%, %wW%, %wH%
}

Screenshot(outfile, screen)
{
	Gdip_1 := "Gdip_Startup"
	Gdip_2 := "Gdip_BitmapFromScreen"
	Gdip_3 := "Gdip_SaveBitmapToFile"
	Gdip_4 := "Gdip_DisposeImage"
	Gdip_5 := "Gdip_Shutdown"

	pToken := %Gdip_1%()

	pBitmap := %Gdip_2%(screen)

	%Gdip_3%(pBitmap, outfile, 100)
	%Gdip_4%(pBitmap)
	%Gdip_5%(pToken)
}

AdjustCoords(ByRef x1, ByRef y1, ByRef x2, ByRef y2)
{
	Xa := x2 < x1 ? x2 : x1
	Xb := x1 > x2 ? x1 : x2
	Ya := y2 < y1 ? y2 : y1
	Yb := y1 > y2 ? y1 : y2
	x1 := Xa, x2 := Xb, y1 := Ya, y2 := Yb
}

ReadFunctions(LibFile, Msg="")
{
	IfNotExist, %LibFile%
		return "$"
	Pos := 1
	FileRead, Content, *t %LibFile%
	While, RegExMatch(Content, "OU)([\w\._]+)\(.*\)[\n\r\s]*?\{", Found, Pos)
	{
		Pos := Found.Pos(1) + Found.Len(1)
		If (Func(Found.Value(1)).IsBuiltIn)
			continue
		ExtList .= Found.Value(1) "$"
		Tooltip, %Msg%
	}
	Tooltip
	Sort, ExtList, D$ U
	return (ExtList <> "") ? ExtList : "$"
}

AssignVar(Name, Operator, Value)
{
	global
	local TempVar
	If InStr(Value, "!")=1
		Value := !SubStr(Value, 2)
	If (Operator = ":=")
		%Name% := Value
	Else If (Operator = "+=")
		%Name% += Value
	Else If (Operator = "-=")
		%Name% -= Value
	Else If (Operator = "*=")
		%Name% *= Value
	Else If (Operator = "/=")
		%Name% /= Value
	Else If (Operator = "//=")
		%Name% //= Value
	Else If (Operator = ".=")
		%Name% .= Value
	Else If (Operator = "|=")
		%Name% |= Value
	Else If (Operator = "&=")
		%Name% &= Value
	Else If (Operator = "^=")
		%Name% ^= Value
	Else If (Operator = ">>=")
		%Name% >>= Value
	Else If (Operator = "<<=")
		%Name% <<= Value
}

ListIEWindows()
{
	List := "[blank]||"
	For Pwb in ComObjCreate( "Shell.Application" ).Windows
		If InStr(Pwb.FullName, "iexplore.exe")
			Try List .= Pwb.Document.Title "|"
	return List
}

GuiAddLV(ident)
{
	global
	Gui, Tab, %ident%
	Try
		Gui, Add, ListView, x+0 y+0 AltSubmit Checked hwndListID%ident% vInputList%ident% gInputList W760 r26 NoSort LV0x10000, Index|Action|Details|Repeat|Delay|Type|Control|Window|Comment
	LV_SetImageList(ImageListID)
	LV_ModifyCol(1, Col_1)	; Index
	LV_ModifyCol(2, Col_2)	; Action
	LV_ModifyCol(3, Col_3)	; Details
	LV_ModifyCol(4, Col_4)	; Repeat
	LV_ModifyCol(5, Col_5)	; Delay
	LV_ModifyCol(6, Col_6)	; Type
	LV_ModifyCol(7, Col_7)	; Control
	LV_ModifyCol(8, Col_8)	; Window
	LV_ModifyCol(9, Col_9)	; Comment
}

SelectByType(SelType, Col=6)
{
	SelType := Trim(SelType)
	LV_Modify(0, "-Select")
	If SelType in Win,File,String
	{
		Loop, % ListCount%A_List%
		{
			LV_GetText(Type, A_Index, Col)
			If InStr(Trim(Type), SelType)
				LV_Modify(A_Index, "Select")
		}
	}
	Else
	{
		Loop, % ListCount%A_List%
		{
			LV_GetText(Type, A_Index, Col)
			If (Trim(Type) = SelType)
				LV_Modify(A_Index, "Select")
		}
	}
}

class IfWin
{
	Active(Win)
	{
		return WinActive(Win)
	}
	NotActive(Win)
	{
		return !WinActive(Win)
	}
	Exist(Win)
	{
		return WinExist(Win)
	}
	NotExist(Win)
	{
		return !WinExist(Win)
	}
	None(Win)
	{
		return 1
	}
}

ActivateHotkeys(Rec="", Play="", Speed="", Stop="")
{
	local ActiveKeys
	
	If (Rec <> "")
	{
		Hotkey, %RecKey%, RecStart, % (Rec) ? "On" : "Off"
		Hotkey, %RecNewKey%, RecStartNew, % (Rec) ? "On" : "Off"
	}
	
	If (Play <> "")
	{
		Loop, %TabCount%
		{
			#If !WinActive("ahk_id" PMCWinID) && IfWin[IfDirectContext](IfDirectWindow)
			Hotkey, If, !WinActive("ahk_id" PMCWinID) && IfWin[IfDirectContext](IfDirectWindow)
			If (ListCount%A_Index% = 0)
				continue
			If (o_AutoKey[A_Index] <> "")
			{
				Hotkey, % o_AutoKey[A_Index], f_AutoKey, % (Play) ? "On" : "Off"
				ActiveKeys++
			}
			If (o_ManKey[A_Index] <> "")
				Hotkey, % o_ManKey[A_Index], f_ManKey, % (Play) ? "On" : "Off"
			Hotkey, If
			#If
		}
	}
	
	If (Speed <> "")
	{
		If (FastKey <>  "None")
			Hotkey, *%FastKey%, FastKeyToggle, % (Speed) ? "On" : "Off"
		If (SlowKey <>  "None")
			Hotkey, *%SlowKey%, SlowKeyToggle, % (Speed) ? "On" : "Off"
	}
	
	If (Stop <> "")
	{
		Hotkey, *%AbortKey%, f_PauseKey, Off
		Hotkey, *%AbortKey%, f_AbortKey, Off
		If ((AbortKey <> "") && (Stop = 1))
			Hotkey, *%AbortKey%, % (PauseKey) ? "f_PauseKey" : "f_AbortKey", On
	}
	
	return ActiveKeys
}

CheckDuplicates(Obj1, Obj2, Obj3*)
{
	global TabCount
	Loop, 3
	{
		If IsObject(Obj%A_Index%)
		{
			For Index, Obj in Obj%A_Index%
			{
				If ((Obj <> "") && (Index <= TabCount))
					Keys .= Obj "`n"
			}
		}
		Else If (Obj%A_Index% <> "")
			Keys .= Obj%A_Index% "`n"
	}
	Sort, Keys, U
	return ErrorLevel
}

GetElIndex(elwb, GetBy)
{
	If (GetBy = "ID")
		return ""

	If (GetBy = "Links")
	{
		ElId := elwb.InnerText
		Links := elwb.Document.Links
		Loop, % Links.Length
			If (Links[A_Index-1].InnerText = ElId)
				return A_Index-1
	}
	Else
	{
		El3 := elwb[GetBy]
		ElId := elwb.SourceIndex
		Loop, % elwb["document"]["getElementsBy" GetBy](El3).Length
		{
			If (elwb["document"]["getElementsBy" GetBy](El3)[A_Index-1].SourceIndex = ElId)
				return A_Index-1
		}
	}
}

AssignReplace(String)
{
	global
	RegExMatch(String, "sU)(.+)\s(\W\W?)(?-U)\s(.*)", Out)
	VarName := Out1, Oper := Out2, VarValue := Out3
}

EscCom(MatchList, Reverse=0)
{
	global
	
	If (Reverse)
	{
		Loop, Parse, MatchList, |
			StringReplace, %A_LoopField%, %A_LoopField%, ```,, `,, All
	}
	Else
	{
		Loop, Parse, MatchList, |
			StringReplace, %A_LoopField%, %A_LoopField%, `,, ```,, All
	}
}

HistCheck(L)
{
	global

	If (MaxHistory = 0)
		return
	HistoryMacro%L%.Slot.Remove(HistoryMacro%L%.ActiveSlot+1, HistoryMacro%L%.Slot.MaxIndex())
	HistoryMacro%L%.Add()
	If (HistoryMacro%L%.Slot.MaxIndex() > MaxHistory+1)
		HistoryMacro%L%.Slot.Remove(1)
	HistoryMacro%L%.ActiveSlot := HistoryMacro%L%.Slot.MaxIndex()
}

WinCheck(wParam, lParam, Msg)
{
	global
	If (HaltCheck = 1)
		return
	SetTimer, CheckHK, -333
	WPHKC := wParam
}

ToggleIcon()
{
	global
	static IconFile, IconNumber
	If !A_IsPaused
		IconFile := A_IconFile, IconNumber := A_IconNumber
	Menu, Tray, Icon, % (A_IsPaused = 0) ? t_PauseIcon[1] : IconFile, % (A_IsPaused = 0) ? t_PauseIcon[2] : IconNumber
	return A_IsPaused
}

ToggleButtonIcon(Button, Icon)
{
	ILButton(Button, Icon[1] ":" Icon[2], 16, 16, 4)
	return
}

AHK_NOTIFYICON(wParam, lParam)
{
	global HaltCheck
	If (lParam = 0x205) ; WM_RBUTTONUP
	{
		HaltCheck := 1
		SetTimer, WaitMenuClose, 1
		return
	}
	Else If (lParam = 0x208) ; WM_MBUTTONUP
	{
		GoSub, f_PauseKey
		return 1
	}
}

Send_Params(ByRef String, ByRef Target)
{
	VarSetCapacity(CopyDataStruct, 3*A_PtrSize, 0)
	SizeInBytes := (StrLen(String) + 1) * (A_IsUnicode ? 2 : 1)
	NumPut(SizeInBytes, CopyDataStruct, A_PtrSize)
	NumPut(&String, CopyDataStruct, 2*A_PtrSize)
	DetectHiddenWindows, On
	SendMessage, 0x4A, 0, &CopyDataStruct,, ahk_id %Target%
	return ErrorLevel
}

Receive_Params(wParam, lParam)
{
	global
	
	StringAddress := NumGet(lParam + 2*A_PtrSize)
	CopyOfData := StrGet(StringAddress)
	Gui, 1:Default
	Gui, +OwnDialogs
	Gui, Submit, NoHide
	GoSub, SaveData
	If ((ListCount > 0) && (SavePrompt = 1))
	{
		MsgBox, 35, %d_Lang005%, %d_Lang002%`n`"%CurrentFileName%`"
		IfMsgBox, Yes
		{
			GoSub, Save
			IfMsgBox, Cancel
				return
		}
		IfMsgBox, Cancel
			return
	}
	PMC.Import(CopyOfData)
	CurrentFileName := LoadedFileName
	GoSub, FileRead
	return
}

FreeMemory()
{
	return, DllCall("psapi.dll\EmptyWorkingSet", "UInt", -1)
}

LV_ColorsMessage(W, L)
{
	Static NM_CUSTOMDRAW := -12
	Static LVN_COLUMNCLICK := -108
	Critical, 1000
	If LV_Colors.HasKey(H := NumGet(L + 0, 0, "UPtr"))
	{
		M := NumGet(L + (A_PtrSize * 2), 0, "Int")
		; NM_CUSTOMDRAW --------------------------------------------------------------------------------------------------
		If (M = NM_CUSTOMDRAW)
			Return LV_Colors.On_NM_CUSTOMDRAW(H, L)
		; LVN_COLUMNCLICK ------------------------------------------------------------------------------------------------
		If (LV_Colors[H].NS && (M = LVN_COLUMNCLICK))
			Return 0
	}
}

class RowsData
{
	__New()
	{
		this.Slot := []
		this.ActiveSlot := 1
	}
	
	__Call()
	{
		global SavePrompt := True
	}
	
	__Delete()
	{
		this.Remove("", Chr(255))
		this.SetCapacity(0)
		this.base := ""
	}
	
	Add()
	{
		Row := []
		Gui, 1:Default
		Loop, % LV_GetCount()
		{
			LV_GetTexts(A_Index, Action, Details, TimesX, DelayX, Type, Target, Window, Comment)
			ckd := (LV_GetNext(A_Index-1, "Checked")=A_Index) ? 1 : 0
			Row[A_Index] := ["Check" ckd, "", Action, Details, TimesX, DelayX, Type, Target, Window, Comment]
		}
		this.Slot.Insert(Row)
	}

	Load(N)
	{
		For each, Row in this.Slot[N]
			LV_Add(Row*)
		GoSub, RowCheck
	}

	Copy(Cut=0)
	{
		this.CopyData := {}
		RowNumber := 0
		Loop
		{
			RowNumber := LV_GetNext(RowNumber)
			If !RowNumber
				break
			LV_GetTexts(RowNumber, Action, Details, TimesX, DelayX, Type, Target, Window, Comment)
			ckd := (LV_GetNext(RowNumber-1, "Checked")=RowNumber) ? 1 : 0
			Row := ["Check" ckd, "", Action, Details, TimesX, DelayX, Type, Target, Window, Comment]
			this.CopyData.Insert(Row)
		}
		If (Cut)
			GoSub, Remove
	}

	Paste()
	{
		If !this.CopyData.MaxIndex()
			return False
		If (LV_GetCount("Selected") = 0)
		{
			For each, Row in this.CopyData
				LV_Add(Row*)
		}
		Else
		{
			RowNumber := LV_GetNext() - 1
			For each, Row in this.CopyData
				LV_Insert(RowNumber+A_Index, Row*)
		}
		return True
	}
}

