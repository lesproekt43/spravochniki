Valuemacro  Hoz;
{  ��������� ��� ������� '��������� �� ���������������. 
                          ������������ � ��������� �����.'
   
	���. 2.1   � ����������� �.�., 2008 - 2010 ���	
		     ������� �.�., 2010 �.		}

   {  ����� ����� ��  
	M1.HOZMER1	- 1-� ��������������
	M1.HOZMER2      - 2-� ��������������
	M1.PRBPOR	- ������������� ������
	M1.CELPOR	- ������� ������        }

var
	ResultValue : string;
	Code : double;

begin
  ResultValue := '0';
  if (@M1.HOZMER1 >= 1431) and (@M1.HOZMER1 <= 1439) then 
    begin { ������������ }  
    ResultValue := '7';
    end
  else if (@M1.HOZMER1 >= 1441) and (@M1.HOZMER1 <= 1449) then 
    begin { ��������� ����� }  
    ResultValue := '5';
    end
end.


