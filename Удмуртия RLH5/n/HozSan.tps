Valuemacro  Hoz;
{  ��������� ��� ������� '��������� �� ���������������.
                          ���������� �����.'
   
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
  if (@M1.HOZMER1 = 1605) then  
    ResultValue := '3006'	{ ���������� ���. ����� }
  else if (@M1.HOZMER1 = 1601) then  
    ResultValue := '3007'	{ �������� ���. ����� }
end.


