Valuemacro  temat;
{  ��������� ��� ������� '������������',
   ��� ��������� ������������ ��������� ��������� ��� �� �����
   
	���. 3.3   � ����������� �.�., 1999-2011 ���	}

   { 	����� ����� ��  
	M1.OZU      	- ���
	M1.PRBPOR	- ������������� ������
	M1.GRPVOZ	- ������ ��������         }

var
	ResultValue : string;

begin			{ ����. ����� }
    			{  ������������� ������  }
    ResultValue := '0';

    if Trunc(@M1.PRBPOR/100) = 1001 then
      ResultValue := '1010'	{ ����� }
    else if Trunc(@M1.PRBPOR/100) = 1002 then
      ResultValue := '1020'	{ ��� }
    else if Trunc(@M1.PRBPOR) = 304110 then
      ResultValue := '3110'	{ ����� � }
    else if Trunc(@M1.PRBPOR/100) = 3042 then
      ResultValue := '3240'	{ ���� }
    else if Trunc(@M1.PRBPOR/100) = 3026 then
      ResultValue := '3020'	{ ������ }
    else if Trunc(@M1.PRBPOR) = 304000 then
      ResultValue := '3040';	{ ����� }


    if (@M1.HOZMER1 >= 1431) and (@M1.HOZMER1 <= 1439) then   
      ResultValue := ResultValue + '7'
    else if (@M1.HOZMER1 >= 1441) and (@M1.HOZMER1 <= 1449) then  
      ResultValue := ResultValue + '5'
    else if (@M1.HOZMER1 >= 1211) and (@M1.HOZMER1 <= 1212) then 
      ResultValue := ResultValue + '2'
    else if (@M1.HOZMER1 >= 1221) and (@M1.HOZMER1 <= 1261) then
      ResultValue := ResultValue + '8'  
    else
      ResultValue := '';    { ������ ��������� ������ }
end.


