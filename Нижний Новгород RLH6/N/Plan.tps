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
  			{  ������������� ������  }
  if Trunc(@M1.PRBPOR/100) = 1001 then
    ResultValue := '1010'	{ ����� }
  else if Trunc(@M1.PRBPOR/100) = 1002 then
    ResultValue := '1020'	{ ��� }
  else if Trunc(@M1.PRBPOR/100) = 1004 then
    ResultValue := '1040'	{ ����������� }
  else if Trunc(@M1.PRBPOR/100) = 3026 then
    ResultValue := '3020'	{ ������ }
  else if Trunc(@M1.PRBPOR/100) = 3040 then
    ResultValue := '3040'	{ ����� }
  else if Trunc(@M1.PRBPOR/100) = 3041 then
    ResultValue := '3140'	{ ����� }
  else if Trunc(@M1.PRBPOR/100) = 3042 then
    ResultValue := '3240'	{ ���� }
  else if Trunc(@M1.PRBPOR/100) = 3044 then
    ResultValue := '3044'	{ ��� }
  else if Trunc(@M1.PRBPOR/100) = 2020 then
    ResultValue := '2200'	{ ��� }
  else if Trunc(@M1.PRBPOR/100) = 2025 then
    ResultValue := '2250'	{ ��� }
  else
    ResultValue := '0';
    
			{  ��������� ������  }
  if (@M1.KATZEM >= 1100) and (@M1.KATZEM < 1108) then
    begin			{ ����. ����� }
      if (@M1.GRPVOZ = 1) or (@M1.GRPVOZ = 2) then
        ResultValue := ResultValue + '1'
      else if (@M1.GRPVOZ = 3) or (@M1.GRPVOZ = 4) then
        ResultValue := ResultValue + '2'
      else if @M1.GRPVOZ = 5 then
        ResultValue := ResultValue + '3'
      else if @M1.GRPVOZ >= 6 then
        ResultValue := ResultValue + '4'
    end
  else if ((@M1.KATZEM = 1200) or (@M1.KATZEM = 1201)) then
      ResultValue := ResultValue + '5'	{ �������� �������. }

  else if ((@M1.KATZEM = 1108) or (@M1.KATZEM = 1114)) then { �������� �����. }
    begin			{ �������� �� ������� �������� }
      if (@M1.GRPVOZ = 1) or (@M1.GRPVOZ = 2) then
        ResultValue := ResultValue + '6'
      else if (@M1.GRPVOZ = 3) or (@M1.GRPVOZ = 4) then
        ResultValue := ResultValue + '9'
      else if @M1.GRPVOZ = 5 then
        ResultValue := ResultValue + '10'
      else if @M1.GRPVOZ >= 6 then
        ResultValue := ResultValue + '11'
    end
  else if @M1.KATZEM = 1109 then
      ResultValue := ResultValue + '7'	{ �����. ��������. }
  else if @M1.KATZEM = 1509 then
      ResultValue := '1509'	{ ������� }
  else if @M1.KATZEM = 1503 then
      ResultValue := '1503'	{ ���� }
  else if ((@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112)) then
      ResultValue := '2108'	{ ���� }
  else if @M1.KATZEM = 2102 then
      ResultValue := '2102'	{ ������� }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ ������ }
  else if @M1.KATZEM = 2506 then
      ResultValue := '2506'	{ ����� }
  else
      ResultValue := '1000';    { ������ ��������� ������ }
end.


