Valuemacro  Plan;
{  ��������� ��� ������� '��������� ����� ��������������',
   ��� ��������� ������������ ��������� ��������� ��� �� �����
   
	���. 3.3   � ����������� �.�., 1999-2011 ���	}

   {  ����� ����� ��  
	M1.KATZEM	- ��������� ������
	M1.PRBPOR	- ������������� ������
	M1.GRPVOZ	- ������ ��������         }

var
	ResultValue : string;

begin 
			{  ��������� ������  }
  if @M1.KATZEM = 1503 then
      ResultValue := '1503'	{ ���� }
  else if (@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112) then
      ResultValue := '2108'	{ ���� }
  else if @M1.KATZEM = 2102 then
      ResultValue := '2102'	{ ������� }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ ������ }
  else if (@M1.KATZEM = 2506) then
      ResultValue := '2506'	{ ����� }
  else
      ResultValue := '1000';    { ������ ��������� ������ }
end.


