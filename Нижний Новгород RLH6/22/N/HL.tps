Valuemacro  HvoLi;
{  ��������� ��� ������� '������� - ����������',
   
	���. 1.0   � �����, ����������� �.�., 2003 ���	}

   {  ����� ����� ��  
	 M1.KATZEM	- ��������� ������
	 M1.PRBPOR	- ������������� ������    }

var
	ResultValue : string;

begin
  			{  ������������� ������  }
  if Trunc(@M1.PRBPOR/100000) = 1 then
    ResultValue := '1010'	{ ������� }
  else if Trunc(@M1.PRBPOR/100000) = 2 then
    ResultValue := '2200'	{ ���������������� }
  else if Trunc(@M1.PRBPOR/100000) >= 3 then
    ResultValue := '3020'	{ ��������������� }
  else  
    ResultValue := '';
    
			{  ��������� ������  }
  if (@M1.KATZEM >= 1100) and (@M1.KATZEM < 1108) then 
      ResultValue := ResultValue + '3'
  else if (@M1.KATZEM = 1200) or (@M1.KATZEM = 1201) then
      ResultValue := ResultValue + '5'	{ �������� �������. }
  else if (@M1.KATZEM = 1108) or (@M1.KATZEM = 1114) then
      ResultValue := ResultValue + '5'	{ �������� �����. }
  else if @M1.KATZEM = 1109 then
      ResultValue := ResultValue + '5'	{ �����. ��������. }
  else if (@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112) then
      ResultValue := '2108'	{ ���� }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ ������ }
  else
      ResultValue := '1000';    { ������ ��������� ������ }
end.
