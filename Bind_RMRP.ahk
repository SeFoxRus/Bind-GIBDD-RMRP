; By SeFox/SeLev
; helped: probro
; v2.0.0

SetBatchLines, -1
; Получаем разрешение экрана
SysGet, ScreenWidth, 0 ; Ширина экрана
SysGet, ScreenHeight, 1 ; Высота экрана

GuiWidth := ScreenWidth * 0.2
GuiHeight := ScreenHeight * 1

global GuiX := (ScreenWidth - GuiWidth) / 2
global GuiY := (ScreenHeight - GuiHeight) / 2

Скорость1 = 5

global CustomColor3 = "EEAA99"
global MaxLinesText = 30
global MaxLineText = 130

global OpenGui
global ActiveGui
global ListGui := 0
global ListDoc := 1
global Pages := []
global PagesName := []

global LastActiveGui := ""
global LastListGui := 0
global LastListDoc := 1
global LastPages := []
global LastPagesName := []

StartGui(num){
    Gui,%num%: +LastFound +AlwaysOnTop -Caption +ToolWindow
    Gui,%num%: Color, black
    Gui,%num%: Font, s8
    Gui,%num%: Font, cWhite
    Gui,%num%: Font, w%Скорость1%0
}
CloseGui() {
    Loop, % OpenGui {
        Gui, %A_Index%: Destroy
    }
    OpenGui := 0
}
Read(alt, nomber, gui, tip){
    local temp := A_ScriptDir "\ALT" alt "\" nomber "_" gui "_" tip ".txt"
    if !FileExist(temp) {
        return []  ; Возвращаем пустой массив, чтобы цикл for не ломался
    }
    FileRead, info, %temp%
    return StrSplit(info, "`n", "`r")
}
MakePage(rawList, max){
    local Pages := []
    local currentPage := [] ; Временный список для текущей страницы
    local lineCounter := 0  ; Счётчик строк на ТЕКУЩЕЙ странице
    for i, line in rawlist{
        currentPage.Push(line)
        lineCounter++

        if(lineCounter >= max){
            Pages.Push(currentPage)
            currentPage := []
            lineCounter := 0
        }
    }
    if (currentPage.MaxIndex() > 0) {
        Pages.Push(currentPage)
    }
    return Pages
}
Draw(name, list, numgui, x, y){
    Gui, %numgui%: Destroy

    StartGui(numgui)
    for i, text in name{
        Gui, %numgui%: ADD, TEXT,,     %text%

    }

    for i, text in list{
        Gui, %numgui%: ADD, TEXT,,     %text%

    }
    WinSet, TransColor, %CustomColor3% 180
    Gui, %numgui%: Show, x%x% y%y% NoActivate, window.
    ;MsgBox % "list " ListGui " page " Pages[ListGui].MaxIndex() " pages " Pages.MaxIndex() " doc " ListDoc
}
OpenDoc(alt){
    if (OpenGui > 0){
        LastActiveGui := ActiveGui
        LastListGui := ListGui
        LastListDoc := ListDoc
        LastPages := Pages
        LastPagesName := PagesName
    }
    CloseGui()
    if (ActiveGui != alt) {
        ListDoc := 1
        ListGui := 0
        PagesName := []
    }
    ActiveGui := alt
    OpenGui := 1
    ListGui := ListGui + 1
    if ( Read(ActiveGui, ListDoc, 1, "name").MaxIndex() < MaxLinesText ){
        PagesName := MakePage(Read(ActiveGui, ListDoc, 1, "name"), MaxLinesText)
    }else{
        PagesName := []
    }
    limit := MaxLinesText - PagesName[1].MaxIndex()
    if (limit < 0){
        limit := MaxLinesText
    }
    ;MsgBox % "макс текста " limit " столько строк " PagesName[1].MaxIndex() " по умолчанию " MaxLinesText
    Pages := MakePage(Read(ActiveGui, ListDoc, 1, "text"), limit)


    if (ListGui <= Pages.MaxIndex()){
        Draw(PagesName[1], Pages[ListGui], 1, GuiX, GuiY)
    }else{
        OpenGui := 1
        ListDoc := ListDoc + 1
        ListGui := 1
        if ( Read(ActiveGui, ListDoc, 1, "name").MaxIndex() < MaxLinesText ){
            PagesName := MakePage(Read(ActiveGui, ListDoc, 1, "name"), MaxLinesText)
        }else{
            PagesName := []
        }
        limit := MaxLinesText - PagesName[1].MaxIndex()
        if (limit < 0){
            limit := MaxLinesText
        }

        Pages := MakePage(Read(ActiveGui, ListDoc, 1, "text"), limit)
        if(!Pages.MaxIndex()){
            CloseGui()
            ListGui := 0
            ListDoc := 1
            ActiveGui := ""
            return
        }

        Draw(PagesName[1], Pages[ListGui], 1, GuiX, GuiY)
    }
}
!H::
    if (not(ActiveGui = "" or ActiveGui = "H")) {
        LastActiveGui := ActiveGui
        LastListGui := ListGui
        LastListDoc := ListDoc
        LastPages := Pages
        LastPagesName := PagesName

        CloseGui()
        OpenGui := 0
        ListGui := 0
        ActiveGui := ""
    } else {
        OpenDoc("H")
    }
return

!Q::
    if (OpenGui > 0) {
        if (ListGui > 1) {
            ListGui--
            Draw(PagesName[1], Pages[ListGui], 1, GuiX, GuiY)
        }
    } else if (LastActiveGui != "") {
        ActiveGui := LastActiveGui
        ListDoc := LastListDoc
        Pages := LastPages
        PagesName := LastPagesName
        OpenGui := 1

        ListGui := LastListGui
        if (ListGui < 1) {
            ListGui := 1
        }

        Draw(PagesName[1], Pages[ListGui], 1, GuiX, GuiY)
    }
return

!1::
    OpenDoc(1)
return

!2::
    OpenDoc(2)
return

!3::
    OpenDoc(3)
return

!4::
    OpenDoc(4)
return

!5::
    OpenDoc(5)
return

!6::
    OpenDoc(6)
return

!7::
    OpenDoc(7)
return

!8::
    OpenDoc(8)
return

!9::
    OpenDoc(9)
return

!0::
    OpenDoc(0)
return
