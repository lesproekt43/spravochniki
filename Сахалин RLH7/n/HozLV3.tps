Valuemacro  HozLV3;
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
 
     if (@M1.HOZMER2=3211) OR (@M1.HOZMER1=3211) then ResultValue := '3211'
else if (@M1.HOZMER2=3271) OR (@M1.HOZMER1=3271) then ResultValue := '3271'
else if (@M1.HOZMER2=3275) OR (@M1.HOZMER1=3275) then ResultValue := '3275'
else if (@M1.HOZMER2=3285) OR (@M1.HOZMER1=3285) then ResultValue := '3285'

    
end.