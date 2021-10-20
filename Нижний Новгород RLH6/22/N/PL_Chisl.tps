Valuemacro  Pl_Chisl;
{  Работает в составе выражения 'План - числитель формулы',
   позволяет дополнить N выдела в числителе таксационной
   формулы для плана лесонасаждений другими параметрами   

	Версия 4.0, ©  Старостенко Д.А., 1999-2009 год	}


const
   {  При площади < порога возвращает пустую строку  }
    Porog1Pls = 0.10;
	Porog2Pls = 5.1;
    Porog3Pls = 8.1;

   {  Имена полей БД
    PLSVYD - площадь выдела 
	M1.KATZEM - категория земель
	M1.BON	  - бонитет (текст)
	M1.KLSVOZ - класс возраста
	M1.GRPVOZ - группа возраста
	  .GOD	- год создания культур ???
	M1.TIPVYR - тип вырубки
	M1.GODVIR - год вырубки         }

var
	ResultValue : string;
    add_str : string;

begin
  ResultValue := ''; 
  if (@PLSVYD > 0) or (@PLSPOL >= Porog1Pls) then
    ResultValue := @NOMVYD:C:3;
  if @PLSVYD >= Porog3Pls then
    begin
      if ((@M1!KATZEM >= 1100) and (@M1!KATZEM < 1200)) or
	     ((@M1!KATZEM >= 1400) and (@M1!KATZEM < 1500))  then
	    begin 
		    {  Для покрытых лесом земель и редин:  
   			   № выдела - Класс возраста		}
        add_str := @M1!KLSVOZ:C:2;
        ResultValue := ResultValue + '-' + add_str;
	    end
      else if @M1!TIPVYR <> '' then
	    begin
			{  Для вырубок, гарей и прогалин:
				NV - Год вырубки/гари	}
        add_str := @M1!GODVIR:C:2;
        ResultValue := ResultValue + '-' + add_str; 
	    end; 
    end;
end.

