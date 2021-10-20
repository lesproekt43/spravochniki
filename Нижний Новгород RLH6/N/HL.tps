Valuemacro  HvoLi;
{  Формирует код символа 'Хвойные - лиственные',
   
	Вер. 1.0   © ЛесИС, Старостенко Д.А., 2003 год	}

   {  Имена полей БД  
	 M1.KATZEM	- категория земель
	 M1.PRBPOR	- преобладающая порода    }

var
	ResultValue : string;

begin
  			{  Преобладающая порода  }
  if Trunc(@M1.PRBPOR/100000) = 1 then
    ResultValue := '1010'	{ хвойные }
  else if Trunc(@M1.PRBPOR/100000) = 2 then
    ResultValue := '2200'	{ твердолиственные }
  else if Trunc(@M1.PRBPOR/100000) >= 3 then
    ResultValue := '3020'	{ мягколиственные }
  else  
    ResultValue := '';
    
			{  Категория земель  }
  if (@M1.KATZEM >= 1100) and (@M1.KATZEM < 1108) then 
      ResultValue := ResultValue + '3'
  else if (@M1.KATZEM = 1200) or (@M1.KATZEM = 1201) then
      ResultValue := ResultValue + '5'	{ культуры несомкн. }
  else if (@M1.KATZEM = 1108) or (@M1.KATZEM = 1114) then
      ResultValue := ResultValue + '5'	{ культуры сомкн. }
  else if @M1.KATZEM = 1109 then
      ResultValue := ResultValue + '5'	{ культ. реконстр. }
  else if (@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112) then
      ResultValue := '2108'	{ воды }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ болота }
  else
      ResultValue := '1000';    { прочие категории земель }
end.
