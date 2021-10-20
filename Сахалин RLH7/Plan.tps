Valuemacro  Plan;
{  Формирует код символа 'Раскраска плана лесонасаждений',
   что позволяет сформировать параметры раскраски для БД блока
   
	Вер. 3.1   © Старостенко Д.А., 1999-2005 год	}

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
  else if Trunc(@M1.PRBPOR/100) = 1003 then
    ResultValue := '1030'	{ пихта }
  else if Trunc(@M1.PRBPOR/100) = 1004 then
    ResultValue := '1040'	{ лиственница }
  else if Trunc(@M1.PRBPOR/100) = 1005 then
    ResultValue := '1050'	{ кедр }
    
  else if Trunc(@M1.PRBPOR/100) = 2020 then
    ResultValue := '2200'	{ дуб }
  else if Trunc(@M1.PRBPOR/100) = 2023 then
    ResultValue := '2230'	{ ясень }
  else if Trunc(@M1.PRBPOR/100) = 2024 then
    ResultValue := '2240'	{ клен }
  else if Trunc(@M1.PRBPOR/100) = 2025 then
    ResultValue := '2250'	{ вяз }
    
  else if Trunc(@M1.PRBPOR/100) = 3026 then
    ResultValue := '3020'	{ береза }
  else if Trunc(@M1.PRBPOR) = 304000 then
    ResultValue := '3040'	{ осина }
  else if Trunc(@M1.PRBPOR) = 304105 then
    ResultValue := '3100'	{ ольха с }
  else if Trunc(@M1.PRBPOR) = 304110 then
    ResultValue := '3110'	{ ольха ч }
  else if Trunc(@M1.PRBPOR/100) = 3042 then
    ResultValue := '3240'	{ липа }
  else if Trunc(@M1.PRBPOR) = 304300 then
    ResultValue := '3040'	{ тополь }
  else if Trunc(@M1.PRBPOR/100) = 3044 then
    ResultValue := '3140'	{ ива }
    
  else if Trunc(@M1.PRBPOR) = 511800 then
    ResultValue := '518'	{ рябина }
  else if Trunc(@M1.PRBPOR) = 512800 then
    ResultValue := '528'	{ черемуха }
  else if Trunc(@M1.PRBPOR/100) = 5134 then
    ResultValue := '534'	{ яблоня }
  else
    ResultValue := '';
    
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
  else if (@M1.KATZEM = 1200) or (@M1.KATZEM = 1201) then
      ResultValue := ResultValue + '5'	{ культуры несомкн. }
  else if (@M1.KATZEM = 1108) or (@M1.KATZEM = 1114) then
      ResultValue := ResultValue + '6'	{ культуры сомкн. }
  else if @M1.KATZEM = 1109 then
      ResultValue := ResultValue + '7'	{ культ. реконстр. }
  else if @M1.KATZEM = 1509 then
      ResultValue := '1509'	{ вырубки }
  else if (@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112) then
      ResultValue := '2108'	{ воды }
  else if @M1.KATZEM = 2102 then
      ResultValue := '2102'	{ сенокос }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ болота }
  else
      ResultValue := '1000';    { прочие категории земель }
end.


