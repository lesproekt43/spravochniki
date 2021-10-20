Valuemacro  SplVyb2;
{  Формирует код символа 'Спелые насаждения, пригодные для эксплуатации',
   
	Вер. 1.1   © ЛесИС, Старостенко Д.А., 2003 год	}

   {  Имена полей БД  
	M1.OZU      - ОЗУ
	M1.PRBPOR	- преобладающая порода
	M1.GRPVOZ	- группа возраста         }

var
	ResultValue : string;

begin
  ResultValue := '';			
  if (@M1.OZU = 0)  and ( @M1.GRPVOZ >= 6)  and (@M1.HOZKAT >= 5) then ResultValue := 'VYB';
  if (@M1.OZU = 0)  and ( @M1.GRPVOZ >= 6)  and (@M1.HOZKAT = 0) and (@M1.KATZAS = 204100) then ResultValue := 'SPL';
  if (@M1.HOZMER1=1431) then ResultValue := 'PRZ';
  if (@M1.HOZMER1=1443) then ResultValue := 'PRH';
  if (@M1.HOZMER1=1441) then ResultValue := 'PRH'
end.


