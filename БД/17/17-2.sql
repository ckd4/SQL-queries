--1--
Select ���_����������, ��������, ���_��������_��������_���������
From ����������
Where year(getdate())-5 > ���_��������_��������_���������

--2--
Select ����������.���_����������, ��������, ��������.���������_������
From �������� Inner Join ���������� on ��������.���_���������� = ����������.���_����������
Where ���������_������ = 1

--3--
Select ����������.*, ��������.���������_������
Into ������_3
From �������� Inner Join ���������� on ��������.���_���������� = ����������.���_����������
Where ���������_������ = 1

--4--
Insert into ������_3(����������.���_����������, ��������, ��������, ���_��������_��������_���������, ��������.���������_������)
Select ����������.���_����������, ��������, ��������, ���_��������_��������_���������, ��������.���������_������
From �������� Inner Join ���������� on ��������.���_���������� = ����������.���_����������
Where �������� Like '������_%' and not exists
(Select ����������.���_����������
From ������_3 Where �������� Like '������_%' and ����������.���_���������� = ������_3.���_����������)

--5--
Update ������_3
Set ���_��������_��������_��������� = 2009
Where ���_���������� %2 = 0

--6--
Delete 
From ������_3
Where �������� like '%����������%'

--7--
Select ���_��������_��������_���������,
Count(���_����������) as ����������_��������_��������� 
From ����������
where ���_��������_��������_��������� between 1990 and 2021
group by ���_��������_��������_��������� 

--7
--7--
Select distinct
(select Count(���_����������) from ���������� where ���_��������_��������_��������� between 1990 and 1994) as '1990-1994',
(select Count(���_����������) from ���������� where ���_��������_��������_��������� between 1995 and 1999) as '1995-1999',
(select Count(���_����������) from ���������� where ���_��������_��������_��������� between 2000 and 2004) as '2000-2004',
(select Count(���_����������) from ���������� where ���_��������_��������_��������� between 2005 and 2009) as '2005-2009',
(select Count(���_����������) from ���������� where ���_��������_��������_��������� between 2010 and 2014) as '2010-2014',
(select Count(���_����������) from ���������� where ���_��������_��������_��������� between 2015 and 2019) as '2015-2019',
(select Count(���_����������) from ���������� where ���_��������_��������_��������� between 2020 and 2025) as '2020-2025'
From ����������