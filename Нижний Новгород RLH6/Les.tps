Valuemacro  Les;
{  Формирует код символа для окраски леса в стиле топокарты,
   
	Вер. 1.0   © ЛесИС, Старостенко Д.А., 2003 год	}

   {  Имена полей БД  
	 M1.KATZEM	- категория земель    }

var
	ResultValue : string;

begin
			{  Категория земель  }
  if (@M1.KATZEM >= 1100) and (@M1.KATZEM < 1108) then   { покр. лесом }
      ResultValue := '1100'
  else if (@M1.KATZEM = 1200) or (@M1.KATZEM = 1201) then
      ResultValue := '1100'	{ культуры несомкн. }
  else if (@M1.KATZEM = 1108) or (@M1.KATZEM = 1114) then
      ResultValue := '1100'	{ культуры сомкн. }
  else if @M1.KATZEM = 1109 then
      ResultValue := '1100'	{ культ. реконстр. }
  else if (@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112) then
      ResultValue := '2108'	{ воды }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ болота }
  else
      ResultValue := '1000';    { прочие категории земель }
end.


