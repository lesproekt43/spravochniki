Valuemacro  temat;
{  Формирует код символа 'Тематическая',
   что позволяет сформировать параметры раскраски для БД блока
   
	Вер. 3.3   © Старостенко Д.А., 1999-2011 год	}

   { 	Имена полей БД  
	M1.OZU      	- ОЗУ
	M1.PRBPOR	- преобладающая порода
	M1.GRPVOZ	- группа возраста         }

var
	ResultValue : string;

begin			{ покр. лесом }
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
    else if Trunc(@M1.PRBPOR) = 304200 then
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

    if (@M1.HOZMER1 >= 1431) and (@M1.HOZMER1 <= 1439) then   
      ResultValue := ResultValue + '7'
    else if (@M1.HOZMER1 >= 1441) and (@M1.HOZMER1 <= 1449) then  
      ResultValue := ResultValue + '5'
    else if (@M1.HOZMER1 >= 1211) and (@M1.HOZMER1 <= 1212) then 
      ResultValue := ResultValue + '2'
    else if (@M1.HOZMER1 >= 1221) and (@M1.HOZMER1 <= 1261) then
      ResultValue := ResultValue + '8'  
    else
      ResultValue := '';    { прочие категории земель }
end.


