Valuemacro  StPozOp;
{  Формирует код символа 'Степень пожарной опасности',
   что позволяет сформировать параметры раскраски для БД блока
   
	Вер. 1.0   © Грешнов С.П., Старостенко Д.А., 2005 год	}

   {  Имена полей БД  
	M1.KATZEM	- категория земель
	M1.PRBPOR	- преобладающая порода
	M1.GRPVOZ	- группа возраста
	M1.TLU      - тип лесорастительных условий 
	M1.TIPLES   - тип леса      }

var
	ResultValue : string;

begin
			{  Категория земель  }
  if (@M1.KATZEM >= 1100) and (@M1.KATZEM < 1343) then
    begin			{ покр. лесом }
      if (Trunc(@M1.PRBPOR/100000) = 1) and (@M1.GRPVOZ < 3)  then
        ResultValue := '1'  { хвойные молодняки }
      else if (@M1.TIPLES = 'СЛИШ') then
        ResultValue := '1'  { Сосняк лишайниковый }
      else if (@M1.TIPLES = 'СБР') and (@KOLPOD > 0) then
        ResultValue := '2'  { Сосняк брусничниковый с подростом }
      else if (@M1.TIPLES = 'СЧРМ') then
        ResultValue := '3'  { Сосняк черничниковый }
      else if (@M1.TIPLES = 'ССЛМ') 
        ResultValue := '4'  { Сосняк мелкотравный }
      else if (@M1.TIPLES = 'ССЛШ') then
        ResultValue := '4'  { Сосняк сложный }
      else if (@M1.TIPLES = 'ССФ') then
        ResultValue := '4'  { Сосняк сфагновый }
      else if (@M1.TIPLES = 'СДМ') then
        ResultValue := '4'  { Сосняк долгомошниковый }
      else if (@M1.TIPLES = 'ЕСЛШ') then
        ResultValue := '4'  { Ельник сложный }
      else if (@M1.TIPLES = 'ЕЧРШ') then
        ResultValue := '4'  { Ельник черничный }
      else if (@M1.TIPLES = 'ДСЛШ') then
        ResultValue := '4'  { Дубняк сложный }
      else if (@M1.TIPLES = 'ДЧРШ') then
        ResultValue := '4'  { Дубняк черничный }
      else
        ResultValue := '5'
    end
  else if (@M1.KATZEM = 1503) then
      	{ гари }
    if (@M1.ZAPSUH > 20) or (@M1.ZAPZAH > 10) then
      ResultValue := '1'  { захламленные }  
  else if (@M1.KATZEM = 1504) then
        { насаждения погибшие }
      ResultValue := '1'	
  else if (@M1.KATZEM = 1507) then
        { лесосеки }
    if (@M1.ZAPSUH > 20) or (@M1.ZAPZAH > 10) then
      ResultValue := '1'  { захламленные }  
  else if (@M1.KATZEM = 1509) then
        { вырубки }
    begin
      if (CHAR(@TLU, 2):N <= 1) then
        ResultValue := '1'  { Вырубки по суходолам }
      else if (@M1.ZAPSUH > 20) or (@M1.ZAPZAH > 10) then
        ResultValue := '1'  { Вырубки захламленные }
      else if (@M1.TIPVYR = 'Т') or (@M1.TIPVYR = 'Д') then   
        ResultValue := '4'	{ Таволговые, Долгомошные }
      else
        ResultValue := '5'
    end
  else
      ResultValue := '5';    { прочие }
end.


