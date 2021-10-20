Valuemacro  Pl_Znam;
{  �������� � ������� ��������� '���� - ����������� �������',
   ��������� ��������� ��������� � ����������� ������������
   ������� ��� ����� ��������������

    ������ 4.0, �  ����������� �.�., 1999-2009 ���  }


const
   {  ��� ������� < ������ ���������� ������ ������  }
    Porog1Pls = 0.10;
    Porog2Pls = 5.1;
    Porog3Pls = 8.1;

   {  ����� ����� �� 
    PLSVYD - ������� ������  
    M1.PLSVYD - ������� ������   
    M1.KATZEM - ��������� ������
    M1.BON    - ������� (�����)
    M1.KLSVOZ - ����� ��������
    M1.GRPVOZ - ������ ��������
      .GOD  - ��� �������� ������� ???
    M1.TIPVYR - ��� �������
    M1.GODVIR - ��� �������         }

var
    ResultValue : string;
    add_str : string;

begin
  ResultValue := ''; 
  if @PLSVYD >= Porog2Pls then
    begin
    ResultValue := @M1!PLSVYD:C:4:1;  
    if @PLSVYD >= Porog3Pls then
      begin
      if ((@M1!KATZEM >= 1100) and (@M1!KATZEM < 1200)) or
         ((@M1!KATZEM >= 1400) and (@M1!KATZEM < 1500))  then
        begin
            {  ��� �������� ����� ������ � �����:  
                ������� ������ - �������    }
        add_str := @M1!BON;
        ResultValue := ResultValue + '-' + StrTrim(add_str);
        end
      else if @M1!TIPVYR <> '' then
        begin
            {  ��� �������, ����� � ��������:
                ������� ������ - ��� �������/����   }
        add_str := @M1!TIPVYR:C:2;
        ResultValue := ResultValue + '-' + add_str;
        end
            {  ��� �������� � ��������:  
                ������� ������      }
      end
    end
end.

