--1
SELECT *
FROM �������
WHERE �������.�����_������� NOT IN(SELECT �����_������� FROM �������_������)

--2
SELECT sum(����������_����) as ���������_����������_����, �������.*
FROM ������� INNER JOIN �������_������ ON �������.�����_������� = �������_������.�����_�������
WHERE �������_������� = 1
GROUP BY �������.�����_�������, �����_����, ������, ���_���������, ����_������������_�������, ����������_����, ����������_�������_����, �����_�������, ����������_�������, ����������_������

--3
SELECT sum(����������_����) as ���������_����������_����, �������.*, �������_������.�����_������_�_������
INTO �������
FROM ������� INNER JOIN �������_������ ON �������.�����_������� = �������_������.�����_�������
WHERE �������_������� = 1
GROUP BY �������_������.�����_������_�_������, �������.�����_�������, �����_����, ������, ���_���������, ����_������������_�������, 
����������_����, ����������_�������_����, �����_�������, ����������_�������, ����������_������

--4
Insert into �������
SELECT sum(����������_����) as ���������_����������_����, �������.*, �������_������.�����_������_�_������
FROM ������� INNER JOIN �������_������ ON �������.�����_������� = �������_������.�����_�������
WHERE ������ LIKE '%[^�-�0-9]�[^�-�0-9]%' AND NOT EXISTS(SELECT * FROM ������� WHERE ������ LIKE '%[^�-�0-9]�[^�-�0-9]%' 
AND �������.�����_������� = �������.�����_������� AND �������_������.�����_������_�_������ = �������.�����_������_�_������)
GROUP BY �������_������.�����_������_�_������, �������.�����_�������, �����_����, ������, ���_���������, ����_������������_�������, 
����������_����, ����������_�������_����, �����_�������, ����������_�������, ����������_������

--5
UPDATE �������
SET ����������_���� = 1
WHERE �������.�����_������� IN(SELECT �����_������� FROM �������_������)

--6
DELETE
FROM �������
WHERE �������.�����_������� NOT IN(SELECT �����_������� FROM �������_������)

--7
SELECT �����_������, AVG(�����_�������/20/����������_������) as �������_�����_������
FROM ������� INNER JOIN �������_������ ON �������.�����_������� = �������_������.�����_�������
GROUP BY �����_������