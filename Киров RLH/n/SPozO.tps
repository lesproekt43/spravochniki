Valuemacro  StPozOp;
{  ��������� ��� ������� '������� �������� ���������',
   ��� ��������� ������������ ��������� ��������� ��� �� �����
   
	���. 1.0   � ������� �.�., ����������� �.�., 2005 ���	}

   {  ����� ����� ��  
	M1.KATZEM	- ��������� ������
	M1.PRBPOR	- ������������� ������
	M1.GRPVOZ	- ������ ��������
	M1.TLU      - ��� ���������������� ������� 
	M1.TIPLES   - ��� ����      }

var
	ResultValue : string;

begin
			{  ��������� ������  }
  if (@M1.KATZEM >= 1100) and (@M1.KATZEM < 1343) then
    begin			{ ����. ����� }
      if (Trunc(@M1.PRBPOR/100000) = 1) and (@M1.GRPVOZ < 3)  then
        ResultValue := '1'  { ������� ��������� }
      else if (@M1.TIPLES = '����') then
        ResultValue := '1'  { ������ ������������ }
      else if (@M1.TIPLES = '���') and (@KOLPOD > 0) then
        ResultValue := '2'  { ������ �������������� � ��������� }
      else if (@M1.TIPLES = '����') then
        ResultValue := '3'  { ������ ������������� }
      else if (@M1.TIPLES = '����') 
        ResultValue := '4'  { ������ ������������ }
      else if (@M1.TIPLES = '����') then
        ResultValue := '4'  { ������ ������� }
      else if (@M1.TIPLES = '���') then
        ResultValue := '4'  { ������ ��������� }
      else if (@M1.TIPLES = '���') then
        ResultValue := '4'  { ������ ��������������� }
      else if (@M1.TIPLES = '����') then
        ResultValue := '4'  { ������ ������� }
      else if (@M1.TIPLES = '����') then
        ResultValue := '4'  { ������ ��������� }
      else if (@M1.TIPLES = '����') then
        ResultValue := '4'  { ������ ������� }
      else if (@M1.TIPLES = '����') then
        ResultValue := '4'  { ������ ��������� }
      else
        ResultValue := '5'
    end
  else if (@M1.KATZEM = 1503) then
      	{ ���� }
    if (@M1.ZAPSUH > 20) or (@M1.ZAPZAH > 10) then
      ResultValue := '1'  { ������������ }  
  else if (@M1.KATZEM = 1504) then
        { ���������� �������� }
      ResultValue := '1'	
  else if (@M1.KATZEM = 1507) then
        { �������� }
    if (@M1.ZAPSUH > 20) or (@M1.ZAPZAH > 10) then
      ResultValue := '1'  { ������������ }  
  else if (@M1.KATZEM = 1509) then
        { ������� }
    begin
      if (CHAR(@TLU, 2):N <= 1) then
        ResultValue := '1'  { ������� �� ��������� }
      else if (@M1.ZAPSUH > 20) or (@M1.ZAPZAH > 10) then
        ResultValue := '1'  { ������� ������������ }
      else if (@M1.TIPVYR = '�') or (@M1.TIPVYR = '�') then   
        ResultValue := '4'	{ ����������, ����������� }
      else
        ResultValue := '5'
    end
  else
      ResultValue := '5';    { ������ }
end.


