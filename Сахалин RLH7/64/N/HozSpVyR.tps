Valuemacro  Hoz;
{  ��������� ��� ������� '��������� �� ���������������.
                          �������� � ���������� ����� �������� �����������.'
   
	���. 2.0   � ����������� �.�., 2008 - 2010 ���	}

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
  Code := Trunc(@M1!PRBPOR/100);  {  ������������� ������  }
  if (Code = 3041) and (@M1!PRBPOR = 304110) then
    Code := 3091; {����� ������}  
  if (@M1.HOZMER1 >= 1222) and (@M1.HOZMER1 <= 1265) then  
    begin	{ ���������� ����� ������ }
    ResultValue := Code:C:4:0 + '6';
    end
  else if (@M1.HOZMER1 >= 1211) and (@M1.HOZMER1 <= 1219) then
    begin { �������� ����� }
      ResultValue := Code:C:4:0 + '4'  { ��������. ���������. }
    end 
end.


