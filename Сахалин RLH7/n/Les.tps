Valuemacro  Les;
{  ��������� ��� ������� ��� ������� ���� � ����� ���������,
   
	���. 1.0   � �����, ����������� �.�., 2003 ���	}

   {  ����� ����� ��  
	 M1.KATZEM	- ��������� ������    }

var
	ResultValue : string;

begin
			{  ��������� ������  }
  if (@M1.KATZEM >= 1100) and (@M1.KATZEM < 1108) then   { ����. ����� }
      ResultValue := '1100'
  else if (@M1.KATZEM = 1200) or (@M1.KATZEM = 1201) then
      ResultValue := '1100'	{ �������� �������. }
  else if (@M1.KATZEM = 1108) or (@M1.KATZEM = 1114) then
      ResultValue := '1100'	{ �������� �����. }
  else if @M1.KATZEM = 1109 then
      ResultValue := '1100'	{ �����. ��������. }
  else if (@M1.KATZEM >= 2108) and (@M1.KATZEM <= 2112) then
      ResultValue := '2108'	{ ���� }
  else if @M1.KATZEM = 2507 then
      ResultValue := '2507'	{ ������ }
  else
      ResultValue := '1000';    { ������ ��������� ������ }
end.


