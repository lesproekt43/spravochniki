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
    ResultValue := '0';

    if Trunc(@M1.PRBPOR/100) = 1001 then
      ResultValue := '1010'	{ сосна }
    else if Trunc(@M1.PRBPOR/100) = 1002 then
      ResultValue := '1020'	{ ель }
    else if Trunc(@M1.PRBPOR) = 304110 then
      ResultValue := '3110'	{ ольха ч }
    else if Trunc(@M1.PRBPOR/100) = 3042 then
      ResultValue := '3240'	{ липа }
    else if Trunc(@M1.PRBPOR/100) = 3026 then
      ResultValue := '3020'	{ береза }
    else if Trunc(@M1.PRBPOR) = 304000 then
      ResultValue := '3040';	{ осина }


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


