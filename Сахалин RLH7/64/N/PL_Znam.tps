Valuemacro  Pl_Znam;
{  Работает в составе выражения 'План - знаменатель формулы',
   позволяет построить выражение в знаменателе таксационной
   формулы для плана лесонасаждений

    Версия 4.0, ©  Старостенко Д.А., 1999-2009 год  }


const
   {  При площади < порога возвращает пустую строку  }
    Porog1Pls = 0.10;
    Porog2Pls = 5.1;
    Porog3Pls = 8.1;

   {  Имена полей БД 
    PLSVYD - площадь выдела  
    M1.PLSVYD - площадь выдела   
    M1.KATZEM - категория земель
    M1.BON    - бонитет (текст)
    M1.KLSVOZ - класс возраста
    M1.GRPVOZ - группа возраста
      .GOD  - год создания культур ???
    M1.TIPVYR - тип вырубки
    M1.GODVIR - год вырубки         }

var
    ResultValue : string;
    add_str : string;

begin
  ResultValue := ''; 
  if @PLSVYD >= Porog2Pls then
    begin
    ResultValue := @M1!PLSVYD:C:4:1;  
    if @PLSVYD >= Porog3Pls then
      begin
      if ((@M1!KATZEM >= 1100) and (@M1!KATZEM < 1200)) or
         ((@M1!KATZEM >= 1400) and (@M1!KATZEM < 1500))  then
        begin
            {  Для покрытых лесом земель и редин:  
                Площадь выдела - Бонитет    }
        add_str := @M1!BON;
        ResultValue := ResultValue + '-' + StrTrim(add_str);
        end
      else if @M1!TIPVYR <> '' then
        begin
            {  Для вырубок, гарей и прогалин:
                Площадь выдела - Тип вырубки/гари   }
        add_str := @M1!TIPVYR:C:2;
        ResultValue := ResultValue + '-' + add_str;
        end
            {  Для пустырей и прогалин:  
                Площадь выдела      }
      end
    end
end.

