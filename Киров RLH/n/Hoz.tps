Valuemacro  Hoz;
{  ��������� ��� ������� '��������� �� ���������������',
   
	���. 1.5   � ����������� �.�., 2008 - 2009 ���	}

   {  ����� ����� ��  
	M1.HOZMER1	- 1-� ��������������
	M1.HOZMER2  - 2-� ��������������
	M1.PRBPOR	- ������������� ������
	M1.CELPOR	- ������� ������        }

var
	ResultValue : string;
	Code : double;

begin
  ResultValue := ' ';
  Code := Trunc(@M1!PRBPOR/100);  {  ������������� ������  }
  if (Code = 3041) and (@M1!PRBPOR = 304110) then
    Code := 3091; {����� ������}  
  if (@M1.HOZMER1 >= 1411) and (@M1.HOZMER1 <= 1419) then  
    ResultValue := '3001'	{ ���������� }
  else if (@M1.HOZMER1 >= 1421) and (@M1.HOZMER1 <= 1429) then  
    ResultValue := '3002'	{ ��������� }
  else if (@M1.HOZMER1 >= 1431) and (@M1.HOZMER1 <= 1439) then 
    begin { ������������ }  
    ResultValue := Code:C:4:0 + '7';
    end
  else if (@M1.HOZMER1 >= 1441) and (@M1.HOZMER1 <= 1449) then 
    begin { ��������� ����� }  
    ResultValue := Code:C:4:0 + '5';
    end
  else if (@M1.HOZMER1 = 1605) then  
    ResultValue := '3006'	{ ���������� ���. ����� }
  else if (@M1.HOZMER1 = 1601) then  
    ResultValue := '3007'	{ �������� ���. ����� }
  else if (@M1.HOZMER1 >= 1222) and (@M1.HOZMER1 <= 1265) then  
    begin	{ ���������� ����� ������ }
    ResultValue := Code:C:4:0 + '6';
    end
  else if (@M1.HOZMER1 >= 1211) and (@M1.HOZMER1 <= 1219) then
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
    else if (@M1.HOZMER2 = 3266) then
      ResultValue := '3009'; { ���������� �������� }     
end.


