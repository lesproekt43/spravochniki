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
  			{  Преобладающая порода  }
  if Trunc(@M1.PRBPOR/100) = 1001 then
    ResultValue := '1010'	{ сосна }
  else if Trunc(@M1.PRBPOR/100) = 1002 then
    ResultValue := '1020'	{ ель }
  else if Trunc(@M1.PRBPOR/100) = 1004 then
    ResultValue := '1040'	{ лиственница }
  else if Trunc(@M1.PRBPOR/100) = 3026 then
    ResultValue := '3020'	{ береза }
  else if Trunc(@M1.PRBPOR/100) = 3040 then
    ResultValue := '3040'	{ осина }
  else if Trunc(@M1.PRBPOR/100) = 3041 then
    ResultValue := '3140'	{ ольха }
  else if Trunc(@M1.PRBPOR/100) = 3042 then
    ResultValue := '3240'	{ липа }
  else if Trunc(@M1.PRBPOR/100) = 3044 then
    ResultValue := '3044'	{ ива }
  else if Trunc(@M1.PRBPOR/100) = 2020 then
    ResultValue := '2200'	{ дуб }
  else if Trunc(@M1.PRBPOR/100) = 2025 then
    ResultValue := '2250'	{ вяз }
  else
    ResultValue := '0';
    
			{  Категория земель  }
  if (@M1.KATZEM >= 1100) and (@M1.KATZEM < 1108) then
    begin			{ покр. лесом }
      if (@M1.GRPVOZ = 1) or (@M1.GRPVOZ = 2) then
        ResultValue := ResultValue + '1'
      else if (@M1.GRPVOZ = 3) or (@M1.GRPVOZ = 4) then
        ResultValue := ResultValue + '2'
      else if @M1.GRPVOZ = 5 then
        ResultValue := ResultValue + '3'
      else if @M1.GRPVOZ >= 6 then
        ResultValue := ResultValue + '4'
    end
  else if ((@M1.KATZEM = 1200) or (@M1.KATZEM = 1201)) then
      ResultValue := ResultValue + '5'	{ культуры несомкн. }

  else if ((@M1.KATZEM = 1108) or (@M1.KATZEM = 1114)) then { культуры сомкн. }
    begin			{ культуры по группам возраста }
      if (@M1.GRPVOZ = 1) or (@M1.GRPVOZ = 2) then
        ResultValue := ResultValue + '6'
      else if (@M1.GRPVOZ = 3) or (@M1.GRPVOZ = 4) then
        ResultValue := ResultValue + '9'
      else if @M1.GRPVOZ = 5 then
        ResultValue := ResultValue + '10'
      else if @M1.GRPVOZ >= 6 then
        ResultValue := ResultValue + '11'
    end
  else if @M1.KATZEM = 1109 then
      ResultValue := ResultValue + '7'	{ культ. реконстр. }
  else if @M1.KATZEM = 1509 then
      ResultValue := '1509'	{ вырубки }
  else if @M1.KATZEM = 1503 then
      ResultValue := '1503'	{ гари }
  else if ((@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112)) then
      ResultValue := '2108'	{ воды }
  else if @M1.KATZEM = 2102 then
      ResultValue := '2102'	{ сенокос }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ болота }
  else if @M1.KATZEM = 2506 then
      ResultValue := '2506'	{ пески }
  else
      ResultValue := '1000';    { прочие категории земель }
end.


