Valuemacro  Pl_Chisl;
{  �������� � ������� ��������� '���� - ��������� �������',
   ��������� ��������� N ������ � ��������� ������������
   ������� ��� ����� �������������� ������� �����������   

	������ 4.0, �  ����������� �.�., 1999-2009 ���	}


const
   {  ��� ������� < ������ ���������� ������ ������  }
    Porog1Pls = 0.10;
	Porog2Pls = 5.1;
    Porog3Pls = 8.1;

   {  ����� ����� ��
    PLSVYD - ������� ������ 
	M1.KATZEM - ��������� ������
	M1.BON	  - ������� (�����)
	M1.KLSVOZ - ����� ��������
	M1.GRPVOZ - ������ ��������
	  .GOD	- ��� �������� ������� ???
	M1.TIPVYR - ��� �������
	M1.GODVIR - ��� �������         }

var
	ResultValue : string;
    add_str : string;

begin
  ResultValue := ''; 
  if (@PLSVYD > 0) or (@PLSPOL >= Porog1Pls) then
    ResultValue := @NOMVYD:C:3;
  if @PLSVYD >= Porog3Pls then
    begin
      if ((@M1!KATZEM >= 1100) and (@M1!KATZEM < 1200)) or
	     ((@M1!KATZEM >= 1400) and (@M1!KATZEM < 1500))  then
	    begin 
		    {  ��� �������� ����� ������ � �����:  
   			   � ������ - ����� ��������		}
        add_str := @M1!KLSVOZ:C:2;
        ResultValue := ResultValue + '-' + add_str;
	    end
      else if @M1!TIPVYR <> '' then
	    begin
			{  ��� �������, ����� � ��������:
				NV - ��� �������/����	}
        add_str := @M1!GODVIR:C:2;
        ResultValue := ResultValue + '-' + add_str; 
	    end; 
    end;
end.

