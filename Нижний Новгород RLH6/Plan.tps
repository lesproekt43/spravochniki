Valuemacro  Plan;
{  ��������� ��� ������� '��������� ����� ��������������',
   ��� ��������� ������������ ��������� ��������� ��� �� �����
   
	���. 3.1   � ����������� �.�., 1999-2005 ���	}

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
  else if Trunc(@M1.PRBPOR/100) = 1003 then
    ResultValue := '1030'	{ ����� }
  else if Trunc(@M1.PRBPOR/100) = 1004 then
    ResultValue := '1040'	{ ����������� }
  else if Trunc(@M1.PRBPOR/100) = 1005 then
    ResultValue := '1050'	{ ���� }
    
  else if Trunc(@M1.PRBPOR/100) = 2020 then
    ResultValue := '2200'	{ ��� }
  else if Trunc(@M1.PRBPOR/100) = 2023 then
    ResultValue := '2230'	{ ����� }
  else if Trunc(@M1.PRBPOR/100) = 2024 then
    ResultValue := '2240'	{ ���� }
  else if Trunc(@M1.PRBPOR/100) = 2025 then
    ResultValue := '2250'	{ ��� }
    
  else if Trunc(@M1.PRBPOR/100) = 3026 then
    ResultValue := '3020'	{ ������ }
  else if Trunc(@M1.PRBPOR) = 304000 then
    ResultValue := '3040'	{ ����� }
  else if Trunc(@M1.PRBPOR) = 304105 then
    ResultValue := '3100'	{ ����� � }
  else if Trunc(@M1.PRBPOR) = 304110 then
    ResultValue := '3110'	{ ����� � }
  else if Trunc(@M1.PRBPOR/100) = 3042 then
    ResultValue := '3240'	{ ���� }
  else if Trunc(@M1.PRBPOR) = 304300 then
    ResultValue := '3040'	{ ������ }
  else if Trunc(@M1.PRBPOR/100) = 3044 then
    ResultValue := '3140'	{ ��� }
    
  else if Trunc(@M1.PRBPOR) = 511800 then
    ResultValue := '518'	{ ������ }
  else if Trunc(@M1.PRBPOR) = 512800 then
    ResultValue := '528'	{ �������� }
  else if Trunc(@M1.PRBPOR/100) = 5134 then
    ResultValue := '534'	{ ������ }
  else
    ResultValue := '';
    
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
  else if (@M1.KATZEM = 1200) or (@M1.KATZEM = 1201) then
      ResultValue := ResultValue + '5'	{ �������� �������. }
  else if (@M1.KATZEM = 1108) or (@M1.KATZEM = 1114) then
      ResultValue := ResultValue + '6'	{ �������� �����. }
  else if @M1.KATZEM = 1109 then
      ResultValue := ResultValue + '7'	{ �����. ��������. }
  else if @M1.KATZEM = 1509 then
      ResultValue := '1509'	{ ������� }
  else if (@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112) then
      ResultValue := '2108'	{ ���� }
  else if @M1.KATZEM = 2102 then
      ResultValue := '2102'	{ ������� }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ ������ }
  else
      ResultValue := '1000';    { ������ ��������� ������ }
end.


