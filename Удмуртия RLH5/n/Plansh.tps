Valuemacro  Plan;
{  Формирует код символа 'Раскраска плана лесонасаждений',
   что позволяет сформировать параметры раскраски для БД блока
   
	Вер. 3.3   © Старостенко Д.А., 1999-2011 год	}

   {  Имена полей БД  
	M1.KATZEM	- категория земель
	M1.PRBPOR	- преобладающая порода
	M1.GRPVOZ	- группа возраста         }

var
	ResultValue : string;

begin 
			{  Категория земель  }
  if @M1.KATZEM = 1503 then
      ResultValue := '1503'	{ гари }
  else if (@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112) then
      ResultValue := '2108'	{ воды }
  else if @M1.KATZEM = 2102 then
      ResultValue := '2102'	{ сенокос }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ болота }
  else if (@M1.KATZEM = 2506) then
      ResultValue := '2506'	{ пески }
  else
      ResultValue := '1000';    { прочие категории земель }
end.


