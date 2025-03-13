; By SeFox/SeLev and ProBro
; v1.1.0

SetBatchLines, -1
; Получаем разрешение экрана
SysGet, ScreenWidth, 0 ; Ширина экрана
SysGet, ScreenHeight, 1 ; Высота экрана


GuiWidth := ScreenWidth * 0.2 
GuiHeight := ScreenHeight * 1  

GuiX := (ScreenWidth - GuiWidth) / 2
GuiY := (ScreenHeight - GuiHeight) / 2
global OpenGui ; Переменая зранящая сколько GUI открыто

CloseGui() {
    Loop, % OpenGui {
        Gui, %A_Index%: Destroy 
    }
    OpenGui := 0 
    ActiveGui := ""
    ListGui := ""
}


!H::
    if (not(ActiveGui = "")) {
        CloseGui()
        OpenGui := 0
        ActiveGui := ""
    } else {
        CloseGui()
        ActiveGui := "H"
        OpenGui := 1
        
        CustomColor3 := "EEAA99"
        Gui, 1: +LastFound +AlwaysOnTop -Caption +ToolWindow 
        Gui, 1: Color, black
        Gui, 1: Font, s8
        Gui, 1: Font, cWhite
        Gui, 1:  Font, w%Скорость1%0
        Gui, 1: ADD, TEXT,,   v1.1.0
        Gui, 1: ADD, TEXT,,   BySeFox/SeLev and ProBro
        Gui, 1: ADD, TEXT,,   [КОМБИНАЦИИ]        [Информация]                                 [Страниц]
        Gui, 1: ADD, TEXT,,     ALT + H              Помощь + Закрыть                                       1
        Gui, 1:  ADD, TEXT,,     ALT + 1              Уголовный кодекс (УК-РФ)                         3
        Gui, 1:  ADD, TEXT,,     ALT + 2              Административный Кодекс (КоАП)               3
        Gui, 1:  ADD, TEXT,,     ALT + 3              Правило Радиопереговоров (!Устарело!)     1
        WinSet, TransColor, %CustomColor3% 180
        Gui, 1: Show, x%GuiX% y%GuiY% NoActivate, window.
    }
return

!1::
    if (ActiveGui = "УК" and ListGui = "3") {
        CloseGui()
        ActiveGui := ""
	    ListGui := ""
        OpenGui := 0

    } else if (not(ActiveGui = "УК")){
        CloseGui()
        ActiveGui := "УК"
	    ListGui := "1"
        OpenGui := 1
        
        CustomColor3 = EEAA99

        Gui, 1: +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui, 1:  Color, black

        Gui, 1:  Font, s8

        Gui, 1:  Font, cWhite

        Gui, 1:  Font, w%Скорость1%0

                                                                                                                                        
        Gui, 1:  ADD, TEXT,,            [Статьи и наказание | УК-РФ | 1/3] 
        Gui, 1:  ADD, TEXT,,   38.1 - Убийство - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   38.2 Убийство - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   39 - Причинение тяжк. вреда здоровья  - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   40 - Угроза убийством или приченением тяжк вреда - СПРП ★★
        Gui, 1:  ADD, TEXT,,   40.1 - Изнасилование - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   41.1 - Похищение человека - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   41.2 - Похищение человека но группой или насилием или оружием или >=2 лиц - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   42 - Незаконное лишение свободы - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   43 - Нарушение неприкосновенности жилища - 20к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   44 - Кража - 30к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   45.1 - Присовение или растрата - 50к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   45.2 - Мошеничество - 50к или СПРП ★★★
        Gui, 1:  ADD, TEXT,,   46.1 - Грабёж - СПРП ★★
        Gui, 1:  ADD, TEXT,,   46.2 - Грабёж группой лиц или с назаконным проникновением в жилище   - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   47 - Разбой - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   48 - Уничтожение или повреждение имуществ - 35к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   49 - Угон ТС - 35к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   50 - Незаконное предпринимательсво - 200к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   51 -  Незаконное образование(создание, реоганизация) юр. лица - 250к или СПРП ★★★
        Gui, 1:  ADD, TEXT,,   52 - Уклонение от уплаты налогов, сборов, подлежащих уплате организацией - 500к или СПРП ★★★
        Gui, 1:  ADD, TEXT,,   53 - Террористический акт - СПРП ★★★★★
        Gui, 1:  ADD, TEXT,,   54 - Несообщение о преступлении - СПРП ★★
        Gui, 1:  ADD, TEXT,,   55 - Захват заложников - СПРП ★★★★★
        Gui, 1:  ADD, TEXT,,   56 - Заведомо ложное сообщение об акте терроризма - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   57 - Организация незаконного воорууженного формирование или участие в нём - СПРП ★★★★★
        Gui, 1:  ADD, TEXT,,   58 - Бантитизм - СПРП ★★★★★
        Gui, 1:  ADD, TEXT,,   59 - Угон судна воздушного или водного транспорта - СПРП ★★★



        WinSet, TransColor, %CustomColor3% 180

        Gui, 1:  Show, x%GuiX% y%GuiY% NoActivate, window.
    }else if (ActiveGui = "УК" and ListGui = "1"){
        CloseGui()
        ActiveGui := "УК"
	    ListGui := "2"
        OpenGui := 1
        
        CustomColor3 = EEAA99

        Gui, 1:  +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui, 1:  Color, black

        Gui, 1:  Font, s8

        Gui, 1:  Font, cWhite

        Gui, 1:  Font, w%Скорость1%0

                                                                                                                                        
        Gui, 1:  ADD, TEXT,,            [Статьи и наказание | УК-РФ | 2/3] 
        Gui, 1:  ADD, TEXT,,   60 - Массовые беспорядки - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   61 - Хулиганство - 20к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   62 - Незаконное проникновение на закрытый объект - 20к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   63.1 - Незаконные действия с огнестр. оружием, его частей боеприпасами 
        Gui, 1:  ADD, TEXT,,   и матами попадающих под лицензию но без лицензии - СПРП ★★ 
        Gui, 1:  ADD, TEXT,,   63.2 - 63.1 ток не поподает под лицензию - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   63.3 - Ношение огнестр. оружия в открытом виде в ОБЩ. метсах - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   63.4 - Приминение огнестр. оружия в ОБЩ местах - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   63.5 - Причинение вреда здоровью с использованием оружия - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   63.6 - Ношение бронежилета 4 класса в нарушении требований ФЗ"Об оружии" - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   64 - Наркотики - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   64.1 - Производство и пересылка наркотиков - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   65 - Организация или вовлечение в занятие проституцией - СПРП ★★
        Gui, 1:  ADD, TEXT,,   66 - Жестокое обращение с животными - СПРП ★★
        Gui, 1:  ADD, TEXT,,   67.1 - Отказ от уплаты административного штрафа менее 30к - СПРП ★★
        Gui, 1:  ADD, TEXT,,   67.2 - Отказ от уплаты административного штрафа от 30к до 50к - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   67.3 - Отказ от уплаты административного штрафа более 50к - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   68.1 - Управление ТС, нарушение ПДД или использ. ТС, послекшее по неосторж. тяж. вред здоровью - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   68.2 - 68.1 ток повлекшее смерть - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   68.3 - Неисполнение уполномоченого надзор в безопастности на дороге - 20к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   68.4 - Причинение вреда здоровью совершая наезд - 30к или СПРП ★★
        Gui, 1:  ADD, TEXT,,   69 - Госсизмена - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   70 - Посягательство на жизнь сотрудника - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   71 - Вооружёный метеж - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   72.1 - Занятие экстремизмом - СПРП★★★★★
        Gui, 1:  ADD, TEXT,,   72.2 - Публичные призывы к осуществлению экстримизма - СПРП ★★★
        Gui, 1:  ADD, TEXT,,   73.1 - Публ. призывы к деятельности, направленой против безопастноти, либо к восприпяств. органам власти - СПРП ★★★★
        Gui, 1:  ADD, TEXT,,   73.2 - Публ. призывы к действиям, направленые на нарушение територияльной целостности - 50к или СПРП ★★★★




        WinSet, TransColor, %CustomColor3% 180

        Gui, Show, x%GuiX% y%GuiY% NoActivate, window.


    }else if(ActiveGui = "УК" and ListGui = "2"){
        CloseGui()
        ActiveGui := "УК"
	    ListGui := "3"
        OpenGui := 1
        
        CustomColor3 = EEAA99

        Gui, 1: +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui, 1: Color, black

        Gui, 1: Font, s8

        Gui, 1: Font, cWhite

        Gui, 1: Font, w%Скорость1%0

                                                                                                                                        
        Gui, 1: ADD, TEXT,,            [Статьи и наказание | УК-РФ | 3/3] 
        Gui, 1: ADD, TEXT,,   74 - Разглошение госсударственной тайны - СПРП ★★★★
        Gui, 1: ADD, TEXT,,   75 - Незаконное получение сведений состовляющих госсударственную тайну - СПРП ★★★★
        Gui, 1: ADD, TEXT,,   76.1 - Злоупотребление должностными полномочиями - 150к или СПРП ★★★
        Gui, 1: ADD, TEXT,,   76.2 - 76.1, но тяжёлые последствия - СПРП ★★★★
        Gui, 1: ADD, TEXT,,   77.1 - Превышение долж. полномочий - 150к или СПРП ★★
        Gui, 1: ADD, TEXT,,   77.2 - 77.1, но с насилием, оружия, спец. средств, тяжкие последствия, групой, из личных интересов - СПРП ★★★★
        Gui, 1: ADD, TEXT,,   78.1 - Умышленное неисполнение сотрудником госс органа приказа - СПРП ★★★
        Gui, 1: ADD, TEXT,,   78.2 - Умышленое не исполнение условий контракта - СПРП ★★★
        Gui, 1: ADD, TEXT,,   79 - Получение или дача взятки - СПРП ★★★
        Gui, 1: ADD, TEXT,,   80.1 - Халатность не повлекшее причинения крупного ущерба или нарушения прав граждан, организаций, госс - 50к/СПРП★★
        Gui, 1: ADD, TEXT,,   80.2 - Халатность повлекшее причинения крупного ущерба или нарушения прав граждан, организаций, госс - СПРП ★★★
        Gui, 1: ADD, TEXT,,   81 - Увольнение с гос службы в связи с огранич. работы - СПРП ★★★ - ★★★★★
        Gui, 1: ADD, TEXT,,   82 - Воспрепятсвтвование осуществлению провосудия и произвоству предварительного расследования - СПРП ★★★★
        Gui, 1: ADD, TEXT,,   83 - Влияние на уголовное дело - СПРП ★★★★
        Gui, 1: ADD, TEXT,,   84 - Влияние на судебное дело - СПРП ★★★★
        Gui, 1: ADD, TEXT,,   85 - Неуважение к суду - 25к или СПРП ★★
        Gui, 1: ADD, TEXT,,   86 - Привлечение заведомо невиного к уголовке - 50к или СПРП ★★★
        Gui, 1: ADD, TEXT,,   87 - Заведомо ложный донос - 30к или СПРП ★★★
        Gui, 1: ADD, TEXT,,   88 - Побег - СПРП ★★★★★
        Gui, 1: ADD, TEXT,,   89 - Неисполнение приговора суда, решения суда или иного судебного акта - СПРП ★★★
        Gui, 1: ADD, TEXT,,   90 - Посягательство на жизнь сотрудника правоохранительного органа - СПРП ★★★
        Gui, 1: ADD, TEXT,,   91.1 - Применение насилия, не опасного для здоровья, отношении представителя власти или его близких -СПРП★★★
        Gui, 1: ADD, TEXT,,   91.2 - 90.1 но тяжкий вред здоровью - СПРП ★★★★
        Gui, 1: ADD, TEXT,,   91.3 - 90.1 но угрозы только - СПРП ★★★
        Gui, 1: ADD, TEXT,,   92 - ОСК представителя власти - 30к или СПРП ★★
        Gui, 1: ADD, TEXT,,   93 - Самоуправство - 25к или СПРП ★★
        Gui, 1: ADD, TEXT,,   94 - Помеха в осуществлении деятельности сотрудника государственной власти - 25к или СПРП ★★
        Gui, 1: ADD, TEXT,,   95 - Присвоение полномочий должностного лица - 35к или СПРП ★★★


        WinSet, TransColor, %CustomColor3% 180

        Gui, 1: Show, x%GuiX% y%GuiY% NoActivate, window.




}
return



!2::
    if (ActiveGui = "КоАП" and ListGui = "3") {
        CloseGui()
        ActiveGui := ""
        OpenGui := 0
    } else if(not(ActiveGui = "КоАП")){
        CloseGui()
        ActiveGui := "КоАП"
        ListGui := "1"
        OpenGui := 1
        
        CustomColor3 = EEAA99

        Gui, 1: +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui, 1: Color, black

        Gui, 1: Font, s8

        Gui, 1: Font, cWhite

        Gui, 1: Font, w%Скорость1%0

                                                                                                                                        
        GUI, 1: ADD, TEXT,,            [Статьи и наказание | КоАП-РФ | 1/3] 
        GUI, 1: ADD, TEXT,,   5.1 - Нарушение порядка рассмотрения обращений граждан - 20к - 50к
        GUI, 1:ADD, TEXT,,   5.2 - Оскорбление - 10к - 20к
        GUI, 1:ADD, TEXT,,   5.3 - Дискриминация - 5к - 15к
        GUI, 1:ADD, TEXT,,   6.1 - Воспрепятствование оказанию медицинской помощи - 10к - 15к
        GUI, 1: ADD, TEXT,,   6.2 - Нарушение территориального принципа обращения за медицинской помощью - 50к - 90к на мед организ.
        GUI, 1: ADD, TEXT,,   6.3 - Неоказание медицинской помощи - 10к - 15к
        GUI, 1: ADD, TEXT,,   6.4 - Отсутствие действующей медицинской книжки у сотрудника госс организации - 15к - 25к
        GUI, 1: ADD, TEXT,,   6.5 - Непрохождение медицинской проверки государственной организацией - 50к - 90к на организ.
        GUI, 1: ADD, TEXT,,   7.1 - Проникновение на частную территорию - 10к -20к
        GUI, 1: ADD, TEXT,,   7.2 - Взлом - СПРП ★★
        GUI, 1: ADD, TEXT,,   7.3 - Попытка угона ТС - 10к - 20к
        GUI, 1: ADD, TEXT,,   7.4 - Браконьерство - 20к - 30к
        GUI, 1: ADD, TEXT,,   7.5 - Нарушение правил, регламентирующих рыболовство и другие виды животных - 15к - 30к
        GUI, 1: ADD, TEXT,,   8.1 - Мелкое хулиганство - 10к-15к или СПРП ★
        GUI, 1: ADD, TEXT,,   8.2 - Побои - 20к-30к или СПРП ★
        GUI, 1: ADD, TEXT,,   8.3 - Потребление алкогольной продукции в ОБЩ местах - 5к-15к
        GUI, 1: ADD, TEXT,,   8.4 - Попрошайничество в ОБЩ местах - 5к-15к
        GUI, 1: ADD, TEXT,,   8.5 - Заведомо ложный вызов - 10к-20к
        GUI, 1: ADD, TEXT,,   8.6 - Организация, участие и(или) призыв к несанкционированному митингу - 20к-30к или СПРП ★★
        GUI, 1: ADD, TEXT,,   8.7 - Неповиновение законному распоряжению - 15к-30к - СПРП ★★
        GUI, 1: ADD, TEXT,,   8.8 - Клевета - 10к-20к
        GUI, 1: ADD, TEXT,,   8.9 - Невыполнение законных требований прокурора, следователя, дознавателя - 10к-20к, госс-10 окладов
        GUI, 1: ADD, TEXT,,   8.10 - Нарушение законодательства об исполнительном производстве - 10к-20к госс-10 окладов
        GUI, 1: ADD, TEXT,,   8.11 - Нарушения правил поведения на охроняемых территорий - 10к-20к
        GUI, 1: ADD, TEXT,,   8.12 - Ношение масок в ОБЩ месте скрывающем лицо - 10к-15к
        GUI, 1: ADD, TEXT,,   8.13 - Открытое ношение холодного оружия в ОБЩ месте - 15к-20к
        GUI, 1: ADD, TEXT,,   8.14 - Курение в ОБЩ месте - 5к-10к  


        WinSet, TransColor, %CustomColor3% 180

        Gui,1: Show, x%GuiX% y%GuiY% NoActivate, window.

    }else if(ActiveGui = "КоАП" and ListGui = "1"){
        CloseGui()
        ActiveGui := "КоАП"
        ListGui := "2"
        OpenGui := 1
        CustomColor3 = EEAA99

        Gui, 1: +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui, 1: Color, black

        Gui,1: Font, s8

        Gui,1: Font, cWhite

        Gui, 1:Font, w%Скорость1%0

                                                                                                                                        
        GUI,1: ADD, TEXT,,            [Статьи(ПДД) и наказание | КоАП-РФ | 2/3] 
        GUI,1: ADD, TEXT,,     9.1 (2.1) - Управление ТС не имеющим при себе документов: ВУ, тех-паспорт, разрешение(если не его) - 30к
        GUI,1: ADD, TEXT,,     9.2 (2.1) - Непредоставление по требованию ГИБДД документов - 15к
        GUI,1: ADD, TEXT,,     9.3 (13.2) - Незарегестрированное ТС (более 3 дней) - 30к
        GUI,1: ADD, TEXT,,     9.4 (13.4) - Управление ТС с тоннировкой более 75 спереди - 15к
        GUI,1: ADD, TEXT,,     9.5 (13.1) - Управление ТС при наличии неисправности - 30к
        GUI,1: ADD, TEXT,,     9.6 (глава IV) - Нарушение ПДД пешеходам и велосипедистам - 5к
        GUI,1: ADD, TEXT,,     9.7 (2.7) - Посадка/Высадка посажиров со стороны проезжей части - 10к
        GUI,1: ADD, TEXT,,     9.8 (5.4) - Игнор водителя требования об остановке - 30к
        GUI,1: ADD, TEXT,,     9.9 (1.3) - Несоблюдение требований, предписанных дорожными знаками/ разметкой - 15к
        GUI,1: ADD, TEXT,,     9.10 (3.1) - Езда при следовании с включенными маячками и звуковым сигналом, не убедившись в безопасности манёвра - 25к
        GUI,1: ADD, TEXT,,     9.11 (3.7) - Нарушение правил использования аварийных сигналов - 5к
        GUI,1: ADD, TEXT,,     9.12 (3.9) - Управление ТС с выкл фарами - 5к
        GUI,1: ADD, TEXT,,     9.13 (3.8) - Использование звукового сигнала в нарушение ПДД - 5к
        GUI,1: ADD, TEXT,,     9.14 (5.2) - Проезд на красный - 15к
        GUI,1: ADD, TEXT,,     9.15 (5.5) - Невыполнение требования об остановке перед стоп-линией - 15к
        GUI,1: ADD, TEXT,,     9.16 (6.1) - Невыполнение требований об использовании поворотников - 10к
        GUI,1: ADD, TEXT,,     9.17 (6.4) - Непредоставление при перестроениее преимущества ТС - 30к
        GUI, 1:ADD, TEXT,,     9.18 (6.5) - Поворот из полосы движения, не предназначенной для данного манёвра - 15к
        GUI,1: ADD, TEXT,,     9.19 (6.6,6.7,6.8) - Поворот в нарушении ПДД - 15к
        GUI,1: ADD, TEXT,,     9.20 (7.1) - Движение по встречке - 15к или лишение ВУ
        GUI,1: ADD, TEXT,,     9.21 - Повреждение дорог, железнодорожных переездов или других дорожных сооружений - 5-20к
        GUI,1: ADD, TEXT,,     9.22 (7.2) - Выезд на встречку - 15к
        GUI,1: ADD, TEXT,,     9.23 (7.4) - Движение по левым полосам движения при свободных правых - 5к
        GUI,1: ADD, TEXT,,     9.24 (7.5) - Движение по прерывистым линиям разметки - 5к
        GUI,1: ADD, TEXT,,     9.25 (7.7) - Движение по разделительным полосам и обочинам - 5к
        GUI,1: ADD, TEXT,,     9.26 (7.8) - Несоблюдение дистанции и интервала - 5к
        GUI,1: ADD, TEXT,,     9.27 (3.2) - Обгон ТС с вкл мигалками и звуковым сигналом -  20к

        


        WinSet, TransColor, %CustomColor3% 180

        Gui,1: Show, x%GuiX% y%GuiY% NoActivate, window. 
    }else if (ActiveGui = "КоАП" and ListGui = "2"){
        CloseGui()
        ActiveGui := "КоАП"
        ListGui := "3"
        OpenGui := 1
        
        CustomColor3 = EEAA99

        Gui,1: +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui,1: Color, black

        Gui,1: Font, s8

        Gui,1: Font, cWhite

        Gui,1: Font, w%Скорость1%0

                                                                                                                                        
        GUI,1: ADD, TEXT,,            [Статьи и наказание | КоАП-РФ | 3/3]
        GUI,1: ADD, TEXT,,     9.28 (9.4) - Обгон ТС там где нельзя - 10к
        GUI,1: ADD, TEXT,,     9.29 (9.3) - Препятствование обгону - 10к
        GUI,1: ADD, TEXT,,     9.30 (10.3) - Остановка или стоянка ТС на пешеходном переходе - 15к
        GUI,1: ADD, TEXT,,     9.31 (10.3) - Остановка или стоянка ТС в местах остановки маршрутных ТС - 10к
        GUI,1: ADD, TEXT,,     9.32 (X глава) - Нарушение правил остановки или стоянки ТС на проезжей части, повлекшее создание препятствий для движения - 30к
        GUI,1: ADD, TEXT,,     9.33 (X глава) - Нарушение иных правил остановки или стоянки ТС - 10к
        GUI,1: ADD, TEXT,,     9.34 (XI глава) Нарушения правил проезда перекрёстков, не повлекшие опасности другим -10к
        GUI,1: ADD, TEXT,,     9.35 (XI глава) - Нарушение правил проезда перекрёстков повлекшие опастность другим - 15к
        GUI,1: ADD, TEXT,,     9.36 (12.1) - Нарушения правил движения по автомагистрали - 10к
        GUI,1: ADD, TEXT,,      9.37 (3.2) - Непредоставление преймущества ТС с вкл мигалками с сиреной - 20к
        GUI,1: ADD, TEXT,,      9.38 (14.7) - Непредоставление преимущества ОБЩ ТС - 10к  
        GUI,1: ADD, TEXT,,      9.39 (6.3,11.7) - Непредоставление преимущества ТС, движущимся по главной дороге - 5к
        GUI,1: ADD, TEXT,,      9.40 (14.1) - Непредоставление преимущества в движении пешеходам и(или) велосипедистам, пересекающих проезжую часть - 5к
        GUI,1: ADD, TEXT,,      9.41 (2.6) - Оставление водителем в нарушение ПДД места ДТП - 15к
        GUI,1: ADD, TEXT,,      9.42 (2.4) - Управление транспортным средством в состоянии опьянения - 30к или лишение ВУ
        GUI,1: ADD, TEXT,,      9.43 (2.3) - Невыполнение водителем ТС требования должностного лица о прохождении мед освидет. на состояние опьянения - 30к лиш. ВУ
        GUI,1: ADD, TEXT,,      9.44 (1.5) - Опасное вождение - 10к
        GUI,1: ADD, TEXT,,      9.45.1 (8.1) - Превышение скорости не более 20 км/ч - 5к
        GUI,1: ADD, TEXT,,      9.45.2 - более 20, но не более 40 км/ч - 10к
        GUI,1: ADD, TEXT,,      9.45.3 - более 40, но не более 80 км/ч - 15к
        GUI,1: ADD, TEXT,,      9.45.4 - более 80 км/ч - 25к или лишение ВУ
        GUI,1: ADD, TEXT,,      10.1 - Неисполнение требований о внешнем виде -25к-30к
        GUI,1: ADD, TEXT,,      10.2 - Неисполнение требований этики работников госс организаций - 25к-30к
        GUI,1: ADD, TEXT,,      10.3 - Взлет и посадка без установленного уведомления - 50к-100к
        GUI,1: ADD, TEXT,,      10.4 - Нарушение иных правил пользования воздушным пространством - 50к-100к
        GUI,1: ADD, TEXT,,      11.1 - Нарушение оформления реквизитов - 20к-50к
        GUI,1: ADD, TEXT,,      11.2 - Нарушение общих требований к созданию документов - 20к-35к
        GUI,1: ADD, TEXT,,      11.3 - Нарушение иных специальных требований к созданию документов - 20к-35к  


        WinSet, TransColor, %CustomColor3% 180

        Gui,1: Show, x%GuiX% y%GuiY% NoActivate, window.

    }


return



!3::
    if (ActiveGui = "ТЕН-код") {
        CloseGui()
        ActiveGui := ""
        OpenGui := 0
    } else {
        CloseGui()
        ActiveGui := "ТЕН-код"
        OpenGui := 2
        SobGuiX := GuiX - 150
        SobGuiX1 := GuiX + 150
        CustomColor3 = EEAA99

        Gui,1: +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui,1: Color, black

        Gui,1: Font, s8

        Gui,1: Font, cWhite

        Gui,1: Font, w%Скорость1%0

                                                                                                                                        
        GUI,1: ADD, TEXT,,            [Правила Радиопереговоров ДПС] 
        GUI,1: ADD, TEXT,,                     [ТЕН-коды]
        GUI,1: ADD, TEXT,,      10-0 - Повышенное внимание        
        GUI,1: ADD, TEXT,,      10-1 - Локация            	              
        GUI,1: ADD, TEXT,,      10-2 - транспортирую подозреваемого	  
        GUI,1: ADD, TEXT,,      10-3 - требуется поддержка        
        GUI,1: ADD, TEXT,,      10-4 - принято                    
        GUI,1: ADD, TEXT,,      10-5 - Повторите сообщение	
        GUI,1: ADD, TEXT,,      10-6 - отмена/не принято/неверно  
        GUI,1: ADD, TEXT,,      10-7 - вне смены			
        GUI,1: ADD, TEXT,,      10-8 - на смене			
        GUI,1: ADD, TEXT,,      10-9 - требуется медпомощь	
        GUI,1: ADD, TEXT,,      10-10 - сбор всех юнитов в УГИБДД 
        GUI,1: ADD, TEXT,,      10-13 - стрельба/открыт огонь	
        GUI,1: ADD, TEXT,,      10-20 - Местоположение		
        GUI,1: ADD, TEXT,,      10-21 - возвращаюсь в УГИБДД
        GUI,1: ADD, TEXT,,      10-22 - на месте вызова
        GUI,1: ADD, TEXT,,      10-23 - информация по ТС/человеку
        GUI,1: ADD, TEXT,,      10-30 - некорректная радиопередача
        GUI,1: ADD, TEXT,,      10-50 - ДТП
        GUI,1: ADD, TEXT,,      10-55 - остановка трафика
        GUI,1: ADD, TEXT,,      10-57 - погоня за ТС
        GUI,1: ADD, TEXT,,      10-58 - пешая погоня
        GUI,1: ADD, TEXT,,      10-66 - остановка с последующим задержанием
        GUI,1: ADD, TEXT,,      10-78 - требуется эвакуатор
        GUI,1: ADD, TEXT,,      10-100* - afk
        GUI,1: ADD, TEXT,,      10-200* - краш/вылет
        GUI,1: ADD, TEXT,,      10-300* - проверить дискорд
        WinSet, TransColor, %CustomColor3% 180
        Gui,1: Show, x%SobGuiX% y%GuiY% NoActivate, window.

        Gui,2: +LastFound +AlwaysOnTop -Caption +ToolWindow 

        Gui,2: Color, black

        Gui,2: Font, s8

        Gui,2: Font, cWhite

        Gui,2: Font, w%Скорость1%0


        GUI,2: ADD, TEXT,,                      [Коды]
        GUI,2: ADD, TEXT,,      Code 1 - сирены и огни
        GUI,2: ADD, TEXT,,      Code 2 - огни без сирен
        GUI,2: ADD, TEXT,,      Code 3 - приоритетный вызов.
        GUI,2: ADD, TEXT,,      Code 4 - помощь не требуется/отбой
        GUI,2: ADD, TEXT,,      Code 5 - ситуация урегулирована
        GUI,2: ADD, TEXT,,      Code 6 - офицер в опасности
        GUI,2: ADD, TEXT,,      Code 7 - вызов принят
        GUI,2: ADD, TEXT,,      Code 0 - 
        GUI,2: ADD, TEXT,,      Code 999 - Сотрудник убит
        GUI,2: ADD, TEXT,,      Code 100 - задействовать все службы 112
        GUI,2: ADD, TEXT,,                        [Позывные]
        GUI,2: ADD, TEXT,,      Экипаж из 1 человека БП: Волга - 1 - 99
        GUI,2: ADD, TEXT,,      Экипаж 2 человека: Иволга - 1 - 99
        GUI,2: ADD, TEXT,,      Экипаж 2 человека Координация ОБ: Молния 1 - 99
        GUI,2: ADD, TEXT,,      Экипаж ОБ 1 человек: Гранит - 1 - 99
        GUI,2: ADD, TEXT,,      Экипаж 1 Мотобат: Гроза - 1 - 99
        GUI,2: ADD, TEXT,,      P.S Если экипаж сводный то отмечается по тому кто сидит на
        GUI,2: ADD, TEXT,,      пассажирском, так как только он разговаривает по рации.
        WinSet, TransColor, %CustomColor3% 180

        Gui,2: Show, x%SobGuiX1% y%GuiY% NoActivate, window.
    }
return
