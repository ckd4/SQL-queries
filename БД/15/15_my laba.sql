select ����������.�����_������, ����_������,  avg(�����������������/60) as ��������_����������_�����_����, sum(�����������������/60) as �����_����������_�����_��_������
from ������_����������_������� inner join ���������� on ������_����������_�������.�����_���� = ����������.�����_����
inner join ������ on ����������.�����_������ = ������.�����_������
Group by ����_������, ����������.�����_������
Order by ����_������