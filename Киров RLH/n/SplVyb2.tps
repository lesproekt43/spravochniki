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
  if (@M1.HOZMER1=1221) or (@M1.HOZMER1=1222) then ResultValue := 'VYB';
  if (@M1.HOZMER1=1211) or (@M1.HOZMER1=1212) then ResultValue := 'SPL';
  if (@M1.HOZMER1=1431) then ResultValue := 'PRZ';
  if (@M1.HOZMER1=1441) then ResultValue := 'PRH'
end.


