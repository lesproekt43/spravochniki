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
  ResultValue := '';			
  if (@M1.OZU = 0)  and ( @M1.GRPVOZ >= 6)  and (@M1.HOZKAT >= 5) then ResultValue := 'VYB';
  if (@M1.OZU = 0)  and ( @M1.GRPVOZ >= 6)  and (@M1.HOZKAT = 0) and (@M1.KATZAS = 204100) then ResultValue := 'SPL';
  if (@M1.HOZMER1=1431) then ResultValue := 'PRZ';
  if (@M1.HOZMER1=1443) then ResultValue := 'PRH';
  if (@M1.HOZMER1=1441) then ResultValue := 'PRH'
end.


