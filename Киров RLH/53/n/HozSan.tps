Valuemacro  HozSan;
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
    ResultValue := '6001'	{ ���������� ���. ����� }
  else if (@M1.HOZMER1 = 1601) then  
    ResultValue := '6002'	{ �������� ���. ����� }
  else if ((@M1.HOZMER1 = 1621) or (@M1.HOZMER1 = 1622))then  
    ResultValue := '6010'	{ �������� ���. ����� }
end.


