Valuemacro  Hoz;
{  ��������� ��� ������� '��������� �� ���������������.
                          ������������������.'
   
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
  if (@M1.HOZMER1 >= 1211) and (@M1.HOZMER1 <= 1219) then
    begin { �������� ����� }
	  { �������� ����� - ������������������ }
    if (@M1.HOZMER2 >= 3211) and (@M1.HOZMER2 <= 3261) then
      ResultValue := Code:C:4:0 + '3'  { �������� ������� }
    else if (@M1.HOZMER2 = 3266) then
      ResultValue := Code:C:4:0 + '1'  { ���������� �������� }
    else if (@M1.HOZMER2 = 3271) then
      ResultValue := Code:C:4:0 + '2'  { ������������� }
    else if (@M1.HOZMER2 = 3276) then
      ResultValue := Code:C:4:0 + '4'  { ��������. ���������. }
    end 
  else
    { ������������������ � ������ ����������� }
    if (@M1.HOZMER1 >= 3211) and (@M1.HOZMER1 <= 3261) then
      ResultValue := '3008'  { �������� ������� }
    else if  (@M1.HOZMER1 = 3266) then
      ResultValue := '3009' { ���������� �������� }     
    else if (@M1.HOZMER1 = 3271) then
      ResultValue :='3007'  { ������������� }
    else if (@M1.HOZMER1 = 3276) then
      ResultValue := '3006'  { ��������. ���������. }
    end.