Valuemacro  Sp;
{  ��������� ��� ������� '������ ����������, ��������� ��� ������������',
   
	���. 1.1   � �����, ����������� �.�., 2003 ���	}

   {  ����� ����� ��  
	M1.OZU      - ���
	M1.PRBPOR	- ������������� ������
	M1.GRPVOZ	- ������ ��������         }

var
	ResultValue : string;

begin
			{  ��� - ������  }
  if (@M1.OZU <= 0)  and ( @M1.GRPVOZ >= 6)  then
    begin			{ ����. ����� }
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
    else if Trunc(@M1.PRBPOR) = 304200 then
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
    
    ResultValue := ResultValue + '2'
    end
  else
      ResultValue := '';    { ������ ��������� ������ }
end.


