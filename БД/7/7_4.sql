Select ��������������, �������������, (�������_����/���������_���� * 100) As ����������_�����������, 
(���������_����-�������_����) as �������_����, (Select AVG(���������_����-�������_����) From �����_����) as �������_������� 
From �����_���� Inner Join ����� On �����_����.���_������ = �����.���_������
Inner Join ����������_������� On �����.���_������ = ����������_�������.���_������
Group by �������_����, ���������_����, ��������������, �������������
Order by �������_���� ASC