Valuemacro  Hoz;
{  ��������� ��� ������� '��������� �� ���������������.
                          ���������� � ���������.'
   
	���. 2.0   � ����������� �.�., 2008 - 2010 ���	}

   {  ����� ����� ��  
	M1.HOZMER1	- 1-� ��������������
	M1.HOZMER2  - 2-� ��������������
	M1.PRBPOR	- ������������� ������
	M1.CELPOR	- ������� ������        }

var
	ResultValue : string;
	Code : double;

begin
  ResultValue := '0';
  if (@M1.HOZMER1 >= 1411) and (@M1.HOZMER1 <= 1419) then ResultValue := '3001'	{ ���������� }
  else if (@M1.HOZMER1 >= 1421) and (@M1.HOZMER1 <= 1429) then ResultValue := '3002'	{ ��������� }
  else if (@M1.HOZMER2=3211) OR (@M1.HOZMER1=3211) then ResultValue := '3211'
  else if (@M1.HOZMER2=3271) OR (@M1.HOZMER1=3271) then ResultValue := '3271'
  else if (@M1.HOZMER2=3275) OR (@M1.HOZMER1=3275) then ResultValue := '3275'
  else if (@M1.HOZMER2=3285) OR (@M1.HOZMER1=3285) then ResultValue := '3285'
  else if (@M1.HOZMER1 >= 1431) and (@M1.HOZMER1 <= 1439) then ResultValue := '7'{ ������������ }
  else if (@M1.HOZMER1 >= 1441) and (@M1.HOZMER1 <= 1449) then ResultValue := '5'{ ��������� ����� }
end.


