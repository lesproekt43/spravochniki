Valuemacro  SplVyb2;
{  ��������� ��� ������� '������ ����������, ��������� ��� ������������',
   
	���. 1.1   � �����, ����������� �.�., 2003 ���	}

   {  ����� ����� ��  
	M1.OZU      - ���
	M1.PRBPOR	- ������������� ������
	M1.GRPVOZ	- ������ ��������         }

var
	ResultValue : string;

begin
			{  ��� - ������  }
  if (@M1.OZU = 0)  and ( @M1.GRPVOZ >= 6)  and ((@M1.HOZKAT=0) or (@M1.HOZKAT >= 5)) then
    begin			
	if (@M1.HOZKAT=0) then ResultValue := 'SPL'
	else ResultValue := 'VYB'
    end
  else
    begin
      if (@M1.HOZMER1=1431) then ResultValue := 'PRZ'
      else if (@M1.HOZMER1=1441) then ResultValue := 'PRH'
             else ResultValue := ''    { ������ ��������� ������ }
    end
end.


